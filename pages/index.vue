<template>
  <MainWindow selectedTab="about">
    <div class="Centered">
      <Logo/>
      <div class="NamesBox">
        <div class="SameLine">
          <img width="40" height="40" src="~/assets/svg/adapfp.svg" class="ProfilePicture" alt="pfp">
          <h1 class="Name">"IWant2TryHard"</h1>
        </div>
        <p class="Pronouns" @mouseover="hover = true" @mouseleave="hover = false">
          {{ hover ? "they/them/he/him" : "they/he" }}
          <i> :3</i>
        </p>
      </div>
      <h1 class="Subnames">(MyNameTsThad / ThadDev)</h1>
      <div class="AboutBox">
        <div class="SubBox">
          <p class="SmallTitle">I am</p>
          <ul class="List">
            <li>A 16 year old</li>
            <li><p class="SmallText">aroace demiboy</p></li>
            <li>From Thailand</li>
            <li>Studying Computer Engineering in Bangkok</li>
            <li>A <p class="SmallText">not so hobbyist anymore</p> Programmer</li>
            <li>A Design Enthusiast (UI/UX)</li>
          </ul>
        </div>
        <div class="SubBox">
          <p class="SmallTitle">I do</p>
          <ul class="List">
            <li>Full-Stack Programming</li>
            <li><p class="SmallText"><i>some</i></p> AI</li>
            <li><p class="SmallText"><i>some</i></p> Graphic Design</li>
            <li>Game Programming</li>
            <li>Game Design</li>
            <li>Game Modding</li>
            <li><p class="SmallText"><i>some</i></p> Pixel Art <p class="SmallText">(mostly small-sized)</p></li>
          </ul>
        </div>
        <div class="SubBox">
          <p class="SmallTitle">I like</p>
          <ul class="List">
            <li>Technology</li>
            <li>Games <p class="SmallText">(mostly Minecraft)</p></li>
            <li>Cosplaying as a Sysadmin</li>
            <li>High quality Designs</li>
            <li>Fixing Problems <p class="SmallText">(sometimes)</p></li>
          </ul>
        </div>
      </div>
      <div class="AboutBox End">
        <div class="SubBox">
          <NuxtLink class="Link" to="https://github.com/MyNameTsThad/">Github</NuxtLink>
        </div>
        <div class="SubBox">
          <NuxtLink class="Link" to="mailto:real@iw2tryhard.dev">Email</NuxtLink>
        </div>
        <div class="SubBox">
          <NuxtLink class="Link" to="https://twitter.com/iwant2tryhard/">Twitter</NuxtLink>
        </div>
        <div class="SubBox">
          <NuxtLink class="Link" to="https://mastodon.social/@IWant2TryHard">Fedi</NuxtLink>
        </div>
        <div class="SubBox">
          <NuxtLink class="Link" to="https://www.reddit.com/user/Main-Information-489/">Reddit</NuxtLink>
        </div>
      </div>
    </div>
  </MainWindow>
</template>

<script lang="ts">
import '~/assets/css/about.sass'
export default {
  data() {
    return {
      hover: false
    }
  }
}
</script>