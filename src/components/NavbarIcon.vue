<template>
  <div class="item-container">
    <i class="item">
      <slot name="icon"></slot>
    </i>
  </div>
</template>

<style scoped lang="scss">

  .item {
    display: flex;
    place-items: center;
    place-content: center;
    color: var(--color-text);
    border: 1px solid var(--color-border);
    background: var(--color-background);
    border-radius: 8px;
    width: 50px;
    height: 50px;
  }

  .item-container {
    height: 130px;
  }

  .item-container:after {
    content: ' ';
    display: inline-block;
    border-left: 1px solid var(--color-border);
    height: 80px;
    margin: 0 25px;
  }

  .item-container:last-of-type {
    height: 50px;
  }

  .item-container:last-of-type:after {
    display: none;
  }
</style>
