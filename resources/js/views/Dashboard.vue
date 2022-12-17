<template>

  <h1 class="title">This is your Dashboard, you are logged in :)</h1>
   <!-- <h2> {{ $store.state.user.count }}</h2> -->
  <h2> {{ count }}</h2>

  <span>{{ username }}</span>

  <br>

  <input type="button" @click="this.$store.commit('user/setCount',50)" value="applicar 1">
  <input type="button" @click="test" value="applicar 2">

</template>

<script>
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
</script>j
