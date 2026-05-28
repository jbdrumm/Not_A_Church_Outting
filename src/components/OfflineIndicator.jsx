import { useState, useEffect } from 'react'
import { flushOfflineQueue, hasQueuedScores } from '../lib/offlineQueue'

/**
 * Sits silently when online with no queued scores.
 * Shows amber pill when offline or scores are queued.
 * Shows green briefly when queue flushes successfully.
 * Mounts in ScorecardPage only.
 */
export default function OfflineIndicator() {
  const [status, setStatus] = useState('hidden') // 'hidden' | 'offline' | 'queued' | 'synced'

  const evaluate = () => {
    if (!navigator.onLine) {
      setStatus('offline')
    } else if (hasQueuedScores()) {
      setStatus('queued')
      // Try to flush now that we're back online
      flushOfflineQueue().then(count => {
        if (count > 0 && !hasQueuedScores()) {
          setStatus('synced')
          setTimeout(() => setStatus('hidden'), 3000)
        }
      })
    } else {
      setStatus('hidden')
    }
  }

  useEffect(() => {
    evaluate()

    const handleOnline = () => evaluate()
    const handleOffline = () => setStatus('offline')

    window.addEventListener('online', handleOnline)
    window.addEventListener('offline', handleOffline)

    // Also poll every 30s in case online event doesn't fire (common in PWAs)
    const poll = setInterval(evaluate, 30000)

    return () => {
      window.removeEventListener('online', handleOnline)
      window.removeEventListener('offline', handleOffline)
      clearInterval(poll)
    }
  }, [])

  if (status === 'hidden') return null

  const configs = {
    offline: { bg: '#92400e', border: '#b45309', text: '#fde68a', msg: '⚡ Offline — scores saved locally' },
    queued:  { bg: '#92400e', border: '#b45309', text: '#fde68a', msg: '⏳ Syncing scores...' },
    synced:  { bg: '#14532d', border: '#16a34a', text: '#bbf7d0', msg: '✓ Scores synced' },
  }

  const { bg, border, text, msg } = configs[status]

  return (
    <div style={{
      position: 'fixed',
      top: 'calc(10px + env(safe-area-inset-top))',
      left: '50%',
      transform: 'translateX(-50%)',
      zIndex: 300,
      backgroundColor: bg,
      border: `1px solid ${border}`,
      borderRadius: 20,
      padding: '6px 14px',
      fontSize: '0.78rem',
      fontWeight: 600,
      color: text,
      whiteSpace: 'nowrap',
      boxShadow: '0 2px 8px rgba(0,0,0,0.4)',
      fontFamily: 'var(--font-body)',
      transition: 'opacity 0.3s ease',
    }}>
      {msg}
    </div>
  )
}
