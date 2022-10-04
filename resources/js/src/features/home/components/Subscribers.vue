<template>
    <section id="abonnes" class="tw-bg-gray-50 tw-pt-8 dark:tw-bg-gray-800">
        <div class="tw-py-8 tw-px-4 tw-mx-auto tw-max-w-screen-xl lg:tw-py-16">
            <h2 class="tw-mb-6 tw-text-3xl tw-font-extrabold tw-tracking-tight tw-leading-tight tw-text-gray-900 lg:tw-text-center dark:tw-text-white md:tw-text-4xl">S'Abonnes</h2>
            <!--<p class="tw-mb-10 tw-text-lg tw-font-normal tw-text-gray-500 dark:tw-text-gray-400 lg:tw-text-center lg:tw-text-xl lg:tw-px-64 lg:tw-mb-16">You can now also get started ACTIVITÉS.</p>-->
            <form class="tw-w-full" @submit.prevent="submit">
                <div class="tw-flex tw-flex-wrap tw-mx-3 tw-mb-6 tw-mt-16">
                    <div class="tw-w-full md:tw-w-1/2 tw-pb-4 tw-px-3">
                        <label class="tw-block tw-uppercase tw-tracking-wide tw-text-gray-700 tw-text-xs tw-font-bold tw-mb-2" for="grid-last-name">
                            Nom
                        </label>
                        <input v-model="first_name" class="tw-appearance-none tw-block tw-w-full tw-bg-gray-200 tw-text-gray-700 tw-border tw-border-gray-200 tw-rounded tw-py-3 tw-px-4 tw-leading-tight focus:tw-outline-none focus:tw-bg-white focus:tw-border-gray-500" id="first-name" type="text" placeholder="Nom" name="nom" required>
                    </div>
                    <div class="tw-w-full md:tw-w-1/2 tw-pb-4 tw-px-3">
                        <label class="tw-block tw-uppercase tw-tracking-wide tw-text-gray-700 tw-text-xs tw-font-bold tw-mb-2" for="grid-last-name">
                            Prenom
                        </label>
                        <input v-model="last_name" class="tw-appearance-none tw-block tw-w-full tw-bg-gray-200 tw-text-gray-700 tw-border tw-border-gray-200 tw-rounded tw-py-3 tw-px-4 tw-leading-tight focus:tw-outline-none focus:tw-bg-white focus:tw-border-gray-500" id="last-name" type="text" placeholder="Prenom" name="prenom" required>
                    </div>
                    <div class="tw-w-full md:tw-w-1/2 tw-pb-4 tw-px-3">
                        <label class="tw-block tw-uppercase tw-tracking-wide tw-text-gray-700 tw-text-xs tw-font-bold tw-mb-2" for="grid-last-name">
                            Email
                        </label>
                        <input v-model="email" class="tw-appearance-none tw-block tw-w-full tw-bg-gray-200 tw-text-gray-700 tw-border tw-border-gray-200 tw-rounded tw-py-3 tw-px-4 tw-leading-tight focus:tw-outline-none focus:tw-bg-white focus:tw-border-gray-500" id="email" type="text" placeholder="Email" name="email" required>
                    </div>
                    <div class="tw-w-full md:tw-w-1/2 tw-pb-4 tw-px-3">
                        <label class="tw-block tw-uppercase tw-tracking-wide tw-text-gray-700 tw-text-xs tw-font-bold tw-mb-2" for="grid-last-name">
                            Telephone
                        </label>
                        <input v-model="telephone" class="tw-appearance-none tw-block tw-w-full tw-bg-gray-200 tw-text-gray-700 tw-border tw-border-gray-200 tw-rounded tw-py-3 tw-px-4 tw-leading-tight focus:tw-outline-none focus:tw-bg-white focus:tw-border-gray-500" id="telephone" type="text" placeholder="Telephone" name="telephone" required>
                    </div>
                    <div class="tw-w-full md:tw-w-1/2 tw-pb-4 tw-px-3">
                        <label class="tw-block tw-uppercase tw-tracking-wide tw-text-gray-700 tw-text-xs tw-font-bold tw-mb-2" for="grid-state">
                            Ville
                        </label>
                        <div class="tw-relative">
                            <select v-model="ville" class="tw-block tw-appearance-none tw-w-full tw-bg-gray-200 tw-border tw-border-gray-200 tw-text-gray-700 tw-py-3 tw-px-4 tw-pr-8 tw-rounded tw-leading-tight focus:tw-outline-none focus:tw-bg-white focus:tw-border-gray-500" id="citie" name="ville" required>
                                <option value="" disabled selected>Selectionnez votre Ville</option>
                                <option v-for="item in this.sites" :key="item.id">{{ item.name }}</option>
                            </select>
                            <div class="tw-pointer-events-none tw-absolute tw-inset-y-0 tw-right-0 tw-flex tw-items-center tw-px-2 tw-text-gray-700">
                                <svg class="tw-fill-current tw-h-4 tw-w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
                            </div>
                        </div>
                    </div>
                    <div class="tw-w-full md:tw-w-1/2 tw-pb-4 tw-px-3">
                        <label class="tw-block tw-uppercase tw-tracking-wide tw-text-gray-700 tw-text-xs tw-font-bold tw-mb-2" for="grid-state">
                            Activité
                        </label>
                        <div class="tw-relative">
                            <select v-model="activite" class="tw-block tw-appearance-none tw-w-full tw-bg-gray-200 tw-border tw-border-gray-200 tw-text-gray-700 tw-py-3 tw-px-4 tw-pr-8 tw-rounded tw-leading-tight focus:tw-outline-none focus:tw-bg-white focus:tw-border-gray-500" id="Activitie" name="activite" required>
                                <option value="" disabled selected>Selectionnez votre activité</option>
                                <option v-for="item in this.activities" :key="item.id">{{ item.name }}</option>
                            </select>
                            <div class="tw-pointer-events-none tw-absolute tw-inset-y-0 tw-right-0 tw-flex tw-items-center tw-px-2 tw-text-gray-700">
                                <svg class="tw-fill-current tw-h-4 tw-w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
                            </div>
                        </div>
                    </div>
                    <div class="tw-w-full  tw-pb-4 tw-px-3" v-show="selectedActivity.plans.length">
                        <label class="tw-block tw-uppercase tw-tracking-wide tw-text-gray-700 tw-text-xs tw-font-bold tw-mb-2" for="grid-state">
                            Type D'Abonnement
                        </label>
                        <div class="tw-relative">
                            <ul class="tw-grid tw-gap-6 tw-w-full md:tw-grid-cols-4">
                                <li v-for="plan in selectedActivity.plans" :key="plan.id">
                                    <input v-model="subtype" type="radio" :id="plan.name" name="type-abonnement" :value="plan.name" class="tw-hidden tw-peer" required>
                                    <label :for="plan.name" class="tw-inline-flex tw-justify-between tw-items-center tw-p-5 tw-w-full tw-text-gray-500 tw-bg-white tw-rounded-lg tw-border tw-border-gray-200 tw-cursor-pointer dark:hover:tw-text-gray-300 dark:tw-border-gray-700 dark:peer-checked:tw-text-blue-500 peer-checked:tw-border-blue-600 peer-checked:tw-text-blue-600 hover:tw-text-gray-600 hover:tw-bg-gray-100 dark:tw-text-gray-400 dark:tw-bg-gray-800 dark:hover:tw-bg-gray-700">                           
                                        <div class="tw-block">
                                            <div class="tw-w-full tw-text-lg tw-font-semibold">{{ plan.name }}</div>
                                            <div class="tw-w-full">{{ plan.pivot.new_price }} $ au lieu de <span class="tw-line-through tw-text-red-600">{{ plan.pivot.old_price }} $</span></div>
                                        </div>
                                        <svg aria-hidden="true" class="tw-ml-3 tw-w-6 tw-h-6" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="md:tw-flex md:tw-items-center">
                    <div class="md:tw-w-5/6"></div>
                    <div class="md:tw-w-1/6">
                        <button class="tw-shadow tw-bg-purple-500 hover:tw-bg-purple-400 focus:tw-shadow-outline focus:tw-outline-none tw-text-white tw-font-bold tw-py-2 tw-px-4 tw-rounded" type="submit">
                            S'Abonnes
                        </button>
                        <button class="tw-flex-shrink-0 tw-border-transparent tw-border-4 tw-text-teal-500 hover:tw-text-teal-800 tw-text-sm tw-py-1 tw-px-2 tw-rounded" type="reset">
                            Annuler
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</template>

<script>
import axios from 'axios'
export default {
    data() {
        return {
            first_name:"",
            last_name:"",
            email: "",
            telephone:"",
            ville:"",
            activite:"",
            subtype:"",
            sites: [],
            activities: []
        }
    },
    mounted () {
        axios
            .get('/api/sites')
            .then(({ data: { data } }) => {
                this.sites = data;
            }),

        axios
        .get('/api/activities')
        .then(({ data }) => {
            this.activities = data;
        })
    },
    computed: {
        selectedActivity() {
            return this.activities.some(activity => activity.name === this.activite) 
                ? this.activities.find(activity => activity.name === this.activite)
                : { plans: [] }
        }
    },
    methods: {
        async submit() {
            await axios.post('/api/register2',{
                first_name:this.first_name,
                last_name:this.last_name,
                email:this.email,
                telephone:this.telephone,
                ville:this.ville,
                activite:this.activite,
                subtype:this.subtype
            })
            .then((response) => this.$router.push("/"))
            .catch(({response})=>console.log(response.data));
        },
        async reset() {
            location.reload();
        }
    }
}
</script>

<style scoped>

</style>
