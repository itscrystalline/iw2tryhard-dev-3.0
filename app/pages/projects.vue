<template>
  <MainWindow selectedTab="projects">
    <div v-if="status === 'pending'">Loading...</div>
    <div v-else-if="status === 'error'">Error fetching projects. ({{ error }})</div>
    <div v-else class="ProjectsFrame">
      <div v-for="post in projects" class="ProjectCard">
        <img v-if="post.coverImagePath" v-bind:src="post.coverImagePath.toString()" v-bind:alt="post.title" />
        <div class="content">
          <h1>{{ post.title }}</h1>
          <p>{{ post.description }}</p>
          <div class="tags">
            <div class="tag" v-for="tag in post.tags">{{ tag }}</div>
          </div>
        </div>
        <div class="buttons" v-if="post.links !== undefined">
          <NuxtLink v-bind:to="link" v-for="link in post.links" target="_blank">
            <div>
              {{ link.name }}
              <img src="~/assets/svg/external-link-symbolic.svg" />
            </div>
          </NuxtLink>
        </div>
      </div>
    </div>
  </MainWindow>
</template>

<script lang="ts">
import "~/assets/css/projects.sass";
</script>

<script setup lang="ts">
type Project = {
  title: string,
  description: string,
  tags: string[],
  links: {
    name: string, 
    url: URL
  }[] | undefined,
  coverImagePath: URL | undefined,
}
const { status, error, data: projects} = useFetch<Project[]>("https://static.iw2tryhard.dev/public/content/projects.json", { lazy: true });
</script>
