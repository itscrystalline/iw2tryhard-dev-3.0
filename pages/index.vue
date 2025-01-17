<template>
    <MainWindow selectedTab="about">
        <div class="Centered">
            <Logo />
            <div class="NamesBox">
                <div class="SameLine">
                    <h1 class="Big">hi there! i'm</h1>
                    <NuxtLink to="https://picrew.me/ja/image_maker/644129">
                        <img
                            width="30"
                            height="30"
                            src="~/assets/pfp1.png"
                            class="ProfilePicture First"
                            alt="https://picrew.me/ja/image_maker/644129"
                        />
                    </NuxtLink>
                    <NuxtLink to="https://picrew.me/ja/image_maker/2307052">
                        <img
                            width="30"
                            height="30"
                            src="~/assets/pfp2.png"
                            class="ProfilePicture Second"
                            alt="https://picrew.me/ja/image_maker/2307052"
                        />
                    </NuxtLink>
                    <h1 class="Name">crystal</h1>
                    <h1 class="Big">!</h1>
                </div>
                <p
                    class="Pronouns"
                    @mouseover="hover = true"
                    @mouseleave="hover = false"
                >
                    i use they/she pronouns!
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
                        <li>16 years old</li>
                        <li>
                            <p class="SmallText">pan / asexual</p>
                        </li>
                        <li>
                            <p class="SmallText">transfem enby</p>
                        </li>
                        <li>From Thailand 🇹🇭</li>
                        <li>Studying Computer Engineering in Bangkok</li>
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
                        <li>日本語を勉強中！</li>
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
                        <li><p class="SmallText">to be a girl</p></li>
                    </ul>
                </div>
            </div>
            <p class="SmallTitle">
                my socials (not much of a poster though :p)
            </p>
            <div class="AboutBox End">
                <div class="SubBox">
                    <NuxtLink
                        class="Link"
                        to="https://discord.com/users/600496278857842698/"
                        >Discord</NuxtLink
                    >
                </div>
                <div class="SubBox">
                    <NuxtLink
                        class="Link"
                        to="https://github.com/itscrystalline/"
                        >Github</NuxtLink
                    >
                </div>
                <div class="SubBox">
                    <NuxtLink class="Link" to="mailto:real@iw2tryhard.dev"
                        >Email</NuxtLink
                    >
                </div>
                <div class="SubBox">
                    <NuxtLink
                        class="Link"
                        to="https://twitter.com/iwant2tryhard/"
                        >Twitter</NuxtLink
                    >
                </div>
                <div class="SubBox">
                    <NuxtLink
                        class="Link"
                        to="https://mastodon.social/@IWant2TryHard"
                        >Fedi</NuxtLink
                    >
                </div>
                <div class="SubBox">
                    <NuxtLink
                        class="Link"
                        to="https://www.reddit.com/user/Main-Information-489/"
                        >Reddit</NuxtLink
                    >
                </div>
            </div>
        </div>
    </MainWindow>
</template>

<script lang="ts">
import { _lime } from "#tailwind-config/theme/stroke";
import "~/assets/css/about.sass";
export default {
    data() {
        return {
            hover: false,
        };
    },
    components: { _lime },
};
</script>
