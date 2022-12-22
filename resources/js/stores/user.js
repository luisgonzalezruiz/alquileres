import { defineStore } from 'pinia'

export const useCounterStore = defineStore('user', {
  state: () => {
    return {
        token: localStorage.getItem('access_token') || null,
        users:[]
    }
  },
  // could also be defined as
  // state: () => ({ count: 0 })
  actions: {
    login(credentials) {
        return new Promise((resolve, reject) => {
            axios.post('/api/auth/login', {
                email: credentials.username,
                password: credentials.password,
            })
            .then(response => {

                console.log(response)

                const token_res = response.data.access_token
                //localStorage.setItem('access_token', token)
                this.token = token_res;

                resolve(response)
            })
            .catch(error => {
                //console.log(error)
                reject(error)
            })
        })
    },

  },
  persist: {
    enabled: true,
    strategies: [
      { storage: sessionStorage, paths: ['users'] },
      { storage: localStorage, paths: ['token'] },
    ],
  },
})
