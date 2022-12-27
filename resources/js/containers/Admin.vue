<template>
    <div>
        <!-- Begin page -->
        <div id="wrapper">
            <!-- Topbar Start -->
            <app-header/>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
            <sidebar/>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">

                <router-view></router-view>

                <!-- Footer Start -->
                <AppFooter/>
                <!-- end Footer -->
            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <Rightbar/>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

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
