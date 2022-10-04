<template>
        <section id="activites" class="tw-bg-gray-50 tw-pt-8 dark:tw-bg-gray-800">
            <div class="tw-py-8 tw-px-4 tw-mx-auto tw-max-w-screen-xl lg:tw-py-16">
                <h2 class="tw-mb-6 tw-text-3xl tw-font-extrabold tw-tracking-tight tw-leading-tight tw-text-gray-900 lg:tw-text-center dark:tw-text-white md:tw-text-4xl">NOS ACTIVITÉS!</h2>
                <!--<p class="tw-mb-10 tw-text-lg tw-font-normal tw-text-gray-500 dark:tw-text-gray-400 lg:tw-text-center lg:tw-text-xl lg:tw-px-64 lg:tw-mb-16">You can now also get started ACTIVITÉS.</p>-->
                <div class="tw-space-y-4 sm:tw-grid sm:tw-grid-cols-2 lg:tw-grid-cols-4 sm:tw-gap-4 xl:tw-gap-8 sm:tw-space-y-0 md:tw-mt-12">
                    <a v-for="item in this.data" :key="item.id" href="#" class="tw-block tw-py-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm dark:tw-bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light">
                        <img :src="`${item.media[0].original_url}`" class="tw-mx-auto tw-w-auto tw-h-64 tw-text-blue-500" alt="SPORT PLANET Logo">
                        <h3 class="tw-font-semibold tw-text-xl tw-text-gray-900 dark:tw-text-white tw-mt-3.5">{{ item.name }}</h3>
                    </a>

                    <!-- <a href="#" class="tw-block tw-py-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm dark:tw-bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light">
                        <img src="/images/Artboard2.png" class="tw-mx-auto tw-w-auto tw-h-64 tw-text-blue-500" alt="SPORT PLANET Logo">
                        <h3 class="tw-font-semibold tw-text-xl tw-text-gray-900 dark:tw-text-white tw-mt-3.5">BOXE & MMA</h3>
                    </a>
                    <a href="#" class="tw-block tw-py-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm dark:tw-bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light">
                        <img src="/images/Artboard3.png" class="tw-mx-auto tw-w-auto tw-h-64 tw-text-blue-500" alt="SPORT PLANET Logo">
                        <h3 class="tw-font-semibold tw-text-xl tw-text-gray-900 dark:tw-text-white tw-mt-3.5">CARDIO</h3>
                    </a>
                    <a href="#" class="tw-block tw-py-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm dark:tw-bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light">
                        <img src="/images/Artboard4.png" class="tw-mx-auto tw-w-auto tw-h-64 tw-text-blue-500" alt="SPORT PLANET Logo">
                        <h3 class="tw-font-semibold tw-text-xl tw-text-gray-900 dark:tw-text-white tw-mt-3.5">DANSE</h3>
                    </a>
                    <a href="#" class="tw-block tw-py-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm dark:tw-bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light">
                        <img src="/images/Artboard5.png" class="tw-mx-auto tw-w-auto tw-h-64 tw-text-blue-500" alt="SPORT PLANET Logo">
                        <h3 class="tw-font-semibold tw-text-xl tw-text-gray-900 dark:tw-text-white tw-mt-3.5">Functional training</h3>
                    </a>
                    <a href="#" class="tw-block tw-py-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm dark:tw-bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light">
                        <img src="/images/Artboard1.png" class="tw-mx-auto tw-w-auto tw-h-64 tw-text-blue-500" alt="SPORT PLANET Logo">
                        <h3 class="tw-font-semibold tw-text-xl tw-text-gray-900 dark:tw-text-white tw-mt-3.5">AQUAGYM</h3>
                    </a>
                    <a href="#" class="tw-block tw-py-12 tw-px-8 tw-text-center tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-shadow-sm tw-dark:bg-gray-700 dark:tw-border-gray-600 hover:tw-shadow-lg dark:hover:tw-shadow-lg-light">
                        <img src="/images/Artboard7.png" class="tw-mx-auto tw-w-auto tw-h-64 tw-text-blue-500" alt="SPORT PLANET Logo">
                        <h3 class="tw-font-semibold tw-text-xl tw-text-gray-900 dark:tw-text-white tw-mt-3.5">ZEN FIT</h3>
                    </a> -->
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
            .get('/api/activities')
            .then(({ data }) => {
                this.data = data;
            })
    },
}
</script>


<style scoped>

</style>
