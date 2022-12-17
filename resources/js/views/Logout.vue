<template></template>

<script>
export default {
  created() {
      // de esta manera llamamos a la funcion de VUEX del store.js y este a su vez, hace el commit a la 
      // mutacion que actualiza el estado
    this.$store.dispatch("destroyToken").then(response => {
      this.$router.push({ name: "login" });
    });
    
  }
};
</script>