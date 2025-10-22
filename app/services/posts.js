import Service from '@ember/service';
import matter from 'front-matter';
import { marked } from 'marked';

// Import all markdown files from _posts folder
const postFiles = import.meta.glob('../_posts/*.md', { eager: true, as: 'raw' });

export default class PostsService extends Service {
  getAll() {
    let posts = Object.entries(postFiles).map(([path, rawContent]) => {
      const { attributes, body } = matter(rawContent);
      return {
        ...attributes,
        body: marked(body),
        path,
      };
    });

    // Sort by date descending
    posts.sort((a, b) => new Date(b.date) - new Date(a.date));

    return posts;
  }
}
