import { module, test } from 'qunit';
import { setupTest } from 'freedrull-new-blog/tests/helpers';

module('Unit | Route | blog/show', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:blog/show');
    assert.ok(route);
  });
});
