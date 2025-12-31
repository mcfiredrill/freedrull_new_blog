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
  <ul>
    <li><a href="mailto:mcfiredrill@gmail.com">E-mails</a></li>
  </ul>
</template> satisfies TOC<ContactSignature>;
