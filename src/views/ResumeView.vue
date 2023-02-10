<script lang="ts">
import VuePdfEmbed from 'vue-pdf-embed'

let reRenderPdf : number = 0;
let isLoading : boolean = true;

export default {
  components: {
    VuePdfEmbed,
  },
  methods: {
    resize: function() {
      if(this.pdfHeight != window.innerHeight * 0.8){
        reRenderPdf = window.innerHeight * 0.8;
        this.checkReRender();
      }
    },
    onRenderDone: function() {
      isLoading = false;
      this.checkReRender();
    },
    checkReRender: function() {
      if(reRenderPdf != 0 && isLoading == false) {
        isLoading = true;
        this.pdfHeight = reRenderPdf;
        reRenderPdf = 0;
      }
    }
  },
  data() {
    return {
      pdfHeight: window.innerHeight * 0.8,
      source1: '/resume.pdf',
    }
  },
  mounted () {
    window.addEventListener("resize", this.resize);
  },
  destroyed() {
    window.removeEventListener("resize", this.resize);
  }
}
</script>

<template>
  <a href="https://franktao.com/files/resume.pdf" target="_blank">
    <vue-pdf-embed
      :source="source1"
      :height="pdfHeight"
      @rendered="onRenderDone"
    />
    <p>Click to open in new tab</p>
  </a>
</template>

<style scoped lang="scss">
a {
  position: fixed;
  text-align: center;

  .vue-pdf-embed {
    border: 1px solid var(--color-border);
    transition: border-color 0.5s;
  }
}

a:hover {
  .vue-pdf-embed {
    border: 1px solid var(--color-text-accent-2);
  }
}

</style>
