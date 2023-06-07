<template>
  <div class="app">
    <div>
      <el-input placeholder="请输入搜索内容" v-model="searchText" />
    </div>
    <el-card class="box-card" v-for="d in filteredData" :key="filteredData">
      <div  class="text item">
        {{ d.name }}
      </div>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      isHover: false,
      searchText: '',
      data: [
        { name: 'Apple' },
        { name: 'Orange' },
        { name: 'Banana' }
      ],
    }
  },
  computed: {
    filteredData() {
      return this.data.filter(d => {
        return d.name.match(this.searchText)
      })
    }
  }
}
</script>

<style scoped>
.text {
  font-size: 14px;
}

.item {
  padding: 18px 0;
}

.box-card {
  width: 480px;
  margin-top: 20px;
}
</style>