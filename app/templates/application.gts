import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "Freedrull Hamburger Salaryman"}}

  <h1 class="font-debussy text-3xl">
    <a href="/">firedrill/freedrull</a>
  </h1>

  <img style="height: 2rem;" src="/assets/images/me_scary.jpg" />

  <nav class="m-2 bg-pink-300 text-white">
    <ul class="inline">
      <li><LinkTo @route="projects">works</LinkTo></li>
      <li>music</li>
      <li>blag</li>
      <li>contact</li>
    </ul>
  </nav>

  {{outlet}}

</template>
