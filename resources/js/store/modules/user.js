
import axios from 'axios'


// estados iniciales
const state = {
    count:40,
    title:'VUEX es lo mas',
    token: localStorage.getItem('access_token') || null,
    test:'hola mundo',
}

// getters
const getters = {
    loggedIn(state) {
        return state.token !== null
        }
}

// acciones
const actions = {
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
}

// mutaciones
const mutations = {
    retrieveToken(state, token) {
        state.token = token
        console.log(state.token)
    },
    destroyToken(state) {
        state.token = null
    },
    setCount(state, nuevo){
        state.count = nuevo
    }
}


export default {
    namespaced: true,
    state,
    getters,
    actions,
    mutations
  }
