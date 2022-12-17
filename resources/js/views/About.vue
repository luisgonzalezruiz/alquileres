<template>
  <h1>About Page</h1>
  
  
</template>
<script>
export default {
    data() {
    return {
      username: null,
      password: null,
      error: null
    };
  },
  methods: {
    test() {
      return this.$store.state.test
    }
  },
  computed: {
    count () {
      return store.state.count
    }
  }
};
</script>