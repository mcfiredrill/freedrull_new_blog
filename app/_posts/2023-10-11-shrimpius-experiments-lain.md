---
layout: post
title: "shrimpius vtuber - shrimptuber"
date: 2023-10-11
categories: [vtuber, programming]
image: "/assets/images/shrimpius.png"
---

I started experimenting with creating a 2d vtuber using renders I created in blender.
I wrote a program in rust despite having no experience in the language, to try to create a simple window that drew a sprite.

Eventually I got something working.

https://www.youtube.com/shorts/F3Ye4maZTZ0

Next I got an animation working using the frames I rendered from blender.

https://www.youtube.com/shorts/CjPVnNmoJ08

This was pretty similar to the process I use to create sprites for burgerzone so aside from trying to learn Rust it wasn't too bad.

Next I got microphone input to work so the sprite could shrink in size in response to the audio levels.
https://www.youtube.com/watch?v=aDyPwFkJ5-c

I wanted the app to run ideally in a transparent screen, so it could simply float over my desktop and be part of an inclusive live streamed desktop experience (taking inspiration from LCOLONQ's streams where he simply shows his EXWM emacs environment, with his ascii-vtuber running inside an emacs window!)

I was sort of able to get this to work but it was a bit of a pain to actually use, the vtuber window would recieve clicks and input when I meant to use another window.

This was a fun experiment but eventually I transitioned to using vpupper with my hamburger salaryman 3D model.
