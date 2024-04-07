// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    devtools: {enabled: true},
    css: ['~/assets/css/main.sass'],
    modules: ['@nuxt/ui'],
    ui: {
        global: true,
    },
    vite: {
        css: {
            preprocessorOptions: {
                sass: {
                    additionalData: '@use "@/assets/_colors.sass" as *\n'
                }
            }
        }
    },
    app: {
        head: {
            link: [
                {rel: 'icon', type: 'image/png', href: '/logoshort-16x16.png', sizes: '16x16'},
                {rel: 'icon', type: 'image/png', href: '/logoshort-32x32.png', sizes: '32x32'},
            ]
        }
    }
})
