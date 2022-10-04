require('./bootstrap');

import { createApp } from '@vue/runtime-dom';
import App from './src/App';
import router from './src/plugins/router';
import Toaster from '@meforma/vue-toaster';

const app = createApp({});

app.component('app-component', App);

app.use(router);
app.use(Toaster);

app.mount('#app');

