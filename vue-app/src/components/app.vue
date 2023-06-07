<template>
  <div class="app">
    <el-button
        size="mini"
        @click="handleOpen()">新增
    </el-button>
    <el-table
        :data="this.page.pageData.filter(data => !search || data.email.toLowerCase().includes(search.toLowerCase()))"
        style="width: 100%">
      <div class="item" v-for="(index, key) in form" :key="key">
        <el-table-column
            :label=key
            :prop=key>
        </el-table-column>
      </div>
      <el-table-column
          align="right">
        <template slot="header" slot-scope="scope">
          <el-input
              v-model="search"
              placeholder="输入邮箱搜索"
              size="mini"/>
        </template>
        <template slot-scope="scope">
          <el-button
              size="mini"
              @click="handleEdit(scope.$index, scope.row)">修改
          </el-button>
          <el-button
              size="mini"
              type="danger"
              @click="handleDelete(scope.$index, scope.row)">删除
          </el-button>
        </template>
      </el-table-column>

    </el-table>
    <!--    表单-->
    <el-dialog title="添加" :visible.sync="dialogFormVisible">
      <el-form :model="form">
        <!--      +++++++++++++++++++++++++++++++++++++++++++++++++++++-->
        <el-form-item label="邮箱" :label-width="formLabelWidth">
          <el-input v-model="form.email" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="info" :label-width="formLabelWidth">
          <el-input v-model="form.info" autocomplete="off"></el-input>
        </el-form-item>
        <!--      +++++++++++++++++++++++++++++++++++++++++++++++++++++-->
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="handleAdd()">确 定</el-button>
      </div>
    </el-dialog>
    <el-dialog title="修改" :visible.sync="update">
      <el-form :model="form">
        <!--      +++++++++++++++++++++++++++++++++++++++++++++++++++++-->
        <el-form-item label="邮箱" :label-width="formLabelWidth">
          <el-input v-model="form.email" autocomplete="off"></el-input>
        </el-form-item>
        <el-form-item label="info" :label-width="formLabelWidth">
          <el-input v-model="form.info" autocomplete="off"></el-input>
        </el-form-item>
        <!--      +++++++++++++++++++++++++++++++++++++++++++++++++++++-->
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="update = false">取 消</el-button>
        <el-button type="primary" @click="handleUpdate()">确 定</el-button>
      </div>
    </el-dialog>

    <br>
    <br>
    <!--    分页-->
    <div class="block">
      <el-pagination
          :current-page.sync="this.page.currentPage"
          :page-size=this.page.limit
          :page-sizes="[5, 10, 20, 50]"
          :total=this.page.total
          layout="sizes, prev, pager, next"
          @size-change="handleSizeChange"
          @current-change="handleCurrentChange">
      </el-pagination>
    </div>

  </div>
</template>

<script>
import axios from "axios";
export default {
  name: 'app',
  data() {
    return {
      formLabelWidth: '80px',
      update: false,
      dialogTableVisible: false,
      dialogFormVisible: false,
      // 列数据
      form: {
        info: '',
        id:'',
        email: '',
      },
      // 系统变量配置文件
      env: {
        id: 'id', //修改数据时需要传入id
        email: 'email',  //传入后端的参数，以及列表信息
        info: 'info',
        url: '/api/user/'  //后端url配置
      },
      //分页
      page: {
        pageData: [],
        currentPage: 1, //初始页
        curPage: 1, // 页数
        limit: 5, //大小
        total: 30, //总页数
      },
      search: '',
    }
  },
  //调用方法
  methods: {
    //添加
    handleAdd() {
      this.dialogFormVisible = false
      // //使用表单传递参数
      const params = new URLSearchParams();
      params.append(this.env.email, this.form.email)
      params.append(this.env.info, this.form.info)
      axios.post(this.env.url, params).then(res => {
        if (res.data) {
          this.$message({
            type: 'success',
            message: '添加成功'
          });
        }
        this.refresh()
      })
    },
    //修改
    handleUpdate(row){
      // //使用表单传递参数
      const params = new URLSearchParams();
      params.append(this.env.id,this.form.id)
      params.append(this.env.email,this.form.email)
      params.append(this.env.info,this.form.info)
      axios.put(this.env.url, params).then(res => {
        if (res.data) {
          this.$message({
            type: 'success',
            message: '修改成功'
          });
        }
        this.refresh()
      })
    },
    //编辑页面
    handleEdit(index, row) {
      this.update = true
      this.form.id = row.id
    },
    //删除
    handleDelete(index, row) {
      axios.delete(this.env.url + row.id).then(res => {
        if (res.data) {
          this.$message({
            type: 'success',
            message: '删除成功'
          });
        }
        this.refresh()
      })
    },
    //调整页面显示条数
    handleSizeChange(val) {
      this.page.limit = val
      this.getPage()
    },
    //下一页
    handleCurrentChange(val) {
      this.page.curPage = val
      this.getPage()
    },
    // 自定义查询
    getPage() {
      axios.get(this.env.url + this.page.curPage + "/" + this.page.limit).then(res => {
        this.page.total = res.data.total
        this.page.pageData = res.data.list
      })
    },
    // 刷新页面
    refresh() {
      setTimeout(function () {
        location.reload();
      }, 500);
    },
    //打开表单
    handleOpen() {
      this.dialogFormVisible = true
    },
  },
  //初始化加载
  mounted() {
    this.getPage()
  }
}
</script>

<style scoped>
.app {
  margin: 20px auto;
}

.block {
  display: flex;
  justify-content: center;
}
</style>
