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
          Create Site
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
              Title
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
              v-model="site.name"
            />
          </div>

          <!-- Description -->
          <div class="tw-mt-4">
            <label
              class="tw-block tw-text-sm tw-font-bold tw-text-gray-700"
              for="password"
            >
              Image
            </label>
            <div class="tw-flex tw-items-center tw-justify-center tw-w-full">
              <label
                class="
                  tw-flex
                  tw-flex-col
                  tw-w-full
                  tw-h-32
                  tw-border-4
                  tw-border-dashed
                  hover:tw-bg-gray-100 hover:tw-border-gray-300
                "
              >
                <div
                  class="
                    tw-flex
                    tw-flex-col
                    tw-items-center
                    tw-justify-center
                    tw-pt-7
                  "
                >
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="
                      tw-w-12 tw-h-12 tw-text-gray-400
                      group-hover:tw-text-gray-600
                    "
                    viewBox="0 0 20 20"
                    fill="currentColor"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M4 3a2 2 0 00-2 2v10a2 2 0 002 2h12a2 2 0 002-2V5a2 2 0 00-2-2H4zm12 12H4l4-8 3 6 2-4 3 6z"
                      clip-rule="evenodd"
                    />
                  </svg>
                  <p
                    class="
                      tw-pt-1 tw-text-sm tw-tracking-wider tw-text-gray-400
                      group-hover:tw-text-gray-600
                    "
                  >
                    Select a photo
                  </p>
                </div>
                <input type="file" class="tw-opacity-0" @change="setImage" />
              </label>
            </div>
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
              @click.prevent="editSiteHandler"
            >
              Save
            </button>
            <button
              @click="$router.push('/back-office/sites')"
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
    siteId: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      site: {},
      siteName: "",
    };
  },
  mounted() {
    axios
      .get(`/api/site/${this.siteId}`)
      .then(({data}) => (this.site = {...data}))
      .catch(error => console.log(error));
  },
  methods:{
    editSiteHandler(){
      console.log(this.siteName);
      axios
      .put(`/api/update-site/${this.siteId}`, this.site)
      .then(response => console.log(response))
      .catch(error => console.log(error));
      this.$router.push('/back-office/sites');
    },
  }
};
</script>

