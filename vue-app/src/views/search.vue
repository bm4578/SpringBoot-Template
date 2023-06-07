<!--<template>-->
<!--  <div id="app">-->
<!--    <input v-model="searchText">-->
<!--    <ul>-->
<!--      <li v-for="d in filteredData">{{ d.name }}</li>-->
<!--    </ul>-->
<!--  </div>-->
<!--</template>-->

<!--<script>-->
<!--export default {-->
<!--  name: "search",-->
<!--  data() {-->
<!--    return {-->
<!--      data: [-->
<!--        { name: 'Apple' },-->
<!--        { name: 'Orange' },-->
<!--        { name: 'Banana' }-->
<!--      ],-->
<!--      searchText: ''-->
<!--    }-->
<!--  },-->
<!--  computed: {-->
<!--    filteredData() {-->
<!--      return this.data.filter(d => {-->
<!--        return d.name.match(this.searchText)-->
<!--      })-->
<!--    }-->
<!--  }-->
<!--}-->
<!--</script>-->

<!--<style scoped>-->

<!--</style>-->


<template>
  <div>
    <el-input placeholder="请输入搜索内容" v-model="searchValue" @keyup.enter="handleSearch" />
  </div>
</template>

<script>
export default {
  data() {
    return {
      searchValue: ''
    }
  },
  methods: {
    handleSearch() {
      // 处理搜索逻辑
      console.log('搜索内容：' + this.searchValue)
    }
  }
}
</script>