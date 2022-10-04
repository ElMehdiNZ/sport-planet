<template>
    <section class="tw-h-screen  tw-bg-cyan-200">
        <div class="tw-container tw-px-6 tw-py-12 tw-h-full">
            <div class="tw-flex tw-justify-center tw-items-center tw-flex-wrap tw-h-full tw-g-6 tw-text-gray-800">
                <div class="md:tw-w-8/12 lg:tw-w-6/12 tw-mb-12 md:tw-mb-0">
                    <img src="/images/image-3.png" class="tw-w-full" alt="Phone image"/>
                </div>
                <div class="md:tw-w-8/12 lg:tw-w-5/12 lg:tw-ml-20">
                    <form @submit.prevent="submit">
                        <!-- Email input -->
                        <div class="tw-mb-6">
                            <input v-model="email" type="text" class="tw-form-control tw-block tw-w-full tw-px-4 tw-py-2 tw-text-xl tw-font-normal tw-text-gray-700 tw-bg-white tw-bg-clip-padding tw-border tw-border-solid tw-border-gray-300 tw-rounded tw-transition tw-ease-in-out tw-m-0 focus:tw-text-gray-700 focus:tw-bg-white focus:tw-border-blue-600 focus:tw-outline-none" placeholder="Email address"/>
                        </div>
                        <!-- Password input -->
                        <div class="tw-mb-6">
                            <input v-model="password" type="password" class="tw-form-control tw-block tw-w-full tw-px-4 tw-py-2 tw-text-xl tw-font-normal tw-text-gray-700 tw-bg-white tw-bg-clip-padding tw-border tw-border-solid tw-border-gray-300 tw-rounded tw-transition tw-ease-in-out tw-m-0 focus:tw-text-gray-700 focus:tw-bg-white focus:tw-border-blue-600 focus:tw-outline-none" placeholder="Password"/>
                        </div>
                        <div class="tw-flex tw-justify-between tw-items-center tw-mb-6">
                            <div class="tw-form-group tw-form-check">
                                <input type="checkbox" class="tw-form-check-input tw-appearance-none tw-h-4 tw-w-4 tw-border tw-border-gray-300 tw-rounded-sm tw-bg-white checked:tw-bg-blue-600 checked:tw-border-blue-600 focus:tw-outline-none tw-transition tw-duration-200 tw-mt-1 tw-align-top tw-bg-no-repeat tw-bg-center tw-bg-contain tw-float-left tw-mr-2 tw-cursor-pointer" id="exampleCheck3" checked/>
                                <label class="tw-form-check-label tw-inline-block tw-text-gray-800" for="exampleCheck2">Remember me</label>
                            </div>
                            <a href="#!" class="tw-text-blue-600 hover:tw-text-blue-700 focus:tw-text-blue-700 active:tw-text-blue-800 tw-duration-200 tw-transition tw-ease-in-out">Forgot password?</a>
                        </div>
                        <!-- Submit button -->
                        <button type="submit" class="tw-inline-block tw-px-7 tw-py-3 tw-bg-blue-600 tw-text-white tw-font-medium tw-text-sm tw-leading-snug tw-uppercase tw-rounded tw-shadow-md hover:tw-bg-blue-700 hover:tw-shadow-lg focus:tw-bg-blue-700 focus:tw-shadow-lg focus:tw-outline-none focus:tw-ring-0 active:tw-bg-blue-800 active:tw-shadow-lg tw-transition tw-duration-150 tw-ease-in-out tw-w-full" data-mdb-ripple="true" data-mdb-ripple-color="light">
                            Sign in
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import axios from 'axios'
export default {
    data() {
        return {
            email: "",
            password: "",
        }
    },
    methods: {
        async submit() {
            const response = await axios.post('/api/login',{
                email:this.email,
                password:this.password
            });
            localStorage.setItem('auth_token',response.data.token);
            window.isSignedIn=true;
            this.$router.push('/back-office/dashboard');
        }
    }
}
</script>

<style scoped>

</style>
