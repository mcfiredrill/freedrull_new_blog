import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "Freedrull Hamburger Salaryman"}}

  <h1 class="font-debussy text-3xl text-yellow">
    <a href="/">firedrill/freedrull</a>
  </h1>

  <div class="inline">
    <img class="inline" style="height: 2rem;" src="/assets/images/me_scary.jpg" />
    <img class="inline" style="height: 2rem;" src="/assets/images/freaky_green_spin.gif" />
  </div>

  <nav class="m-2 bg-pink-300 text-white">
    <ul class="inline">
      <li class="inline"><LinkTo @route="projects">works</LinkTo></li>
      <li class="inline"><LinkTo @route="music">music</LinkTo></li>
      <li class="inline"><LinkTo @route="blog">blag</LinkTo></li>
      <li class="inline"><LinkTo @route="contact">contact</LinkTo></li>
    </ul>
  </nav>

  <section class="m-2 bg-white">
    {{outlet}}
  </section>

</template>
