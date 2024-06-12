<template>
  <NuxtLayout>
    <NuxtPage/>
  </NuxtLayout>
</template>

<script setup lang="ts">
const colorMode = useColorMode()
useHead({
  title: "tryhard's site",
  meta: [
    {property: 'og:title', content: "IWant2TryHard's Site"},
    {property: 'og:description', content: 'my place on the internet :3'},
    {property: 'og:image', content: 'https://iw2tryhard.dev/siteimg.png'},
    {property: 'og:image:width', content: '300'},
    {property: 'og:image:height', content: '300'},
    {property: 'og:image:type', content: 'image/png'},
    {property: 'og:url', content: 'https://iw2tryhard.dev'},
    {name: 'theme-color', content: '#A25DFA'}
  ],
  htmlAttrs: {
    class: new Date().getMonth() == 5 ? 'pride' : ''
  }
})
</script>