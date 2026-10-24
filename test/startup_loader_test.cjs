const fs = require('node:fs');
const vm = require('node:vm');
const assert = require('node:assert/strict');
const html = fs.readFileSync('web/index.html', 'utf8');
const script = html.match(/<script>\s*([\s\S]*?)<\/script>/)[1];
for (const hour of [0, 5, 6, 12, 17, 18, 23]) {
  const nodes = Object.fromEntries(['loader-sun', 'loader-moon', 'lysting-loader'].map(id => [id, {
    toggleAttribute(name, value) { assert.equal(name, 'hidden'); this.hidden = value; },
    remove() { this.removed = true; },
  }]));
  let firstFrame, cleared = false;
  vm.runInNewContext(script, {
    Date: class { getHours() { return hour; } },
    document: { getElementById: id => nodes[id] },
    window: { addEventListener(event, callback) { assert.equal(event, 'flutter-first-frame'); firstFrame = callback; } },
    setInterval: () => 1,
    clearInterval: () => { cleared = true; },
  });
  assert.equal(nodes['loader-sun'].hidden, !(hour >= 6 && hour < 18));
  assert.equal(nodes['loader-moon'].hidden, hour >= 6 && hour < 18);
  firstFrame();
  assert(nodes['lysting-loader'].removed);
  assert(cleared);
}
console.log('Startup loader: day/night selection and first-frame cleanup passed.');
