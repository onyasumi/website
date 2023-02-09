<template>
  <div class="content">
    <a class="link" href="https://karatsubalabs.com" target="_blank" rel="noopener noreferrer">
      <h1>KaratsubaLabs</h1>
      <h3>karatsubalabs.com</h3>
    </a>
    <a class="link" href="" target="_blank" rel="noopener noreferrer">
      <h1>Debian Repos</h1>
      <h3>Coming Soon</h3>
    </a>
  </div>
</template>

<style scoped lang="scss">
.content {
  width: 35%;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;

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
}
</style>
