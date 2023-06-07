package eu.org.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import eu.org.mapper.UserMapper;
import eu.org.entity.User;
import eu.org.service.UserService;
import org.springframework.stereotype.Service;

/**
 * (User)表服务实现类
 *
 * @author 白也
 * @since 2023-06-07 10:26:59
 */
@Service("userService")
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {

}

