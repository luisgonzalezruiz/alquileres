<template>

<div>


    <label for="">Esto es una prueba</label>
    <h2> {{ store.count }}</h2>
   <!--  <h2> {{ store.productos }}</h2> -->
    <div v-for='product in store.productos' :key='product.id'>
        {{product.id}} {{product.nombre}} {{product.precio}}
    </div>

    <form autocomplete="off" @submit.prevent="" method="post">
        <div class="field">
            <div class="control">
                <input type="text" class="input" placeholder="Titulo" v-model="titulo" />
            </div>
        </div>
        <div class="field">
            <div class="control">
                <input type="text" class="input" placeholder="Id" v-model="prod.id" />
            </div>
        </div>
        <div class="field">
            <div class="control">
                <input type="text" class="input" placeholder="Nombre" v-model="prod.nombre" />
            </div>
        </div>

        <div class="field">
            <div class="control">
                <input type="text" class="input" placeholder="Precio" v-model="prod.precio" />
            </div>
        </div>
<!--         <button type="submit" class="button is-primary">Sign in</button> -->

        <input type="button" @click="addProducto()" value="Agregar producto">

    </form>

    <br>

     <!-- <input type="button" @click="store.increment(10)" value="applicar 2"> -->

     <br>

     {{titulo}}

</div>

</template>

<script>
import { ref, reactive } from "vue";
import { useCounterStore } from '../stores/counter';

export default {
  setup() {
    const store = useCounterStore()

    //console.log(store.productos);
    const titulo = ref("");

    const prod = reactive({
        id: 0,
        nombre: '',
        precio: 0
    });

    //console.log(titulo);


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
      titulo
    }
  },
}

</script>
