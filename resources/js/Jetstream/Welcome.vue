<template>
    <div>
        <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
            <div class="mt-8 text-2xl">
                General Questions Accessible by all users
            </div>

            <div class="mt-6 text-gray-500"></div>
        </div>

        <div
            class="bg-gray-200 bg-opacity-25 grid grid-cols-1 md:grid-cols-2"
            v-for="question in questions"
            :key="question.id"
        >
            <div class="p-6 border-t border-gray-200 md:border-l">
                <div class="flex items-center">
                    <div
                        class="ml-4 text-lg text-gray-600 leading-7 font-semibold"
                    >
                        {{ question.difficulty }}
                    </div>
                </div>

                <div class="ml-12">
                    <div class="mt-2 text-sm text-gray-500">
                        {{ question.id }} : {{ question.question }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import JetApplicationLogo from "./../Jetstream/ApplicationLogo";
import axios from "axios";

export default {
    components: {
        JetApplicationLogo
    },

    data() {
        return {
            loading: false,
            questions: [],
            error: null
        };
    },
    created() {
        // fetch the data when the view is created and the data is
        // already being observed
        this.fetchData();
    },
    watch: {
        // call again the method if the route changes
        $route: "fetchData"
    },
    methods: {
        fetchData() {
            axios.get("/questions").then(response => {
                this.questions = response.data;
            });
        }
    }
};
</script>
