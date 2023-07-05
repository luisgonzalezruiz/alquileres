import { reject } from 'lodash';
import { defineStore } from 'pinia'

export const useUserStore = defineStore('user', {
  state: () => {
    return {
        token: localStorage.getItem('access_token') || null,
        user: JSON.parse(localStorage.getItem('user')),
        users:[],
        isLoggedIn: JSON.parse(localStorage.getItem('isLoggedIn')) || false
    }
  },
  actions: {
    async login(credentials) {
        try {
            const response = await axios.post('/api/auth/login', {
                email: credentials.username,
                password: credentials.password
            });

            // console.log(response.data.user);
            // update pinia state
            this.user = response.data.user;

            const token_res = response.data.access_token
            // update pinia state
            this.token = token_res;
            localStorage.setItem('access_token', this.token)

            //localStorage.setItem('user', this.user)

            this.isLoggedIn=true;
            localStorage.setItem('isLoggedIn', this.isLoggedIn)

            // console.log(this.token);
            // store user details and jwt in local storage to keep user logged in between page refreshes
            // localStorage.setItem('user', JSON.stringify(user));
            // redirect to previous url or default to home page
            // router.push(this.returnUrl || '/');

            return response;

        } catch (error) {
            //const alertStore = useAlertStore();
            //alertStore.error(error);
            //console.log(error.response.data);
            return error.response;
            //reject(error)
        }
    },
    login1(credentials) {
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
      { storage: sessionStorage, paths: ['user'] },
      //{ storage: localStorage, paths: ['isLoggedIn'] },
      //{ storage: localStorage, paths: ['user1'] },
    ],
  },
})
