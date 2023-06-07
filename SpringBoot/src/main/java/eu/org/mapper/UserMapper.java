package eu.org.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;
import eu.org.entity.User;

/**
 * (User)表数据库访问层
 *
 * @author 白也
 * @since 2023-06-07 10:26:59
 */

@Mapper
public interface UserMapper extends BaseMapper<User> {

}

