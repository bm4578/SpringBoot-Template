import Vue from 'vue'
import VueRouter from 'vue-router'
import HomeView from '../views/list.vue'

Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        name: 'home',
        component: HomeView
    },
    {
        path: '/login',
        name: 'login',
        component: function () {
            return import('../views/login.vue')
        }
    },
    {
        path: '/search',
        name: 'search',
        component: function () {
            return import('../views/search.vue')
        },
    }, {
        path: '/loading',
        name: 'loading',
        component: function () {
            return import('../views/Loading.vue')
        },
    }
]

const router = new VueRouter({
    routes
})

export default router
