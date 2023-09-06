<template>
  <a class="link" href="https://github.com/onyasumi/vega" target="_blank" rel="noopener noreferrer">
    <h1>Vega</h1>
    <h3>A neofetch replacement</h3>
  </a>
  <a class="link" href="https://github.com/onyasumi/potechi" target="_blank" rel="noopener noreferrer">
    <h1>Potechi</h1>
    <h3>A CHIP-8 virtual machine</h3>
  </a>
  <a class="link" href="https://github.com/karatsubalabs/sashimi-backend" target="_blank" rel="noopener noreferrer">
    <h1>Sashimi</h1>
    <h3>Website Downtime Monitor written in GO</h3>
  </a>
  <a class="link" href="https://github.com/KaratsubaLabs/takoyaki-frontend" target="_blank" rel="noopener noreferrer">
    <h1>Takoyaki</h1>
    <h3>A simple VPS hosting platform</h3>
  </a>
  <a class="link" href="https://github.com/pixolous" target="_blank" rel="noopener noreferrer">
    <h1>Pixolous</h1>
    <h3>Photo de-duplication utility</h3>
  </a>
  <a class="link" href="https://github.com/widgethub" target="_blank" rel="noopener noreferrer">
    <h1>Widgethub</h1>
    <h3>Generate web widgets easily</h3>
  </a>
  <a class="link" href="https://github.com/onyasumi/cluster" target="_blank" rel="noopener noreferrer">
    <h1>Cluster</h1>
    <h3>Python3 photo ingest & sorting tool</h3>
  </a>
</template>

<style scoped lang="scss">
.link {
  display: flex;
  flex-direction: row;
  margin: 0 10px;

  h3 {
    margin: auto 10px;
    max-width: 0px;
    overflow: hidden;
    white-space: nowrap;
    transition: max-width 1s linear;
  }
}

.link:hover {
  h3 {
    max-width: 500px;
  }
}
</style>
<script setup lang="ts">
</script>