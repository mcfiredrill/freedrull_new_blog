import EmberRouter from '@embroider/router';
import config from 'tailwind/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('home', {path: '/'});
  this.route('projects');

  this.route('blog', function() {
    this.route('show', { path: '/:slug' });
    this.route('category', { path: '/category/:category' });
  });
});
