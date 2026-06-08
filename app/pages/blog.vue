<template>
  <MainWindow selectedTab="projects">
    <div v-if="status === 'pending'">Loading...</div>
    <div v-else-if="status === 'error'">Error fetching projects. ({{ error }})</div>
    <div v-else-if="blogs == null || blogs.length == 0">nothing yet :(</div>
    <div v-else class="ProjectsFrame">
      <div v-for="post in blogs" class="ProjectCard">
        <img v-if="post.coverImagePath" v-bind:src="post.coverImagePath.toString()" v-bind:alt="post.title" />
        <div class="content">
          <h1>{{ post.title }}</h1>
          <p>{{ post.description }}</p>
          <div class="tags">
            <div class="tag" v-for="tag in post.tags">{{ tag }}</div>
          </div>
        </div>
      </div>
    </div>
  </MainWindow>
</template>

<script lang="ts">
import { URL } from "url";
import "~/assets/css/projects.scss";
</script>

<script setup lang="ts">
type Blog = {
  title: string,
  description: string,
  tags: string[],
  contentPath: URL
  coverImagePath: URL | undefined,
}
const { status, error, data: blogs} = useFetch<Blog[]>("https://static.iw2tryhard.dev/public/content/blogs.json", { lazy: true });
</script>
