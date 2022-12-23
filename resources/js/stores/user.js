import { defineStore } from 'pinia'

export const useCounterStore = defineStore('user', {
  state: () => {
    return {
        token: localStorage.getItem('access_token') || null,
        user: JSON.parse(localStorage.getItem('user')),
        users:[]
    }
  },
  actions: {
    async login(credentials) {
        try {
            const response = await axios.post('/api/auth/login', {
                email: credentials.username,
                password: credentials.password
            });


            console.log(response);

            // update pinia state
            this.user = response.data.user;

            // store user details and jwt in local storage to keep user logged in between page refreshes
            localStorage.setItem('user', JSON.stringify(user));

            // redirect to previous url or default to home page
            //router.push(this.returnUrl || '/');

            console.log(this.user);

        } catch (error) {
            //const alertStore = useAlertStore();
            //alertStore.error(error);
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
      { storage: sessionStorage, paths: ['users'] },
      { storage: localStorage, paths: ['token'] },
    ],
  },
})
