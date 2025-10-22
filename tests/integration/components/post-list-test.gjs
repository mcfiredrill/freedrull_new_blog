import { module, test } from 'qunit';
import { setupRenderingTest } from 'freedrull-new-blog/tests/helpers';
import { render } from '@ember/test-helpers';
import PostList from 'freedrull-new-blog/components/post-list';

module('Integration | Component | post-list', function (hooks) {
  setupRenderingTest(hooks);

  test('it renders', async function (assert) {
    // Updating values is achieved using autotracking, just like in app code. For example:
    // class State { @tracked myProperty = 0; }; const state = new State();
    // and update using state.myProperty = 1; await rerender();
    // Handle any actions with function myAction(val) { ... };

    await render(<template><PostList /></template>);

    assert.dom().hasText('');

    // Template block usage:
    await render(<template>
      <PostList>
        template block text
      </PostList>
    </template>);

    assert.dom().hasText('template block text');
  });
});
