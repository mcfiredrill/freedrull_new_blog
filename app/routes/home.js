import Route from '@ember/routing/route';
import { service } from '@ember/service';

export default class HomeRoute extends Route {
  @service posts;

  async model() {
    return this.posts.getAll();
  }

}
