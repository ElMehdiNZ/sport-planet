<template>
    <div>
        <Header />
        <router-view />
        <Footer />
    </div>
</template>

<script>
import Header from "../components/layouts/Header";
import Footer from "../components/layouts/Footer";
export default {
    name: "PublicContainer",
    components: {Footer, Header}
}
</script>

<style scoped>

</style>
