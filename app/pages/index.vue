<template>
  <MainWindow selectedTab="about">
    <div class="Centered">
      <Logo />
      <div class="NamesBox">
        <div class="SameLine UnlessSmall">
          <h1 class="Big SameLine">hi there! i'm</h1>
          <div class="SameLine">
            <NuxtLink to="https://picrew.me/ja/image_maker/644129">
              <NuxtImg width="30" height="30" src="/pfp1.png" class="ProfilePicture First"
                alt="https://picrew.me/ja/image_maker/644129" />
            </NuxtLink>
            <NuxtLink to="https://picrew.me/ja/image_maker/2307052">
              <NuxtImg width="30" height="30" src="/pfp2.png" class="ProfilePicture Second"
                alt="https://picrew.me/ja/image_maker/2307052" />
            </NuxtLink>
            <h1 class="Name">crystal</h1>
          <h1 class="Big">!</h1>
          </div>
        </div>
        <p class="Pronouns">
          i use she/they pronouns!
          <i> :3</i>
        </p>
      </div>
      <h1 class="Subnames">
        (my old name was IWant2TryHard if you were wondering about the
        domain name)
      </h1>
      <div class="AboutBox">
        <div class="SubBox">
          <p class="SmallTitle">I am</p>
          <ul class="List">
            <li>{{ getAge() }} years old</li>
            <li>
              <p>pan / asexual</p>
            </li>
            <li>
              <b>transfem enby</b>
            </li>
            <li>From Thailand 🇹🇭</li>
            <li>Studying Computer Engineering at KOSEN-KMITL</li>
            <li>
              A
              <p class="SmallText">not so hobbyist anymore</p>
              Programmer
            </li>
            <li>A Design Enthusiast (UI/UX)</li>
          </ul>
        </div>
        <div class="SubBox">
          <p class="SmallTitle">I do</p>
          <ul class="List">
            <li>Full-Stack Programming</li>
            <li>
              <p class="SmallText"><i>some</i></p>
              AI
            </li>
            <li>
              <p class="SmallText"><i>some</i></p>
              Graphic Design
            </li>
            <li>Game Programming</li>
            <li>Game Design</li>
            <li>Game Modding</li>
            <li>
              <p class="SmallText"><i>some</i></p>
              Pixel Art
              <p class="SmallText">(mostly small-sized)</p>
            </li>
            <li>日本語復習中！</li>
          </ul>
        </div>
        <div class="SubBox">
          <p class="SmallTitle">I like</p>
          <ul class="List">
            <li>Technology</li>
            <li>
              Games
              <p class="SmallText">(mostly Minecraft)</p>
            </li>
            <li>High quality Designs</li>
            <li>
              Fixing Problems
              <p class="SmallText">(sometimes)</p>
            </li>
            <li>Learning new things</li>
            <li>
              <p v-bind:class="'SmallText ' + (!hover ? 'transgener' : '')" @mouseover="hover = true"
                @mouseleave="hover = false">mmmm estrogen 🏳️‍⚧️ ! ! !</p>
            </li>
          </ul>
        </div>
      </div>
      <p class="SmallTitle"> my socials </p>
      <div class="AboutBox">
        <div class="SubBox">
          <NuxtLink class="Link" to="https://discord.com/users/600496278857842698/">Discord</NuxtLink>
        </div>
        <div class="SubBox">
          <NuxtLink class="Link" to="https://github.com/itscrystalline/">Github</NuxtLink>
        </div>
        <div class="SubBox">
          <NuxtLink class="Link" to="https://git.iw2tryhard.dev/itscrystalline/">Forgejo</NuxtLink>
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
      <div class="AboutBox End">
        <NuxtLink href="https://alyx.sh/posts/hrt-geocities-buttons/" class="SubBox">
          <img src="https://88x31.kate.pet/hrt-e2.gif" height="31" class="Badge8831" loading="lazy" />
        </NuxtLink>
        <div class="SubBox">
          <img src="https://88x31imgs.blob.core.windows.net/images/RodeoDrive_Plaza_thaidev.gif" height="31" class="Badge8831" loading="lazy"/>
        </div>
        <div class="SubBox">
          <img src="https://88x31.kate.pet/home-assistant.gif" height="31" class="Badge8831" loading="lazy"/>
        </div>
        <div class="SubBox">
          <img src="https://88x31.kate.pet/transrats.gif" height="31" class="Badge8831" loading="lazy"/>
        </div>
        <div class="SubBox">
          <img src="https://88x31.kate.pet/twomen_88x31.gif" height="31" class="Badge8831" loading="lazy"/>
        </div>
        <div class="SubBox">
          <img src="https://88x31.kate.pet/girlsnow.png" height="31" class="Badge8831" loading="lazy"/>
        </div>
        <div class="SubBox">
          <img src="https://88x31.kate.pet/madeon_linux.gif" height="31" class="Badge8831" loading="lazy"/>
        </div>
        <div class="SubBox">
          <img src="https://88x31imgs.blob.core.windows.net/images/neovim.gif" height="31" class="Badge8831" loading="lazy"/>
        </div>
        <div class="SubBox">
          <img src="/8831.png" height="31" class="Badge8831" loading="lazy"/>
        </div>
      </div>
    </div>
  </MainWindow>
</template>

<script lang="ts">
import "~/assets/css/about.sass";

export default {
	data() {
		return {
			hover: false,
			getAge: (): number =>
				new Date(Date.now() - 1212550800).getUTCFullYear() - 2008,
		};
	},
};
</script>
