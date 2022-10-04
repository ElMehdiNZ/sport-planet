<template>
    <header class="tw-sticky tw-top-0 z-40 tw-flex-none tw-mx-auto tw-w-full tw-bg-white tw-border-b tw-border-gray-200 dark:tw-border-gray-600 dark:tw-bg-gray-800">
        <div class="tw-flex tw-justify-between tw-items-center tw-py-5 tw-px-3 tw-mx-auto tw-w-full tw-max-w-8xl lg:tw-px-4">
            <div class="tw-flex tw-items-center">
                <button id="toggleSidebarMobile" aria-expanded="true" aria-controls="sidebar" class="tw-p-2 tw-mr-2 tw-text-gray-600 tw-rounded tw-cursor-pointer lg:tw-hidden hover:tw-text-gray-900 hover:tw-bg-gray-100 focus:tw-bg-gray-100 dark:focus:tw-bg-gray-700 focus:tw-ring-2 focus:tw-ring-gray-100 dark:focus:tw-ring-gray-700 dark:tw-text-gray-400 dark:hover:tw-bg-gray-700 dark:hover:tw-text-white">
                    <svg id="toggleSidebarMobileHamburger" class="tw-w-6 tw-h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h6a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
                    <svg id="toggleSidebarMobileClose" class="tw-hidden tw-w-6 tw-h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                </button>
                <div class="tw-flex tw-justify-between tw-items-center">
                    <a href="/" class="tw-flex">
                        <img src="/images/logo.png" class="tw-mr-3 tw-h-8" alt="SPORT PLANET Logo">
                        <span class="tw-self-center tw-text-2xl tw-font-semibold tw-whitespace-nowrap dark:tw-text-white"><p>Sport Planet</p></span>
                    </a>
                </div>
            </div>

            <div class="tw-flex tw-items-center">
                <ul id="flowbiteMenu" class="tw-hidden tw-flex-col tw-pt-6 lg:tw-flex-row lg:tw-self-center lg:tw-py-0 lg:tw-flex">
                    <li class="tw-mb-3 lg:tw-px-2 xl:tw-px-3 lg:tw-mb-0">
                        <a href="#Qui-Sommes-Nous" class="tw-text-sm tw-font-medium tw-text-gray-900 hover:tw-text-blue-600 dark:tw-text-gray-300 dark:hover:tw-text-blue-500">Qui Sommes-Nous</a>
                    </li>
                    <li class="tw-mb-3 lg:tw-px-2 xl:tw-px-3 lg:tw-mb-0">
                        <a href="#activites" class="tw-text-sm tw-font-medium tw-text-gray-900 hover:tw-text-blue-600 dark:tw-text-gray-300 dark:hover:tw-text-blue-500">Activités</a>
                    </li>
                    <li class="tw-mb-3 lg:tw-px-2 xl:tw-px-3 lg:tw-mb-0">
                        <a href="#nos-sites" class="tw-text-sm tw-font-medium tw-text-gray-900 hover:tw-text-blue-600 dark:tw-text-gray-300 dark:hover:tw-text-blue-500">Nos Sites</a>
                    </li>
                </ul>
                <a href="#abonnes" class="md:tw-hidden tw-inline-flex tw-items-center tw-text-white tw-bg-blue-700 hover:tw-bg-blue-800 focus:tw-ring-4 focus:tw-ring-blue-300 tw-font-medium tw-rounded-lg tw-text-sm tw-px-5 tw-py-2.5 tw-text-center tw-ml-3">S'abonnes</a>
                <a href="#abonnes" class="tw-hidden md:tw-inline-flex tw-items-center tw-text-white tw-bg-blue-700 hover:tw-bg-blue-800 focus:tw-ring-4 focus:tw-ring-blue-300 tw-font-medium tw-rounded-lg tw-text-sm tw-px-5 tw-py-2.5 tw-text-center tw-ml-3">S'abonnes</a>
            </div>
        </div>
    </header>
</template>

<script>
export default {
    name: "Header"
}
</script>

<style scoped>

</style>
