<script setup lang="ts">
import { RouterLink, RouterView } from 'vue-router'
import NavigationBar from './components/NavigationBar.vue'
</script>

<template>
  <header>
    <div class="wrapper">
      <div class="greetings">
        <h3>Hey, my name is</h3>
        <h1 class="color">Frank Tao</h1>
      </div>

      <nav>
        <RouterLink to="/">Home</RouterLink>
        <RouterLink to="/projects">Projects</RouterLink>
        <RouterLink to="/resume">Resume</RouterLink>
        <RouterLink to="/links">Links</RouterLink>
      </nav>
    </div>
  </header>

  <NavigationBar />

  <div class="content">
    <RouterView />
  </div>
</template>

<style scoped lang="scss">
header {
  width: calc(50vw - 211px);
  display: flex;
  justify-content: center;
  place-items: center;
  line-height: 1.5;

  h1 {
    font-weight: 600;
    font-size: 6rem;
    font-family: 'LemonMilk';
    white-space: nowrap;
    margin-bottom: -20px;

    &.color {
      color: var(--color-text-accent-1);
    }
  }

  h3 {
    font-size: 1.2rem;
  }

  nav {
    text-align: left;
    white-space: nowrap;
    margin-left: -1rem;
    font-size: 1rem;

    padding: 1rem 0;
    margin-top: 1rem;
    text-align: center;
  }

  nav a.router-link-exact-active {
    color: var(--color-text-accent-1);
  }

  nav a {
    display: inline-block;
    padding: 0 1rem;
    border-left: 1px solid var(--color-border);
  }

  nav a:first-of-type {
    border: 0;
  }
}

.content {
  height: 100vh;
  width: calc(50vw - 211px);
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

</style>
