// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: {
    enabled: true,

    timeline: {
      enabled: true,
    },
  },
  css: ["~/assets/css/main.scss"],
  modules: ["@nuxt/ui", "@nuxtjs/color-mode"],
  ui: {
    global: true,
  },
  vite: {
    css: {
      preprocessorOptions: {
        scss: {
          additionalData: '@use "@/assets/_vars.scss" as *;\n',
        },
      },
    },
  },
  app: {
    head: {
      link: [
        {
          rel: "icon",
          type: "image/png",
          href: "/logoshort-16x16.png",
          sizes: "16x16",
        },
        {
          rel: "icon",
          type: "image/png",
          href: "/logoshort-32x32.png",
          sizes: "32x32",
        },
      ],
    },
  },
  colorMode: {
    classSuffix: "",
  },
});
