import { createStore } from 'vuex'

import axios from 'axios'

export default createStore({
  state:{
      count:10,
      title:'VUEX es lo mas',
      token: localStorage.getItem('access_token') || null,
      test:'hola mundo',
  },
  getters:{
    loggedIn(state) {
        return state.token !== null
      }

  },
  actions:{
    retrieveToken(context, credentials) {

        return new Promise((resolve, reject) => {
          axios.post('/api/login', {
            username: credentials.username,
            password: credentials.password,
          })
            .then(response => {
              //console.log(response)
              const token = response.data.access_token
              localStorage.setItem('access_token', token)
              // de esta forma llamamos a la mutacion para actualizar el estado
              context.commit('retrieveToken', token)

              resolve(response)
            })
            .catch(error => {
              //console.log(error)
              reject(error)
            })
        })

    },
    destroyToken(context) {

        if (context.getters.loggedIn){

          return new Promise((resolve, reject) => {
            axios.post('/api/logout', '', {
                headers: { Authorization: "Bearer " + context.state.token }
              })
              .then(response => {
                //console.log(response)
                localStorage.removeItem('access_token')
                context.commit('destroyToken')

                resolve(response)
              })
              .catch(error => {
                //console.log(error)
                localStorage.removeItem('access_token')
                context.commit('destroyToken')

                reject(error)
              })
          })

        }
    }
  },
  mutations:{
    retrieveToken(state, token) {
        state.token = token
    },
    destroyToken(state) {
        state.token = null
    }
  }

})
