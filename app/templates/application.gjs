import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "Freedrull Hamburger Salaryman"}}

  <h1 class="font-debussy text-3xl">
    firedrill/freedrull
  </h1>

  <img src="/assets/images/me_scary.jpg" />

  <nav class="m-2">
    <ul>
      <li><LinkTo @route="projects">works</LinkTo></li>
      <li>music</li>
      <li>blag</li>
      <li>contact</li>
    </ul>
  </nav>

  {{outlet}}

</template>
