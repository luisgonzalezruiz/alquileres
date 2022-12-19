import { createWebHistory, createRouter } from "vue-router";
import Home from "../views/Home.vue";
import About from "../views/About.vue";

// Pages
import NotFound from '../views/NotFound'
import Login from '../views/Login'
import Logout from '../views/Logout'
import Dashboard from '../views/Dashboard'

import Test from '../views/Test'

const routes = [
    {
        path: "/",
        name: "Home",
        component: Home,
    },
    {
        path: '/login',
        name: 'login',
        component: Login,
    },
    {
        path: '/logout',
        name: 'logout',
        component: Logout,
        meta: {
            requiresAuth: true,
        }
    },
    {
        path: '/dashboard',
        name: 'dashboard',
        component: Dashboard,
        meta: {
            requiresAuth: true,
        }
    },
    {
        path: '/404',
        name: '404',
        component: NotFound,
    },
    {
        path: "/about",
        name: "About",
        component: About,
    },
    {
        path: "/test",
        name: "Test",
        component: Test,
    },
    {
        path: "/:catchAll(.*)", // Unrecognized path automatically matches 404
        redirect: '/404',
    },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
