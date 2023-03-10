import { createWebHistory, createRouter } from "vue-router";

// Containers
import Full from '../containers/Full.vue';
import Admin from '../containers/Admin.vue';

import Home from "../views/Home.vue";
import About from "../views/About.vue";

// Pages
import NotFound from '../views/NotFound'
import Login from '../views/Login'
import Logout from '../views/Logout'
import Dashboard from '../views/Dashboard'

import Test from '../views/Test'



// instanciamos nuestro store user y lo hacemos una vez creado pinia
import {useUserStore} from '../stores/user';


const routes = [
    {
        path: "/",
        name: "Home",
        component: Admin,   // con esto usamos la template completa
        children:[
            {
                path:'/home',
                name: 'Home',
                component: Home  // este es el componente individual
            }
        ]
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
        path: '/dashboard/:id',
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
        path: "/",
        name: "About",
        component: Admin,
        children:[
            {
                path:'/about',
                name: 'About',
                component: About  // este es el componente individual
            }
        ]
    },
    {
        path: "/test/:id",
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

// dee esta forma validamos y protejemos nuestras rutas
router.beforeEach((to) => {
    // Esto funcionar√° porque el enrutador inicia su navegaci√≥n despu√©s de
    // el enrutador est√° instalado y pinia tambi√©n se instalar√°
    const store = useUserStore()

    if (to.meta.requiresAuth && !store.isLoggedIn){
       return '/login'
    }else{
        console.log('llegue bien');
    }
})

export default router;
