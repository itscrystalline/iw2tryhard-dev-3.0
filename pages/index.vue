<template>
  <MainWindow selectedTab="about">
    <div class="Centered">
      <img src="~/assets/svg/logolong.svg" class="Logo" />
      <h1 class="Name">"IWant2TryHard"</h1>
      <p class="Pronouns">he/him/they/them <i>:3</i></p>
      <div class="NamesBox">
        <img width="40" height="40" src="~/assets/svg/adapfp512.svg" class="ProfilePicture" />
        <h1 class="Subnames">MyNameTsThad / ThadDev</h1>
      </div>
      <div class="AboutBox">
        <div class="SubBox">
          <p class="SmallTitle">I am</p>
          <ul class="List">
            <li>A 15 year old</li>
            <li>From Thailand</li>
            <li>Studying Computer Engineering in Bangkok</li>
            <li>A hobbyist Programmer</li>
            <li>A Design Enthusiast (UI/UX)</li>
          </ul>
        </div>
        <div class="SubBox">
          <p class="SmallTitle">I do</p>
          <ul class="List">
            <li>Full-Stack Programming</li>
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
    </div>
  </MainWindow>
</template>

<script>
import '~/assets/css/about.sass'
</script>
