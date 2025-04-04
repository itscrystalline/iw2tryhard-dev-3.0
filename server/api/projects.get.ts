export default defineEventHandler(async () => {
  const posts = await $fetch(
    "https://server.iw2tryhard.dev/itscrystalline_projects.json",
  );
  return posts;
});
