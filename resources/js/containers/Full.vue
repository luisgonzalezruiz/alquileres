<template>

<div id="wrapper">

    <app-header/>

    <Sidebar/>

    <div class="content-page">
        <h1>Esto es otro layout</h1>

        <router-view></router-view>

        <AppFooter/>

    </div>

    <!-- Right Sidebar -->
    <Rightbar/>
    <!-- /Right-bar -->

</div>

</template>


    <script>
    //import nav from '../_nav'
    import { Header as AppHeader, Sidebar, Footer as AppFooter, Rightbar} from '../components/'

    export default {
      name: 'full',
      components: {
        AppHeader,
        Sidebar,
        AppFooter,
        Rightbar
      },
      data () {
        return {
          //nav: nav.items
          test:''
        }
      },
      computed: {
        name () {
          //return this.$route.name
        },
        list () {
          //return this.$route.matched
        }
      }
    }
    </script>
