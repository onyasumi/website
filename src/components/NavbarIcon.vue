<script lang="ts">
  export default {
    props: {
      routerLink: String
    }
  }
</script>

<template>
  <div class="container">
    <RouterLink :to="this.routerLink">
      <i class="item">
        <slot name="icon"></slot>
      </i>
    </RouterLink>
  </div>
</template>

<style scoped lang="scss">

  .item {
    display: flex;
    place-items: center;
    place-content: center;
    color: var(--color-text);
    border: 1px solid var(--color-border);
    background: var(--color-background-mute);
    border-radius: 8px;
    width: 50px;
    height: 50px;
  }

  .container {
    height: 130px;

    a:hover .item {
      border-color: var(--color-text-accent-2);
      transition: border-color .5s;
    }

    a.router-link-exact-active .item {
      border-color: var(--color-text-accent-1);
      transition: border-color .5s;
    }
  }

  .container:after {
    content: ' ';
    display: inline-block;
    border-left: 1px solid var(--color-border);
    height: 80px;
    margin: 0 25px;
  }

  .container:last-of-type {
    height: 50px;
  }

  .container:last-of-type:after {
    display: none;
  }
</style>
