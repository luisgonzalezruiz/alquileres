
<template>

<!-- <div> -->

    <div class="wrapper">

        <app-header/>

        <!-- <Sidebar/> -->

        <div class="content-page">

            <router-view></router-view>

        </div>

        <!-- <AppFooter/> -->

    </div>

<!-- </div> -->

</template>


    <script>
    //import nav from '../_nav'
    import { Header as AppHeader, Sidebar, Footer as AppFooter} from '../components/'

    export default {
      name: 'full',
      components: {
        AppHeader,
        Sidebar,
        AppFooter
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
