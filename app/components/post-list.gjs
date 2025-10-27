import { LinkTo } from '@ember/routing';

<template>
  <ul>
    {{#each @posts as |post|}}
      <li class="mb-8">
        <h2 class="text-2xl font-bold">
          <LinkTo @model={{post.slug}} @route="blog.show" class="text-pink-600 hover:underline">{{post.title}}</LinkTo>
        </h2>
        <p class="text-gray-500">{{post.date}}</p>
        <div class="mt-2">{{{post.body}}}</div>
      </li>
    {{/each}}
  </ul>
</template>
