// LysTing offline-cache retirement v1. Keep this at the old worker URL so
// browsers with an existing Flutter worker receive and activate the migration.
self.addEventListener('install', event => {
  event.waitUntil(self.skipWaiting());
});

self.addEventListener('activate', event => {
  event.waitUntil((async () => {
    await self.clients.claim();
    const flutterCaches = new Set(['flutter-app-cache', 'flutter-temp-cache', 'flutter-app-manifest']);
    const keys = await caches.keys();
    await Promise.all(keys.filter(key => flutterCaches.has(key)).map(key => caches.delete(key)));
    const windows = await self.clients.matchAll({ type: 'window', includeUncontrolled: true });
    await self.registration.unregister();
    // One refresh replaces the cached page and its JavaScript together.
    await Promise.all(windows.filter(client => new URL(client.url).origin === self.location.origin)
      .map(client => client.navigate(client.url)));
  })());
});
// No fetch listener: requests go directly to the network.
