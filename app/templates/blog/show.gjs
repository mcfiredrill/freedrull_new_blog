import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle @model.title}}
  {{outlet}}
  <article class="prose lg:prose-xl mx-auto">
    <h1>{{@model.title}}</h1>
    <p class="text-gray-500">{{@model.date}}</p>
    <div class="my-6" {{@model.body}}></div>
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
