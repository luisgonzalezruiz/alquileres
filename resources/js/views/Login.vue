<template>
  <div>

    <div class="container">
      <div class="column is-4 is-offset-4">
        <div class="box">
          <h1 class="title">Login</h1>

          <div class="notification is-danger" v-if="error">
            <p>{{error}}</p>
          </div>

          <form autocomplete="off" @submit.prevent="login" method="post">
            <div class="field">
              <div class="control">
                <input type="email" class="input" placeholder="user@example.com" v-model="username" />
              </div>
            </div>
            <div class="field">
              <div class="control">
                <input type="password" class="input" v-model="password" />
              </div>
            </div>
            <button type="submit" class="button is-primary">Sign in</button>
          </form>
        </div>
      </div>
    </div>

    <div class="loading auth-fluid-pages pb-0">
            <div class="auth-fluid">
                <!--Auth fluid left content -->
                <div class="auth-fluid-form-box">
                    <div class="align-items-center d-flex h-100">
                        <div class="card-body">

                            <!-- Logo -->
                            <div class="auth-brand text-center text-lg-start">
                                <div class="auth-logo">
                                    <a href="index.html" class="logo logo-dark text-center">
                                        <span class="logo-lg">
                                            <img src="ubold/assets/images/logo-dark.png" alt="" height="22">
                                        </span>
                                    </a>

                                    <a href="index.html" class="logo logo-light text-center">
                                        <span class="logo-lg">
                                            <img src="ubold/assets/images/logo-light.png" alt="" height="22">
                                        </span>
                                    </a>
                                </div>
                            </div>

                            <!-- title-->
                            <h4 class="mt-0">Sign In</h4>
                            <p class="text-muted mb-4">Enter your email address and password to access account.</p>

                            <!-- form -->
                            <form action="#">
                                <div class="mb-3">
                                    <label for="emailaddress" class="form-label">Email address</label>
                                    <input class="form-control" type="email" id="emailaddress" required="" placeholder="Enter your email">
                                </div>
                                <div class="mb-3">
                                    <a href="auth-recoverpw-2.html" class="text-muted float-end"><small>Forgot your password?</small></a>
                                    <label for="password" class="form-label">Password</label>
                                    <div class="input-group input-group-merge">
                                        <input type="password" id="password" class="form-control" placeholder="Enter your password">
                                        <div class="input-group-text" data-password="false">
                                            <span class="password-eye"></span>
                                        </div>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="checkbox-signin">
                                        <label class="form-check-label" for="checkbox-signin">Remember me</label>
                                    </div>
                                </div>
                                <div class="text-center d-grid">
                                    <button class="btn btn-primary" type="submit">Log In </button>
                                </div>
                                <!-- social-->
                                <div class="text-center mt-4">
                                    <p class="text-muted font-16">Sign in with</p>
                                    <ul class="social-list list-inline mt-3">
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-primary text-primary"><i class="mdi mdi-facebook"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-danger text-danger"><i class="mdi mdi-google"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-info text-info"><i class="mdi mdi-twitter"></i></a>
                                        </li>
                                        <li class="list-inline-item">
                                            <a href="javascript: void(0);" class="social-list-item border-secondary text-secondary"><i class="mdi mdi-github"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </form>
                            <!-- end form-->

                            <!-- Footer-->
                            <footer class="footer footer-alt">
                                <p class="text-muted">Don't have an account? <a href="auth-register-2.html" class="text-muted ms-1"><b>Sign Up</b></a></p>
                            </footer>

                        </div> <!-- end .card-body -->
                    </div> <!-- end .align-items-center.d-flex.h-100-->
                </div>
                <!-- end auth-fluid-form-box-->

                <!-- Auth fluid right content -->
                <div class="auth-fluid-right text-center">
                    <div class="auth-user-testimonial">
                        <h2 class="mb-3 text-white">I love the color!</h2>
                        <p class="lead"><i class="mdi mdi-format-quote-open"></i> I've been using your theme from the previous developer for our web app, once I knew new version is out, I immediately bought with no hesitation. Great themes, good documentation with lots of customization available and sample app that really fit our need. <i class="mdi mdi-format-quote-close"></i>
                        </p>
                        <h5 class="text-white">
                            - Fadlisaad (Ubold Admin User)
                        </h5>
                    </div> <!-- end auth-user-testimonial-->
                </div>
                <!-- end Auth fluid right content -->
            </div>
            <!-- end auth-fluid-->

    </div>

  </div>
</template>

<script>
import { ref, reactive } from "vue";
import { useUserStore } from '../stores/user';

import  { useRouter } from 'vue-router';
//import  { router } from 'vue-router';


export default {
  setup() {
    const store = useUserStore()

    // aqui instancio el vue-router
    const router = useRouter();

    const username = ref("luis@gmail.com");
    const password = ref("12345678");
    const error = ref("");

    const usuario = reactive({
        id: 0,
        name: '',
        email: ''
    });

    //console.log(titulo);

    async function login(){

       // de esta forma
       let credentials={
            username: this.username,
            password: this.password,
       }

       // de esta manera capturamos la promesa desde el store;
       let response = await this.store.login(credentials)

       if (response.status==200){
            //console.log(response);
            // esto es equivalente this.$router.push... que usabamos con vue2 o option API
            router.push({ name: "dashboard", params:{id: 10} });
       }

       if (response.status==401){
            this.error = response.data.message;
       }

    }

    return {
      // you can return the whole store instance to use it in the template
      store,
      login,
      username, password, usuario, error
    }
  },
}

</script>



