import Service from '@ember/service';
import matter from 'front-matter';
import { marked } from 'marked';
import { tracked } from '@glimmer/tracking';

export default class PostsService extends Service {
  @tracked allPosts = [];

  async getAll() {
    if(this.allPosts.length) return this.allPosts;

    // Import all markdown files from _posts folder
    const postFiles = import.meta.glob('../_posts/*.md', { as: 'raw' });
    let posts = []

    // let posts = Object.entries(postFiles).map(([path, rawContent]) => {
    for (let [path, loader] of Object.entries(postFiles)) {
      let content = await loader();
      const { attributes, body } = matter(content);
      let slug = path.split('/').pop().replace('.md', '');
      posts.push({
        ...attributes,
        body: marked(body),
        slug,
      });
    }

    // Sort by date descending
    this.allPosts = posts.sort((a, b) => new Date(b.date) - new Date(a.date));

    return this.allPosts;
  }

  async getBySlug(slug) {
    let all = await this.getAll();
    return all.find(p => p.slug === slug);
  }
}
