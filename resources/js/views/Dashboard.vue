<template>

  <h1 class="title">This is your Dashboard, you are logged in :)</h1>
  {{dataUser.user.first_name }} {{ dataUser.user.last_name }}
   <!-- <h2> {{ $store.state.user.count }}</h2> -->
   <!-- <h2> {{ count }}</h2>

  <span>{{ username }}</span>

  <br>

  <input type="button" @click="this.$store.commit('user/setCount',50)" value="applicar 1">
  <input type="button" @click="test" value="applicar 2">
 -->

 <Test :prueba="ejemplo" :otra="ejemplo"/>

 <div>
    <router-link :to="{ name: 'Test', params:{ id: 15} }">Test</router-link> |
    <router-link :to="{ name: 'Home' }">Home</router-link>
</div>

</template>

<script>
import { ref, reactive, onBeforeMount, onMounted, getCurrentInstance } from "vue";
import { useCounterStore } from '../stores/counter';
import { useUserStore } from '../stores/user';
import { useRoute } from 'vue-router';

import Test from './Test.vue';


export default {
    components: {
        Test,
    },
    name: "BaseBlock",
    setup(props, context) {

        const name = getCurrentInstance().ctx.$options.name;
        const author = "Manz";

        // de esta forma instanciamos el uso de las rutas
        const route = useRoute();

        const store = useCounterStore()

        const dataUser = useUserStore()

        //console.log(store.productos);
        const ejemplo = ref("esto es una prueba 3");

        const prod = reactive({
            id: 0,
            nombre: '',
            precio: 0
        });

        // de esta forma tenemos acceso a los parametros que viene de los links:
        console.log(route.params.id);


        /* Formato largo */
        onBeforeMount(() => {
            console.log("beforeMount hook!");
        });

        // Pasamos por parámetro una función que realiza la lógica deseada
        onMounted(() => {
            console.log("El componente " + name + " ha sido montado.");
            console.log(dataUser.user);
        });

        function addProducto(){
            // de esta forma
            let dato={
                    id: prod.id,
                    nombre: prod.nombre,
                    precio: prod.precio
            }

            //this.store.productos.push(prod);
            this.store.addProducto(dato);
        }

        return {
            // you can return the whole store instance to use it in the template
            store,
            addProducto,
            prod,
            ejemplo,
            dataUser
        }
    },
}

</script>


<!-- <script>
export default {

  data() {
    return {
      username: 'luis gonzalez',
      //count: this.$store.state.user.count
    };
  },
  computed: {
    count() {
      return this.$store.state.user.count;
    }
  },
  methods: {
    test() {
        this.$store.commit('user/setCount',25);
        console.log (this.$store.state.user.count);
    }
  }
};
</script> -->
