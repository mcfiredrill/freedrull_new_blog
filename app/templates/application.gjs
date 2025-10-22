import { pageTitle } from 'ember-page-title';
import PostList from 'freedrull-new-blog/components/post-list';

<template>
  {{pageTitle "Freedrull Hamburger Salaryman"}}

  <h1 class="font-debussy text-3xl">
    firedrill/freedrull
  </h1>

  <img src="/assets/images/me_scary.jpg" />

  <nav class="m-2">
    <ul>
      <li>works</li>
      <li>music</li>
      <li>blag</li>
      <li>contact</li>
    </ul>
  </nav>

  check out this cool 3d animation in the background
  <p>
    hi i'm firedrill or freedrull. i work on datafruits.fm, an internet radio
    station. cyber tomato soft, a video games company. also I stream as a vtuber
    named Hamburger Salaryman. There's lots of other music and art and stuff in
    the blag.
  </p>

  latest blag:

  <PostList />

</template>
