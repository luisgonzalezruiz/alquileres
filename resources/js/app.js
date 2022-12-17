require('./bootstrap')

import { createApp } from 'vue'

import router from './router'
import store from './store/index'
import App from './views/App'

// ****************************************************************************
// aqui validamos nuestras rutas vue-router, para dar acceso o no al sistema
// ****************************************************************************

router.beforeEach((to, from, next) => {
    //console.log(!store.getters['user/loggedIn'])

    if (to.matched.some(record => record.meta.requiresAuth)) {
      // this route requires auth, check if logged in
      // if not, redirect to login page.

      // de esta forma consultamos los getters['user/loggedIn'] si nuestro store maneja modulos
      // y namespace = true
      // console.log(store.getters['user/loggedIn'])

      if (!store.getters['user/loggedIn']) {
        //console.log('esto es una prueba')
        //if (!store.getters.loggedIn) {
        next({
          name: 'login',
        })
      } else {
        next()
      }

    } else {
      next() // make sure to always call next()!
    }
})


// ****************************************************************************
// import App from "./App.vue";
// createApp(App).use(store).use(router).mount("#app")

// ****************************************************************************
// de esta forma inicalizamos el objeto vue para toda la aplicacion
// #app es un div con id=app en el home.blade.php
// ****************************************************************************

createApp({
    components: {
        App,
     }
}).use(router).use(store).mount("#app")

// ****************************************************************************


// app.use(router).mount('#app')
