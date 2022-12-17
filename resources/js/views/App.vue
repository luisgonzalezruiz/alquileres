<template>
  <div>
    <section class="section">
      <main>
<!--           <h1>{{ $store.state.user.count }}</h1>
          <h2>{{ $store.state.user.title }}</h2>

          <Notes></Notes>
        <div id="nav">
            <router-link to="/">Home</router-link> |
            <router-link to="/dashboard">Dashboard</router-link> |
            <router-link to="/about">About</router-link> |
            <router-link to="/logout">Logout</router-link> |
        </div> -->

        <router-view></router-view>

      </main>
    </section>
  </div>
</template>

<script>

import Notes from "../components/Notes"
export default {
    name: "App",
    components:{
        Notes,
    },
};
</script>
