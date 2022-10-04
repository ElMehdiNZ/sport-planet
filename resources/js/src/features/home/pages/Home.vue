<template>
    <main class="tw-grow">
        <about-us />
        <activities />
        <our-sites />
        <subscribers />
    </main>
</template>

<script>
import AboutUs from "../components/AboutUs";
import Activities from "../components/Activities";
import OurSites from "../components/OurSites";
import Subscribers from "../components/Subscribers";
export default {
    name: "Home",
    components: {
        AboutUs,
        Activities,
        OurSites,
        Subscribers
    },
}
</script>

<style scoped>

</style>
