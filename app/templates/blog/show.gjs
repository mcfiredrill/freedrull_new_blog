import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle @model.title}}
  <article class="prose lg:prose-xl mx-auto">
    <h1 class="text-2xl font-bold">
      <LinkTo @model={{@model.slug}} @route="blog.show" class="text-pink-600 hover:underline">
        {{@model.title}}
      </LinkTo>
    </h1>
    <p class="text-gray-500">{{@model.date}}</p>
    <div class="mt-2">{{{@model.body}}}</div>
    <div>
      Categories:
      {{#each @model.categories as |cat|}}
        <LinkTo @route="blog.category" @model={{cat}} class="text-pink-600 hover:underline">
          #{{cat}}
        </LinkTo>
      {{/each}}
    </div>
  </article>
</template>
