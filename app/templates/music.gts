import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface MusicSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Music"}}
  {{outlet}}
</template> satisfies TOC<MusicSignature>;
