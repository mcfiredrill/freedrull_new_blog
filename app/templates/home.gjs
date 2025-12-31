import PostList from 'freedrull_blog/components/post-list';
import Pagination from 'freedrull_blog/components/pagination';

<template>
  check out this cool 3d animation in the background
  <p>
    hi i'm firedrill or freedrull. i work on <a href="https://datafruits.fm/" target="_blank">datafruits.fm</a>, an internet radio
    station. <a href="https://cybertomato.xyz/">cyber tomato soft</a>, a video games company. also I stream as a vtuber
    named <a href="https://twitch.tv/freedrull_">Hamburger Salaryman</a>. There's lots of other music and art and stuff in
    the blag.
  </p>

  latest blag:
  {{log @model}}
  <PostList @posts={{@model.posts}} />

  <Pagination
      @totalPages={{@model.totalPages}}
      @page={{@model.page}}
      @route="home" />

</template>
