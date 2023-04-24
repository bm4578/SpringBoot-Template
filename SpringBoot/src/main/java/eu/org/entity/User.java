package eu.org.entity;


import com.baomidou.mybatisplus.extension.activerecord.Model;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

/**
 * (User)表实体类
 *
 * @author 白也
 * @since 2023-04-23 21:41:20
 */
@SuppressWarnings("serial")
@Data
public class User extends Model<User> {
    //配置自增
    @TableId(type = IdType.AUTO)
    //ID
    private Integer id;
    //邮箱
    private String email;
    //说明
    private String info;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    /**
     * 获取主键值
     *
     * @return 主键值
     */
    @Override
    protected Serializable pkVal() {
        return this.id;
    }
}

