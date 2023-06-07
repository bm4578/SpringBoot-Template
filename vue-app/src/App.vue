<template>
  <div id="app">
    <nav>
      <router-link to="/">Home</router-link> |
      <router-link to="/login">Login</router-link>|
      <router-link to="/search">Search</router-link>|
      <router-link to="/loading">Loading</router-link>
    </nav>
    <router-view/>
  </div>
</template>
