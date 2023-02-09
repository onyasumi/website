<script setup lang="ts">
import NavbarIcon from './NavbarIcon.vue'

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { faHouse, faCode, faFileInvoice, faLink } from '@fortawesome/free-solid-svg-icons'

library.add(faHouse);
library.add(faCode);
library.add(faFileInvoice);
library.add(faLink);
</script>

<template>
  <div class="bar">
    <NavbarIcon>
      <template #icon>
        <font-awesome-icon icon="fa-solid fa-house" size="lg"/>
      </template>
    </NavbarIcon>

    <NavbarIcon>
      <template #icon>
        <font-awesome-icon icon="fa-solid fa-code" size="lg"/>
      </template>
    </NavbarIcon>

    <NavbarIcon>
      <template #icon>
        <font-awesome-icon icon="fa-solid fa-file-invoice" size="lg"/>
      </template>
    </NavbarIcon>

    <NavbarIcon>
      <template #icon>
        <font-awesome-icon icon="fa-solid fa-link" size="lg"/>
      </template>
    </NavbarIcon>
  </div>
</template>

<style scoped lang="scss">
  .bar {
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin: 80px;
  }

  font-awesome-icon {
    color: var(--color-text);
  }
</style>