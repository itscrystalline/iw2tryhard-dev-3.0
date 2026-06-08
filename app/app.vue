<template>
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</template>

<script setup lang="ts">
useColorMode();
useHead({
	title: "crystal's site",
	meta: [
		{ property: "og:title", content: "crystal's site" },
		{ property: "og:description", content: "my place on the internet :3" },
		{ property: "og:image", content: "https://iw2tryhard.dev/siteimg.png" },
		{ property: "og:image:width", content: "300" },
		{ property: "og:image:height", content: "300" },
		{ property: "og:image:type", content: "image/png" },
		{ property: "og:url", content: "https://iw2tryhard.dev" },
		{ name: "theme-color", content: "#f5c2e7" },
	],
	htmlAttrs: {
		class: "pride",
	},
});
</script>
