<template>
  <div class="app">
    <el-button
        size="mini"
        @click="handleAdd()">新增
    </el-button>
    <el-table
        :data="this.page.pageData.filter(data => !search || data.name.toLowerCase().includes(search.toLowerCase()))"
        style="width: 100%">
      <el-table-column
          label="ID"
          prop="id">
      </el-table-column>

      <!--      +++++++++++++++++++++++++ 数据列信息++++++++++++++++++++++++++++-->
      <el-table-column
          label="名称"
          :prop=this.env.message>
      </el-table-column>
      <el-table-column
          label="info"
          :prop=this.env.info>
      </el-table-column>
      <!--      +++++++++++++++++++++++++++++++++++++++++++++++++++++-->
      <el-table-column
          align="right">
        <template slot="header" slot-scope="scope">
          <el-input
              v-model="search"
              placeholder="输入关键字搜索"
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
    <el-dialog title="收货地址" :visible.sync="dialogFormVisible">
      <el-form :model="form">
        <el-form-item label="活动名称" :label-width="formLabelWidth">
          <el-input v-model="form.name" autocomplete="off"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="dialogFormVisible = false">确 定</el-button>
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
import router from "@/router";

export default {
  name: 'app',
  data() {
    return {
      table:{
        formLabelWidth: '80px',
        dialogTableVisible: false,
        dialogFormVisible: false,
      },
      form: {
        name: 'nnnn',
      },
      // 系统变量配置文件
      env:{
        id:'id', //修改数据时需要传入id
        message:'email',  //传入后端的参数，以及列表信息
        info:'info',
        url:'/api/user/'  //后端url配置
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
    //新增
    handleAdd() {
      this.$prompt('请输入名称', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        inputPattern: /^[\s\S]*.*[^\s][\s\S]*$/,   //正则非空校验
        inputErrorMessage: '不能为空'
      },{
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        inputPattern: /^[\s\S]*.*[^\s][\s\S]*$/,   //正则非空校验
        inputErrorMessage: '不能为空'
      }).then(({value}) => {
        // //使用表单传递参数
        const params =  new URLSearchParams();
        params.append(this.env.message,value)
        params.append(this.env.info,value_2)
        axios.post(this.env.url,params).then(res=>{
          if (res.data){
            this.$message({
              type: 'success',
              message: '添加成功'
            });
          }
          this.refresh()
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '取消输入'
        });
      });
    },
    //修改
    handleEdit(index, row) {
      this.$prompt('请输入名称', '提示', {
        confirmButtonText: '确定',
        cancelButtonText: '取消',
        inputPattern: /^[\s\S]*.*[^\s][\s\S]*$/,   //正则非空校验
        inputErrorMessage: '不能为空'
      }).then(({value}) => {
        console.log(value)
        // //使用表单传递参数
        const params =  new URLSearchParams();
        params.append(this.env.id,row.id)
        params.append(this.env.message,value)
        axios.put(this.env.url,params).then(res=>{
          if (res.data){
            this.$message({
              type: 'success',
              message: '修改成功'
            });
          }
          this.refresh()
        })
      }).catch(() => {
        this.$message({
          type: 'info',
          message: '取消输入'
        });
      });
    },
    //删除
    handleDelete(index, row) {
      axios.delete(this.env.url + row.id).then(res=>{
        if (res.data){
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
    refresh(){
      setTimeout(function() {
        location.reload();
      }, 500);
    }
  },
  //初始化加载
  mounted() {
    this.getPage()
  }
}
</script>

<style scoped>
.app{
  margin: 20px auto;
}
.block{
  display: flex;
  justify-content: center;
}
</style>


