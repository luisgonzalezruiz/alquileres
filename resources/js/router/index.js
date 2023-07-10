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
import Categoria from '../views/Categoria/List'

import Test from '../views/Test'
import Prueba from '../views/Prueba'


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
                component: Home,  // este es el componente individual
                meta: {
                    requiresAuth: true,
                }
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
        path: "/",
        name: "Categoria",
        component: Admin,   // con esto usamos la template completa
        children:[
            {
                path:'/categorias',
                name: 'Categoria',
                component: Categoria,  // este es el componente individual
                meta: {
                    requiresAuth: true,
                }
            }
        ]
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
                component: About,  // este es el componente individual
                meta: {
                    requiresAuth: true,
                }
            }
        ]
    },
    {
        path: "/test/:id",
        name: "Test",
        component: Test,
        meta: {
            requiresAuth: true,
        }
    },
    {
        path: "/",
        name: "Prueba",
        component: Admin,
        children:[
            {
                path:'/prueba',
                name: 'Prueba',
                component: Prueba,  // este es el componente individual
                meta: {
                    requiresAuth: true,
                }
            }
        ]
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
router.beforeEach((to, from, next) => {
    // Esto funcionará porque el enrutador inicia su navegación después de
    // el enrutador está instalado y pinia también se instalará
    const store = useUserStore()
/*
    if (to.meta.requiresAuth && !store.isLoggedIn){
       return '/login'
    }else{
        console.log(store.isLoggedIn)
        console.log('llegue bien');
        next();
    }
*/

    if (to.matched.some((record) => record.meta.requiresAuth)) {
        //console.log(store.isLoggedIn)
        if (store.isLoggedIn) {
            next();
        } else {
            next({ name: "login" });
        }
    } else {
        //console.log(store.isLoggedIn);
        next();

        // intento llevar al home, si ya esta loguea y el usuario tipea el login en el url
        //if (store.isLoggedIn) {
        //    next('/');
        //}
    }


})

export default router;
