<template>
  <div class="MainWindow">
    <div class="TitleBar">
      <div class="Tabs">
        <NuxtLink v-bind:class="getClass('about', false)" to="/">
          <img src="~/assets/svg/info-symbolic.svg" />
          <p>About</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('projects', false)" to="/projects">
          <img src="~/assets/svg/build-alt-symbolic.svg" />
          <p>Projects</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('stats', false)" to="/statistics">
          <img src="~/assets/svg/align-tool-symbolic.svg" />
          <p>Statistics</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('gallery', false)" to="/gallery">
          <img src="~/assets/svg/image-round-symbolic.svg" />
          <p>Gallery</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('blog', false)" to="/blog">
          <img src="~/assets/svg/chat-bubble-text-inverted-symbolic.svg" />
          <p>Blog</p>
        </NuxtLink>
      </div>
      <a class="GithubLogoButton" href="https://github.com/MyNameTsThad/thaddev-web-3.0">
        <img src="~/assets/svg/github-desktop-symbolic.svg" class="GithubLogo" />
      </a>
    </div>
    <div v-bind:class="getFlex()">
      <slot />
    </div>
    <div class="BottomBar">
      <div class="BottomTabs">
        <NuxtLink v-bind:class="getClass('about', true)" to="/">
          <img src="~/assets/svg/info-symbolic.svg" />
          <p>About</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('projects', true)" to="/projects">
          <img src="~/assets/svg/build-alt-symbolic.svg" />
          <p>Projects</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('stats', true)" to="/statistics">
          <img src="~/assets/svg/align-tool-symbolic.svg" />
          <p>Statistics</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('gallery', true)" to="/gallery">
          <img src="~/assets/svg/image-round-symbolic.svg" />
          <p>Gallery</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('blog', true)" to="/blog">
          <img src="~/assets/svg/chat-bubble-text-inverted-symbolic.svg" />
          <p>Blog</p>
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
export default {
  props: ['selectedTab', 'noFlex'],
  methods: {
    getClass(name: String, bottom: Boolean) {
      return {
        'Tab': name != this.selectedTab && !bottom,
        'Tab Selected': name == this.selectedTab && !bottom,
        'BottomTab': name != this.selectedTab && bottom,
        'BottomTab Selected': name == this.selectedTab && bottom
      }
    },
    getFlex() {
      return {
        'Main': this.noFlex == null,
        'Main NoFlex': this.noFlex != null
      }
    }
  }
}
</script>