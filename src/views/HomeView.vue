<script setup lang="ts">
import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'
import { faGithub, faLinkedin } from '@fortawesome/free-brands-svg-icons'
import { faEnvelope } from '@fortawesome/free-solid-svg-icons';

library.add(faGithub);
library.add(faLinkedin);
library.add(faEnvelope)
</script>

<template>
  <h2>I'm a 3rd year <a class="color">computer science</a> student at the <a class="color">University of Waterloo</a>. I'm always trying to expand my scope of expertise and learn new things.</h2>
  <br/>

  <div class="contacts">
    <a class="contact" href="https://github.com/bloodandcoffee" target="_blank" rel="noopener noreferrer">
      <font-awesome-icon icon="fa-brands fa-github" size="lg" />
      <h3>bloodandcoffee</h3>
    </a>
    <a class="contact" href="https://linkedin.com/in/kugelblitz" target="_blank" rel="noopener noreferrer">
      <font-awesome-icon icon="fa-brands fa-linkedin" size="lg" />
      <h3>kugelblitz</h3>
    </a>
    <a class="contact" href="mailto:me@franktao.com" target="_blank">
      <font-awesome-icon icon="fa-solid fa-envelope" size="lg"/>
      <h3>me@franktao.com</h3>
    </a>
  </div>
</template>

<style scoped lang="scss">
.color {
  color: var(--color-text-accent-1);
}

.contacts{
  display: flex;
  flex-direction: row;
  margin-top: 20px;

  .contact {
    display: flex;
    flex-direction: row;
    margin: 0 10px;

    svg {
      margin: auto 5px;
    }

    h3 {
      margin-top: -2px;
      max-width: 0px;
      overflow: hidden;
      transition: max-width 1s linear;
    }
  }

  .contact:hover {
    h3 {
      max-width: 200px;
    }
  }
}
</style>
