<template>

  <div>
    <router-view />
  </div>

</template>

<script>

import Notes from "./Notes.vue"
export default {
    name: "App",
    components:{
        Notes,
    },
};
</script>
