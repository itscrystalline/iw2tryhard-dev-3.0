<template>
  <p class="HoverText" v-bind:style="new Date().getMonth() != 5 ? 'display: none;' : ''">its gay liberal woke month ‼️ :3</p>
  <div class="MainWindow">
    <div class="TitleBar">
      <button class="LogoButton" @click="toggleTheme" v-bind:title="colorMode.preference">
        <img v-bind:src="getIcon()" class="Icon" v-bind:alt="colorMode.preference"/>
      </button>
      <div class="Tabs">
        <NuxtLink v-bind:class="getClass('about', false)" to="/">
          <img src="~/assets/svg/info-symbolic.svg"/>
          <p>About</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('projects', false)" to="/projects">
          <img src="~/assets/svg/build-alt-symbolic.svg"/>
          <p>Projects</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('stats', false)" to="/statistics">
          <img src="~/assets/svg/align-tool-symbolic.svg"/>
          <p>Statistics</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('gallery', false)" to="/gallery">
          <img src="~/assets/svg/image-round-symbolic.svg"/>
          <p>Gallery</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('blog', false)" to="/blog">
          <img src="~/assets/svg/chat-bubble-text-inverted-symbolic.svg"/>
          <p>Blog</p>
        </NuxtLink>
      </div>
      <NuxtLink class="LogoButton End" to="https://github.com/MyNameTsThad/iw2tryhard-dev-3.0">
        <img src="~/assets/svg/github-desktop-symbolic.svg" class="ThinIcon" alt="github"/>
      </NuxtLink>
    </div>
    <div v-bind:class="getFlex()">
      <slot/>
    </div>
    <div class="BottomBar">
      <div class="BottomTabs">
        <NuxtLink v-bind:class="getClass('about', true)" to="/">
          <img src="~/assets/svg/info-symbolic.svg"/>
          <p>About</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('projects', true)" to="/projects">
          <img src="~/assets/svg/build-alt-symbolic.svg"/>
          <p>Projects</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('stats', true)" to="/statistics">
          <img src="~/assets/svg/align-tool-symbolic.svg"/>
          <p>Statistics</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('gallery', true)" to="/gallery">
          <img src="~/assets/svg/image-round-symbolic.svg"/>
          <p>Gallery</p>
        </NuxtLink>
        <NuxtLink v-bind:class="getClass('blog', true)" to="/blog">
          <img src="~/assets/svg/chat-bubble-text-inverted-symbolic.svg"/>
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
    getClass(name: String, bottom: Boolean): Object {
      return {
        'Tab': name != this.selectedTab && !bottom,
        'Tab Selected': name == this.selectedTab && !bottom,
        'BottomTab': name != this.selectedTab && bottom,
        'BottomTab Selected': name == this.selectedTab && bottom
      }
    },
    getFlex(): Object {
      return {
        'Main': this.noFlex == null,
        'Main NoFlex': this.noFlex != null
      }
    }
  }
}
</script>

<script setup lang="ts">

const colorMode = useColorMode()
const themes = ['system', 'dark', 'light']
let currentThemeIndex = 0

const toggleTheme = () => {
  currentThemeIndex = (currentThemeIndex + 1) % themes.length;
  // Apply the theme
  colorMode.preference = themes[currentThemeIndex];
}
const getIcon = (): String => {
  switch (colorMode.preference) {
    case 'system':
      return 'display-symbolic.svg'
    case 'dark':
      return 'moon-outline-symbolic.svg'
    case 'light':
      return 'sun-outline-symbolic.svg'
    default:
      return 'display-symbolic.svg'
  }
}
</script>