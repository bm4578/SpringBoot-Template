import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
Vue.config.productionTip = false

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);
import axios from 'axios'
import VueAxios from 'vue-axios'
Vue.use(VueAxios, axios)


new Vue({
  router,
  store,
  render: function (h) { return h(App) }
}).$mount('#app')
