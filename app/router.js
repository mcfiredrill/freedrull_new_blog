import EmberRouter from '@embroider/router';
import config from 'freedrull-new-blog/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function () {
  this.route('home', {path: '/'});
  this.route('projects');
});
