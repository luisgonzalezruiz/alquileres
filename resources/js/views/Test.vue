<template>

<div>
    <label for="">Esto es una prueba</label>
    <h2> {{ store.count }}</h2>

     <input type="button" @click="store.increment(10)" value="applicar 2">


</div>

</template>

<script>
import { ref } from "vue";
import { useCounterStore } from '../stores/counter';

export default {
  setup() {
    const store = useCounterStore()

    return {
      // you can return the whole store instance to use it in the template
      store,
    }
  },
}

</script>
