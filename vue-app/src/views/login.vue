<template>
  <div class="login-container">
    <el-card class="login-card" shadow="hover">
      <div class="login-title">用户登录</div>
      <el-form ref="loginForm" :model="loginForm" :rules="rules" class="login-form" label-position="left" label-width="80px" size="medium">
        <el-form-item label="邮箱" prop="username">
          <el-input v-model="loginForm.username" prefix-icon="el-icon-user" clearable placeholder="请输入用户名"></el-input>
        </el-form-item>
        <el-form-item label="密码" prop="password">
          <el-input type="password" v-model="loginForm.password" prefix-icon="el-icon-lock" clearable placeholder="请输入密码"></el-input>
        </el-form-item>
        <p style="color: #2215da">默认邮箱：wrebecca630@icloud.com</p>
        <p style="color: #2215da">默认密码：123456</p>
        <el-form-item>
          <el-button type="primary" class="login-button" :loading="loading" @click="login">登录</el-button>
        </el-form-item>
      </el-form>
    </el-card>
  </div>
</template>

<script>
import { mapActions } from 'vuex'
export default {
  data() {
    return {
      loginForm: {
        username: '',
        password: ''
      },
      rules: {
        username: [
          { required: true, message: '邮箱不能为空', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '密码不能为空', trigger: 'blur' }
        ]
      },
      loading: false
    }
  },
  methods: {
    ...mapActions(['login']),
    login() {
      this.$refs.loginForm.validate(valid => {
        if (valid) {
          console.log(this.loginForm)
          this.loading = true
          if (this.loginForm.password === '123456' || this.loginForm.username === 'wrebecca630@icloud.com'){
            this.$router.push('/')
            this.loading = false
          }
        } else {
          return false
        }
      })
    }
  }
}
</script>

<style scoped>
.login-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: calc(100vh - 23px);
  background-color: #f5f5f5;
}
.login-card {
  width: 400px;
}
.login-title {
  font-size: 24px;
  font-weight: bold;
  text-align: center;
  margin-bottom: 20px;
}
.login-form {
  margin-top: 20px;
}
.login-button {
  width: 100%;
}
</style>