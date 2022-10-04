<template>
    <section id="nos-sites" class="tw-py-8 tw-bg-white lg:tw-py-20 dark:tw-bg-gray-900 lg:tw-pb-24">
        <div class="tw-px-4 tw-mx-auto tw-max-w-8xl lg:tw-px-4 lg:tw-text-center">
            <h2 class="tw-mb-4 tw-text-2xl tw-font-bold tw-tracking-tight tw-text-gray-900 lg:tw-font-extrabold lg:tw-text-4xl lg:tw-leading-snug dark:tw-text-white lg:tw-text-center 2xl:tw-px-48">Nos Sites</h2>
            <p class="tw-mb-10 tw-text-lg tw-font-normal tw-text-gray-500 dark:tw-text-gray-400 lg:tw-text-center lg:tw-text-xl lg:tw-px-64 lg:tw-mb-16">TROUVER UN CLUB PRÈS DE CHEZ VOUS !</p>
            <div class="tw-space-y-4 sm:tw-grid sm:tw-grid-cols-2 lg:tw-grid-cols-4 sm:tw-gap-4 xl:tw-gap-8 sm:tw-space-y-0 md:tw-mt-12">
                <a v-for="item in this.data" :key="item.id" href="#" class=" tw-bg-cover tw-bg-no-repeat tw-block tw-pt-32 tw-pb-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm dark:tw-bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light"
                :style="{ 'background-image': 'url(' + item.media[0].original_url + ')' }">
                    <h3 class="tw-font-semibold tw-text-xl tw-text-white dark:tw-text-white tw-mt-3.5">{{ item.name }}</h3>
                </a>
            </div>
        </div>
    </section>
</template>

<script>
import axios from 'axios'
export default {
    data() {
        return {
            data: [],
        }
    },
    mounted () {
        axios
            .get('/api/sites')
            .then(({ data: { data } }) => {
                this.data = data;
            })
    },
}
</script>

<style scoped>

</style>
