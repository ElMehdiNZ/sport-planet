<template>
    <div class="tw-overflow-hidden tw-h-[100vh]" >
        <Header />
        <main class="">
            <div class="tw-overflow-hidden tw-flex tw-flex-col md:tw-flex-row">
                <nav-bar />
                <section class="tw-w-full">
                    <div class=" tw-flex-1 tw-bg-gray-100 tw-mt-12 md:tw-mt-2 tw-pb-24 md:tw-pb-5 md:tw-pt-9">

                        <div class="tw-bg-gray-800 tw-pt-3">
                            <div class="tw-rounded-tl-3xl tw-bg-gradient-to-r tw-from-blue-900 tw-to-gray-800 tw-p-4 tw-shadow tw-text-2xl tw-text-white">
                                <h1 class="tw-font-bold tw-pl-2">{{ breadcrumb }}</h1>
                            </div>
                        </div>
                        <div class="tw-overflow-y-scroll tw-h-[670px] ">
                            <router-view />
                        </div>
                    </div>
                </section>
            </div>
        </main>
    </div>
</template>

<script>
import Header from "../components/layouts/back-office/Header";
import NavBar from "../components/layouts/back-office/NavBar";
export default {
    name: "BackOfficeContainer",
    components: {
        Header,
        NavBar
    },
    computed: {
        breadcrumb() {
            return this.$route.meta.breadcrumb.name;
        }
    }
}
</script>

<style scoped>

</style>

