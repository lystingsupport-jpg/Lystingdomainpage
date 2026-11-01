const fs = require('node:fs');
const vm = require('node:vm');
const assert = require('node:assert/strict');
(async () => {
  const events = {}, deleted = [], navigated = [];
  let skipped = false, claimed = false, unregistered = false;
  const worker = {
    addEventListener: (type, handler) => events[type] = handler,
    skipWaiting: async () => { skipped = true; },
    location: { origin: 'https://www.lysting.in' },
    clients: {
      claim: async () => { claimed = true; },
      matchAll: async () => [
        { url: 'https://www.lysting.in/?view=cards', navigate: async url => navigated.push(url) },
      ],
    },
    registration: { unregister: async () => { unregistered = true; } },
  };
  vm.runInNewContext(fs.readFileSync('web/retire_flutter_service_worker.js', 'utf8'), {
    self: worker, URL,
    caches: {
      keys: async () => ['flutter-app-cache', 'flutter-temp-cache', 'flutter-app-manifest', 'unrelated-cache'],
      delete: async key => deleted.push(key),
    },
  });
  let work;
  events.install({ waitUntil: promise => work = promise }); await work;
  events.activate({ waitUntil: promise => work = promise }); await work;
  assert(skipped && claimed && unregistered);
  assert.deepEqual(deleted.sort(), ['flutter-app-cache', 'flutter-app-manifest', 'flutter-temp-cache']);
  assert.deepEqual(navigated, ['https://www.lysting.in/?view=cards']);
  assert.equal(events.fetch, undefined);
  console.log('Old Flutter cache retirement and one-time refresh passed.');
})().catch(error => { console.error(error); process.exitCode = 1; });
