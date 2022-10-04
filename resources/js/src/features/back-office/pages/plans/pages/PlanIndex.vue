<template>
    <div class="tw-container tw-max-w-7xl tw-mx-auto tw-mt-8">
        <div class="tw-mb-4">
            <h1 class="tw-font-serif tw-text-3xl tw-font-bold tw-underline tw-decoration-gray-400"> Plas Index</h1>
            <div class="tw-flex tw-justify-end">
                <button class="tw-px-4 tw-py-2 tw-rounded-md tw-bg-sky-500 tw-text-sky-100 hover:tw-bg-sky-600" @click="$router.push('/back-office/plans-add')">Add Plas</button>
            </div>
        </div>
        <div class="tw-flex tw-flex-col">
            <div class="tw-overflow-x-auto sm:tw--mx-6 sm:tw-px-6 lg:tw--mx-8 lg:tw-px-8">
                <div class="tw-inline-block tw-min-w-full tw-overflow-hidden tw-align-middle tw-border-b tw-border-gray-200 tw-shadow sm:tw-rounded-lg">
                    <table class="tw-min-w-full">
                        <thead>
                            <tr>
                                <th class="tw-px-6 tw-py-3 tw-text-xs tw-font-medium tw-leading-4 tw-tracking-wider tw-text-left tw-text-gray-500 tw-uppercase tw-border-b tw-border-gray-200 tw-bg-gray-50">ID</th>
                                <th class="tw-px-6 tw-py-3 tw-text-xs tw-font-medium tw-leading-4 tw-tracking-wider tw-text-left tw-text-gray-500 tw-uppercase tw-border-b tw-border-gray-200 tw-bg-gray-50">Nom</th>
                                <th class="tw-px-6 tw-py-3 tw-text-xs tw-font-medium tw-leading-4 tw-tracking-wider tw-text-left tw-text-gray-500 tw-uppercase tw-border-b tw-border-gray-200 tw-bg-gray-50">Duration (month)</th>
                                <th class="tw-px-6 tw-py-3 tw-text-xs tw-font-medium tw-leading-4 tw-tracking-wider tw-text-left tw-text-gray-500 tw-uppercase tw-border-b tw-border-gray-200 tw-bg-gray-50">activities</th>
                                <th class="tw-px-6 tw-py-3 tw-text-sm tw-text-left tw-text-gray-500 tw-border-b tw-border-gray-200 tw-bg-gray-50" colspan="3">Action</th>
                            </tr>
                        </thead>
                        <tbody class="tw-bg-white">
                            <tr v-for="item in data" :key="item.id">
                                <td class="tw-px-6 tw-py-4 tw-text-sm tw-leading-5 tw-text-gray-500 tw-whitespace-no-wrap tw-border-b tw-border-gray-200">
                                    <span>{{ item.id }}</span>
                                </td>

                                <td class="tw-px-6 tw-py-4 tw-text-sm tw-leading-5 tw-text-gray-500 tw-whitespace-no-wrap tw-border-b tw-border-gray-200">
                                    <span>{{ item.name }}</span>
                                </td>

                                <td class="tw-px-6 tw-py-4 tw-text-sm tw-leading-5 tw-text-gray-500 tw-whitespace-no-wrap tw-border-b tw-border-gray-200">
                                    <span>{{ item.duration }}</span>
                                </td>

                                <td class="tw-px-6 tw-py-4 tw-text-sm tw-leading-5 tw-text-gray-500 tw-whitespace-no-wrap tw-border-b tw-border-gray-200">
                                    <span>{{ item.duration }}</span>
                                </td>

                                <td class="tw-text-sm tw-font-medium tw-leading-5 tw-text-center tw-whitespace-no-wrap tw-border-b tw-border-gray-200 ">
                                    <a href="#"  v-on:click="editPlan(item.id)" class="tw-text-indigo-600 hover:tw-text-indigo-900">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="tw-w-6 tw-h-6" fill="none" viewBox="0 0 24 24"
                                            stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z" />
                                        </svg>
                                    </a>
                                </td>

                                <td class="tw-text-sm tw-font-medium tw-leading-5 tw-text-center tw-whitespace-no-wrap tw-border-b tw-border-gray-200 ">
                                    <a href="#" class="tw-text-gray-600 hover:tw-text-gray-900">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="tw-w-6 tw-h-6" fill="none" viewBox="0 0 24 24"
                                            stroke="currentColor">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                            d="M2.458 12C3.732 7.943 7.523 5 12 5c4.478 0 8.268 2.943 9.542 7-1.274 4.057-5.064 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                                        </svg>
                                    </a>
                                </td>

                                <td class="tw-text-sm tw-font-medium tw-leading-5 tw-whitespace-no-wrap tw-border-b tw-border-gray-200 ">
                                    <a href="#" v-on:click="deletePlan(item.id)">
                                        <svg xmlns="http://www.w3.org/2000/svg" class="tw-w-6 tw-h-6 tw-text-red-600 hover:tw-text-red-800"
                                        fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                                        </svg>
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <VueTailwindPagination :current="currentPage" :total="total"  :per-page="perPage" @page-changed="onPageClick($event)"/>
            </div>
        </div>
    </div>
</template>

<script>
import axios from 'axios'
import "@ocrv/vue-tailwind-pagination/styles";
import VueTailwindPagination from "@ocrv/vue-tailwind-pagination";
export default {
    components: {
        VueTailwindPagination,
    },
    data() {
        return {
            currentPage: 1,
            perPage: 0,
            total: 0,
            data: [],
        }
    },
    methods: {
        onPageClick(event) {
            this.currentPage = event;
            this.getData(this.currentPage);
        },
        getData(pageNumber) {
            axios
                .get(`/api/getplan?page=${pageNumber}`, { params:{ withPagination:true }})
                .then(({ data: { current_page, per_page, total, data } }) => {
                    this.currentPage = current_page;
                    this.perPage = per_page;
                    this.total = total;
                    this.data = data;
                })
        },
        deletePlan(id){
            console.log(id);
            axios
                .delete(`/api/delete-plan/`+id)
                .then(() => {
                    this.getData(this.currentPage);
                })
        },
        editPlan(id){
            this.$router.push(`plans-edit/${id}`)
        }
    },
    mounted(){
        this.getData(this.currentPage);
    }
}
</script>

<style scoped>

</style>
