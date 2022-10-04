<template>
  <div
    class="
      tw-flex tw-flex-col tw-items-center tw-min-h-screen tw-pt-6 tw-bg-gray-100
      sm:tw-justify-center sm:tw-pt-0
    "
  >
    <div
      class="
        tw-w-full tw-px-16 tw-py-20 tw-mt-6 tw-bg-white tw-rounded-lg
        lg:tw-max-w-4xl
      "
    >
      <div class="tw-mb-4">
        <h1
          class="
            tw-font-serif
            tw-text-3xl
            tw-font-bold
            tw-underline
            tw-decoration-gray-400
          "
        >
          Edit Activity
        </h1>
      </div>

      <div
        class="
          tw-w-full
          tw-px-6
          tw-py-4
          tw-bg-white
          tw-rounded
          tw-shadow-md
          tw-ring-1
          tw-ring-gray-900/10
        "
      >
        <form method="POST" action="#">
          <!-- Title -->
          <div>
            <label
              class="tw-block tw-text-sm tw-font-bold tw-text-gray-700"
              for="title"
            >
              Name
            </label>

            <input
              class="
                tw-block
                tw-w-full
                tw-mt-1
                tw-border-gray-300
                tw-rounded-md
                tw-shadow-sm
                placeholder:tw-text-gray-400 placeholder:tw-text-right
                focus:tw-border-indigo-300
                focus:tw-ring
                focus:tw-ring-indigo-200
                focus:tw-ring-opacity-50
              "
              type="text"
              v-model="activity.name"
            />
          </div>

          <div>
            <label
              class="tw-block tw-text-sm tw-font-bold tw-text-gray-700"
              for="title"
            >
              Description
            </label>

            <input
              class="
                tw-block
                tw-w-full
                tw-mt-1
                tw-border-gray-300
                tw-rounded-md
                tw-shadow-sm
                placeholder:tw-text-gray-400 placeholder:tw-text-right
                focus:tw-border-indigo-300
                focus:tw-ring
                focus:tw-ring-indigo-200
                focus:tw-ring-opacity-50
              "
              type="text"
              v-model="activity.description"
            />
          </div>


<div class="tw-mt-4 tw-flex tw-items-center tw-mb-4">
            <input
              id="default-checkbox"
              type="checkbox"
              v-model="canShowPlansForm"
              class="
                tw-w-4
                tw-h-4
                tw-text-blue-600
                tw-bg-gray-100
                tw-rounded
                tw-border-gray-300
                focus:tw-ring-blue-500
                dark:tw-focus:ring-blue-600 dark:tw-ring-offset-gray-800
                focus:tw-ring-2
                dark:tw-bg-gray-700 dark:tw-border-gray-600
              "
            />
            <label
              for="default-checkbox"
              class="
                tw-ml-2 tw-text-sm tw-font-medium tw-text-gray-900
                dark:tw-text-gray-300
              "
              >Avec Plan</label
            >
          </div>
          <div v-show="canShowPlansForm" class="tw-w-full tw-pb-4 tw-px-3">
            <div class="tw-relative">
              <ul class="tw-grid tw-gap-6 tw-w-full md:tw-grid-cols-4">
                <li>
                  <div class="tw-mt-4">
                    <label
                      class="tw-block tw-text-sm tw-font-bold tw-text-gray-700"
                      for="plan_name"
                    >
                      Plan Name
                    </label>
                    <div class="tw-relative">
                      <select
                        v-model="selectedPlanId"
                        class="
                          tw-block
                          tw-appearance-none
                          tw-w-full
                          tw-bg-gray-200
                          tw-border
                          tw-border-gray-200
                          tw-text-gray-700
                          tw-py-3
                          tw-px-4
                          tw-pr-8
                          tw-rounded
                          tw-leading-tight
                          focus:tw-outline-none
                          focus:tw-bg-white
                          focus:tw-border-gray-500
                        "
                        id="Activitie"
                        name="activite"
                        required
                      >
                        <option
                          v-for="plan in plans"
                          :key="plan.id"
                          :value="plan.id"
                        >
                          {{ plan.name }}
                        </option>
                      </select>
                      <div
                        class="
                          tw-pointer-events-none
                          tw-absolute
                          tw-inset-y-0
                          tw-right-0
                          tw-flex
                          tw-items-center
                          tw-px-2
                          tw-text-gray-700
                        "
                      >
                        <svg
                          class="tw-fill-current tw-h-4 tw-w-4"
                          xmlns="http://www.w3.org/2000/svg"
                          viewBox="0 0 20 20"
                        >
                          <path
                            d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"
                          />
                        </svg>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="tw-mt-4">
                    <label
                      class="tw-block tw-text-sm tw-font-bold tw-text-gray-700"
                      for="old_price"
                    >
                      Old Price
                    </label>
                    <input
                      class="
                        tw-appearance-none
                        tw-block
                        tw-w-full
                        tw-bg-gray-200
                        tw-text-gray-700
                        tw-border
                        tw-border-gray-200
                        tw-rounded
                        tw-py-3
                        tw-px-4
                        tw-leading-tight
                        focus:tw-outline-none
                        focus:tw-bg-white
                        focus:tw-border-gray-500
                      "
                      type="text"
                      placeholder="Old Price"
                      name="old_price"
                      v-model="oldPrice"
                      required
                    />
                  </div>
                </li>
                <li>
                  <div class="tw-mt-4">
                    <label
                      class="tw-block tw-text-sm tw-font-bold tw-text-gray-700"
                      for="new_price"
                    >
                      New Price
                    </label>
                    <input
                      class="
                        tw-appearance-none
                        tw-block
                        tw-w-full
                        tw-bg-gray-200
                        tw-text-gray-700
                        tw-border
                        tw-border-gray-200
                        tw-rounded
                        tw-py-3
                        tw-px-4
                        tw-leading-tight
                        focus:tw-outline-none
                        focus:tw-bg-white
                        focus:tw-border-gray-500
                      "
                      type="text"
                      placeholder="New Price"
                      name="new_price"
                      v-model="newPrice"
                      required
                    />
                  </div>
                </li>
                <li>
                  <div class="tw-mt-4">
                    <label
                      class="tw-block tw-text-sm tw-font-bold tw-text-gray-700"
                    >
                      <br />
                    </label>
                    <button
                      class="
                        tw-px-6
                        tw-py-2
                        tw-text-sm
                        tw-font-semibold
                        tw-text-gray-100
                        tw-bg-gray-400
                        tw-rounded-md
                        tw-shadow-md
                        hover:tw-bg-gray-600
                        focus:tw-outline-none
                        focus:tw-border-gray-900
                        focus:tw-ring
                        tw-ring-gray-300
                      "
                      @click.prevent="linkPlanHandler"
                    >
                      Add
                    </button>
                  </div>
                </li>
              </ul>
            </div>
          </div>

          <div v-show="canShowPlansForm" class="tw-overflow-x-auto tw-relative">
            <table
              class="
                tw-w-full tw-text-sm tw-text-left tw-text-gray-500
                dark:tw-text-gray-400
              "
            >
              <thead
                class="
                  tw-text-xs tw-text-gray-700 tw-uppercase tw-bg-gray-50
                  dark:tw-bg-gray-700 dark:tw-text-gray-400
                "
              >
                <tr>
                  <th scope="col" class="tw-py-3 tw-px-6">Plan name</th>
                  <th scope="col" class="tw-py-3 tw-px-6">Old Price</th>
                  <th scope="col" class="tw-py-3 tw-px-6">New Price</th>
                  <th scope="col" class="tw-py-3 tw-px-6"></th>
                </tr>
              </thead>
              <tbody>
                <tr
                  class="
                    tw-bg-white tw-border-b
                    dark:tw-bg-gray-800 dark:tw-border-gray-700
                  "
                  v-for="plan in linkedPlans"
                  :key="plan.id"
                >
                  <th
                    scope="row"
                    class="
                      tw-py-4
                      tw-px-6
                      tw-font-medium
                      tw-text-gray-900
                      tw-whitespace-nowrap
                      dark:tw-text-white
                    "
                  >{{ plan.name }}</th>
                  <td class="tw-py-4 tw-px-6">{{ plan.oldPrice }}</td>
                  <td class="tw-py-4 tw-px-6">{{ plan.newPrice }}</td>
                  <td class="tw-py-4 tw-px-6"></td>
                </tr>
              </tbody>
            </table>
          </div>



          <div
            class="tw-flex tw-items-center tw-justify-start tw-mt-4 tw-gap-x-2"
          >
            <button
              type="submit"
              class="
                tw-px-6
                tw-py-2
                tw-text-sm
                tw-font-semibold
                tw-rounded-md
                tw-shadow-md
                tw-text-sky-100
                tw-bg-sky-500
                hover:tw-bg-sky-700
                focus:tw-outline-none focus:tw-border-gray-900 focus:tw-ring
                tw-ring-gray-300
              "
              @click.prevent="editActivityHandler"
            >
              Save
            </button>
            <button
              @click="$router.push('/back-office/activities')"
              class="
                tw-px-6
                tw-py-2
                tw-text-sm
                tw-font-semibold
                tw-text-gray-100
                tw-bg-gray-400
                tw-rounded-md
                tw-shadow-md
                hover:tw-bg-gray-600
                focus:tw-outline-none focus:tw-border-gray-900 focus:tw-ring
                tw-ring-gray-300
              "
            >
              Cancel
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  props: {
    activityId: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      activity: {},
      activityName: "",
      oldPrice: "",
      newPrice: "",
      selectedPlanId: 0,
      canShowPlansForm: false,
      plans: [],
      linkedPlans: []
    };
  },
  mounted() {
    axios
      .get(`/api/activity/${this.activityId}`)
      .then(({data}) => (this.activity = {...data}))
      .catch(error => console.log(error));

    console.log(this.activity);

    axios.get(`/api/getplan`).then(({ data }) => {
      this.plans = data;
    });
  },
  methods:{
    editActivityHandler(){
      console.log(this.activityName);
      axios
      .put(`/api/update-activity/${this.activityId}`, this.activity)
      .then(response => console.log(response))
      .catch(error => console.log(error));
      this.$router.push('/back-office/activities');
    },
    linkPlanHandler() {
      let planToLink = this.plans.find(plan => plan.id === this.selectedPlanId);

      if (!this.linkedPlans.some(plan => plan.id === this.selectedPlanId))
        this.linkedPlans.push({
          id: this.selectedPlanId,
          name: planToLink.name,
          oldPrice: this.oldPrice,
          newPrice: this.newPrice
        })
    },
  }
};
</script>

