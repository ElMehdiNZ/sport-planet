<template>
        <nav aria-label="alternative nav">
            <div class="tw-bg-gray-800 tw-shadow-xl tw-h-20 tw-fixed tw-bottom-0 tw-mt-12 md:tw-relative md:tw-h-screen tw-z-10 tw-w-full md:tw-w-48 tw-content-center">
                <div class="md:tw-mt-12 md:tw-w-48 md:tw-fixed md:tw-left-0 md:tw-top-0 tw-content-center md:tw-content-start tw-text-left tw-justify-between">
                    <ul class="tw-list-reset tw-flex tw-flex-row md:tw-flex-col tw-pt-3 md:tw-py-3 tw-px-1 md:tw-px-2 tw-text-center md:tw-text-left">
                        <li class="tw-mr-3 tw-flex-1" v-for="item in menu" :key="item.id" @click="goToRoute(item)">
                            <a href="#" class="tw-block tw-py-1 md:tw-py-3 tw-pl-1 tw-align-middle tw-text-white tw-no-underline hover:tw-text-white tw-border-b-2 tw-border-gray-800 hover:tw-border-pink-500">
                                <i class="tw-fas tw-fa-tasks tw-pr-0 md:tw-pr-3"></i><span class="tw-pb-1 md:tw-pb-0 tw-text-xs md:tw-text-base tw-text-gray-400 md:tw-text-gray-200 tw-block md:tw-inline-block">{{ item.title }}</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
</template>

<script>
export default {
    name: "NavBar",
    data: () => ({
        menu: [
            {
                id: 1,
                title: 'Dashboard',
                route: 'BackOffice.Dashboard.Index'
            },
            {
                id: 2,
                title: 'Gestion Sites',
                route: 'BackOffice.Site.Index'
            },
            {
                id: 3,
                title: 'Gestion Plans',
                route: 'BackOffice.Plans.Index'
            },
            {
                id: 4,
                title: 'Gestion Activités',
                route: 'BackOffice.Activity.Index'
            },
            {
                id: 5,
                title: 'Gestion Réservation',
                route: 'BackOffice.Reservation.Index'
            }
        ]
    }),
    methods: {
        goToRoute(item) {
            this.$router.push({ name: item.route });
        }
    }
}
</script>

<style scoped>

</style>
