import { module, test } from 'qunit';
import { setupTest } from 'freedrull-new-blog/tests/helpers';

module('Unit | Route | blog/category', function (hooks) {
  setupTest(hooks);

  test('it exists', function (assert) {
    let route = this.owner.lookup('route:blog/category');
    assert.ok(route);
  });
});
