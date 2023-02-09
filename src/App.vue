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

      <div>
        <nav>
          <RouterLink to="/">Home</RouterLink>
          <RouterLink to="/projects">Projects</RouterLink>
          <RouterLink to="/resume">Resume</RouterLink>
          <RouterLink to="/links">Links</RouterLink>
        </nav>
      </div>
    </div>
  </header>

  <NavigationBar />

  <RouterView />
</template>

<style scoped lang="scss">
header {
  line-height: 1.5;
  max-height: 100vh;
}

h1 {
  font-weight: 600;
  font-size: 6rem;
  font-family: 'Kiona';
  margin-bottom: -20px;

  &.color {
    color: var(--color-text-accent-1);
  }
}

h3 {
  font-size: 1.2rem;
}

nav {
  font-size: 12px;
  text-align: center;
  margin-top: 2rem;
}

nav a.router-link-exact-active {
  color: var(--color-text-accent-1);
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  padding: 0 1rem;
  border-left: 1px solid var(--color-border);
}

nav a:first-of-type {
  border: 0;
}

header {
  display: flex;
  place-items: center;
}

nav {
  text-align: left;
  white-space: nowrap;
  margin-left: -1rem;
  font-size: 1rem;

  padding: 1rem 0;
  margin-top: 1rem;
}
</style>
