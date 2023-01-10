<script setup lang="ts">
import NavbarIcon from './NavbarIcon.vue'

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { faHouse, faCode, faFileInvoice, faPhone } from '@fortawesome/free-solid-svg-icons'

library.add(faHouse);
library.add(faCode);
library.add(faFileInvoice);
library.add(faPhone);
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
        <font-awesome-icon icon="fa-solid fa-phone" size="lg"/>
      </template>
    </NavbarIcon>
  </div>
</template>

<style scoped lang="scss">
  .bar {
    display: flex;
    flex-direction: column;
    justify-content: center;
    margin: 100px;
  }

  font-awesome-icon {
    color: var(--color-text);
  }
</style>