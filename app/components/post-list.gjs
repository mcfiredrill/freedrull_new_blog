import Component from '@glimmer/component';
import { inject as service } from '@ember/service';

export default class PostListComponent extends Component {
  @service posts;

  get postsList() {
    return this.posts.getAll();
  }

  <template>
    <ul>
      {{#each this.postsList as |post|}}
        <li class="mb-8">
          {{log post}}
          <h2 class="text-2xl font-bold">{{post.title}}</h2>
          <p class="text-gray-500">{{post.date}}</p>
          <div class="mt-2">{{{post.body}}}</div>
        </li>
      {{/each}}
    </ul>
  </template>
}
