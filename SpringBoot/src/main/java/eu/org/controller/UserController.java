package eu.org.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import eu.org.entity.User;
import eu.org.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * (User)表控制层
 *
 * @author 白也
 * @since 2023-04-22 20:49:12
 */
@RestController
@RequestMapping("user")
public class UserController {
    /**
     * 服务对象
     */
    @Resource
    private UserService userService;


    /**
     * 查询所有
     *
     * @return 数据
     */
    @GetMapping
    public List<User> getAll() {
        return this.userService.list();
    }

    /**
     * 分页查询所有数据
     *
     * @param pageNum  页数
     * @param pageSize 分页大小
     * @return 数据
     */
    @GetMapping("/{pageNum}/{pageSize}")
    public PageInfo<User> selectPageAll(@PathVariable("pageNum") int pageNum, @PathVariable("pageSize") int pageSize) {
        // 开始分页
        PageHelper.startPage(pageNum, pageSize);
        QueryWrapper<User> classQueryWrapper = new QueryWrapper<>();
        classQueryWrapper.select().orderByDesc("id");
        return new PageInfo<>(this.userService.list(classQueryWrapper));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public User selectOne(@PathVariable Serializable id) {
        return this.userService.getById(id);
    }

    /**
     * 新增数据
     *
     * @param user 实体对象
     * @return 新增结果
     */
    @PostMapping
    public boolean insert(User user) {
        return this.userService.save(user);
    }

    /**
     * 修改数据
     *
     * @param user 实体对象
     * @return 修改结果
     */
    @PutMapping
    public boolean update(User user) {
        return this.userService.updateById(user);
    }

    /**
     * 删除数据
     *
     * @param id 主键结合
     * @return 删除结果
     */
    @DeleteMapping("/{id}")
    public boolean delete(@PathVariable("id") int id) {
        return this.userService.removeById(id);
    }
}

