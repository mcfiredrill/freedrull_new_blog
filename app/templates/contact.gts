import type { TOC } from '@ember/component/template-only';
import { pageTitle } from 'ember-page-title';

interface ContactSignature {
  Args: {
    model: unknown;
    controller: unknown;
  };
}

<template>
  {{pageTitle "Contact"}}
  {{outlet}}
</template> satisfies TOC<ContactSignature>;
