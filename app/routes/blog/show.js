import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

export default class BlogShowRoute extends Route {
  @service posts;

  async model(params) {
    return this.posts.getBySlug(params.slug);
  }

}
