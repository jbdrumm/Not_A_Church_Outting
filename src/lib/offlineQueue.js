/**
 * TournyFlex Offline Score Queue
 *
 * Wraps the existing db() save calls. If a save fails due to no connection,
 * the payload is stored in localStorage. When connectivity returns, the queue
 * flushes automatically. The existing save logic is never modified.
 */

import { db } from './db'

const QUEUE_KEY = 'tf_offline_queue'

// ── Queue helpers ────────────────────────────────────────────────────────────

export function getQueue() {
  try {
    return JSON.parse(localStorage.getItem(QUEUE_KEY) || '[]')
  } catch { return [] }
}

function setQueue(q) {
  try { localStorage.setItem(QUEUE_KEY, JSON.stringify(q)) } catch {}
}

function enqueue(payload) {
  const q = getQueue()
  // Deduplicate: replace any existing entry for same event+player+day+round_time+hole set
  const key = `${payload.event_id}-${payload.player_id}-${payload.day}-${payload.round_time}`
  const filtered = q.filter(item => {
    const k = `${item.event_id}-${item.player_id}-${item.day}-${item.round_time}`
    return k !== key
  })
  filtered.push({ ...payload, _queued_at: Date.now() })
  setQueue(filtered)
}

function removeFromQueue(payload) {
  const key = `${payload.event_id}-${payload.player_id}-${payload.day}-${payload.round_time}`
  const q = getQueue().filter(item => {
    const k = `${item.event_id}-${item.player_id}-${item.day}-${item.round_time}`
    return k !== key
  })
  setQueue(q)
}

// ── Connection detection ─────────────────────────────────────────────────────

function isOffline() {
  return typeof navigator !== 'undefined' && !navigator.onLine
}

// ── Main save wrapper ────────────────────────────────────────────────────────

/**
 * Drop-in replacement for the upsert_round_score db call.
 * Tries the live save first. On network failure, queues locally.
 * Returns { ok: true, offline: false } on success
 * Returns { ok: true, offline: true }  on offline queue
 * Returns { ok: false }                on other error
 */
export async function saveScoreWithFallback(payload) {
  // Fast-path: already offline, skip the failed request
  if (isOffline()) {
    enqueue(payload)
    return { ok: true, offline: true }
  }

  try {
    await db('upsert_round_score', payload)
    // On success, remove any stale queued entry for this slot
    removeFromQueue(payload)
    return { ok: true, offline: false }
  } catch (err) {
    // Only queue on network errors, not on 4xx/5xx app errors
    const isNetworkError = !err?.status || err?.status === 0 || err?.message?.includes('fetch')
    if (isNetworkError) {
      enqueue(payload)
      return { ok: true, offline: true }
    }
    return { ok: false }
  }
}

// ── Flush queue ──────────────────────────────────────────────────────────────

/**
 * Attempt to flush all queued saves to the DB.
 * Call this when navigator.onLine fires or app comes to foreground.
 * Returns count of successfully synced items.
 */
export async function flushOfflineQueue() {
  const q = getQueue()
  if (q.length === 0) return 0

  let synced = 0
  for (const payload of q) {
    try {
      const { _queued_at, ...data } = payload
      await db('upsert_round_score', data)
      removeFromQueue(payload)
      synced++
    } catch {
      // Leave in queue for next flush attempt
      break
    }
  }
  return synced
}

export function hasQueuedScores() {
  return getQueue().length > 0
}
