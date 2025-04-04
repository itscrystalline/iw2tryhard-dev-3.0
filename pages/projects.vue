<template>
  <MainWindow selectedTab="projects">
    <div v-if="status === 'pending'">Loading...</div>
    <div v-else-if="status === 'error'">Error fetching projects. ({{ error }})</div>
    <div v-else class="ProjectsFrame">
      <div v-for="post in posts.projects" class="ProjectCard">
        <NuxtImg v-if="post.cover" v-bind:src="post.cover" v-bind:alt="post.title" />
        <div class="content">
          <h1>{{ post.title }}</h1>
          <p>{{ post.description }}</p>
          <div class="tags">
            <div class="tag" v-for="tag in post.tags">{{ tag }}</div>
          </div>
        </div>
        <div class="buttons">
          <NuxtLink v-bind:to="link.link" v-for="link in post.links" target="_blank">
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
const { status, error, data: posts } = useFetch("/api/projects", { lazy: true });
</script>
