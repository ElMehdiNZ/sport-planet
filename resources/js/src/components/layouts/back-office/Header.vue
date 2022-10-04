<template>
    <header>
        <nav aria-label="menu nav" class="tw-bg-gray-800 tw-pt-2 md:tw-pt-1 tw-pb-1 tw-px-1 tw-mt-0 tw-h-auto tw-fixed tw-w-full tw-z-20 tw-top-0">

            <div class="tw-flex tw-flex-wrap tw-items-center">
                <div class="tw-flex tw-flex-shrink md:tw-w-1/3 tw-justify-center md:tw-justify-start tw-text-white">
                    <a href="#" aria-label="Home">
                        <span class="tw-text-xl tw-pl-2"><i class="tw-em tw-em-grinning"></i></span>
                    </a>
                </div>

                <div class="tw-flex tw-flex-1 md:tw-w-1/3 tw-justify-center md:tw-justify-start tw-text-white tw-px-2">
                    <span class="tw-relative tw-w-full">
                        <input aria-label="search" type="search" id="search" placeholder="Search" class="tw-w-full tw-bg-gray-900 tw-text-white tw-transition tw-border tw-border-transparent focus:tw-outline-none focus:tw-border-gray-400 tw-rounded tw-py-3 tw-px-2 tw-pl-10 tw-appearance-none tw-leading-normal">
                        <div class="tw-absolute tw-search-icon" style="top: 1rem; left: .8rem;">
                            <svg class="tw-fill-current tw-pointer-events-none tw-text-white tw-w-4 tw-h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M12.9 14.32a8 8 0 1 1 1.41-1.41l5.35 5.33-1.42 1.42-5.33-5.34zM8 14A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"></path>
                            </svg>
                        </div>
                    </span>
                </div>

                <div class="tw-flex tw-w-full tw-pt-2 tw-content-center tw-justify-between md:tw-w-1/3 md:tw-justify-end">
                    <ul class="tw-list-reset tw-flex tw-justify-between tw-flex-1 md:tw-flex-none tw-items-center">
                        <li class="tw-flex-1 md:tw-flex-none md:tw-mr-3">
                            <a class="tw-inline-block tw-py-2 tw-px-4 tw-text-white tw-no-underline" href="#" @click="logout">Logout</a>
                        </li>
                        <!--<li class="tw-flex-1 md:tw-flex-none md:tw-mr-3">
                            <a class="tw-inline-block tw-text-gray-400 tw-no-underline hover:tw-text-gray-200 hover:tw-text-underline tw-py-2 tw-px-4" href="#">link</a>
                        </li>
                        <li class="tw-flex-1 md:tw-flex-none md:tw-mr-3">
                            <div class="tw-relative tw-inline-block">
                                <button @click="toggleDD('myDropdown')" class="tw-drop-button tw-text-white tw-py-2 tw-px-2"> <span class="tw-pr-2"><i class="tw-em tw-em-robot_face"></i></span> Hi, User <svg class="tw-h-3 tw-fill-current tw-inline" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                    <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg></button>
                                <div id="myDropdown" class="tw-dropdownlist tw-absolute tw-bg-gray-800 tw-text-white tw-right-0 tw-mt-3 tw-p-3 tw-overflow-auto tw-z-30 tw-invisible">
                                    <input type="text" class="tw-drop-search tw-p-2 tw-text-gray-600" placeholder="Search.." id="myInput" onkeyup="filterDD('myDropdown','myInput')">
                                    <a href="#" class="tw-p-2 hover:tw-bg-gray-800 tw-text-white tw-text-sm tw-no-underline hover:tw-no-underline tw-block"><i class="tw-fa tw-fa-user tw-fa-fw"></i> Profile</a>
                                    <a href="#" class="tw-p-2 hover:tw-bg-gray-800 tw-text-white tw-text-sm tw-no-underline hover:tw-no-underline tw-block"><i class="tw-fa tw-fa-cog tw-fa-fw"></i> Settings</a>
                                    <div class="tw-border tw-border-gray-800"></div>
                                    <a href="#" class="tw-p-2 hover:tw-bg-gray-800 tw-text-white tw-text-sm tw-no-underline hover:tw-no-underline tw-block"><i class="tw-fas tw-fa-sign-out-alt tw-fa-fw"></i> Log Out</a>
                                </div>
                            </div>
                        </li>-->
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</template>

<script>
import axios from 'axios'
export default {
    methods: {
        async logout() {
            await axios.post('/api/logout');
            localStorage.removeItem('auth_token');
            this.$router.push('/auth/back-office/login');
        }
    },
}
</script>

<style scoped>

</style>
