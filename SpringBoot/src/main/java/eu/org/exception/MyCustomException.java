package eu.org.exception;

/**
 * @author 白也
 * @date 2023/6/24 8:34 下午
 * @title 使用：
 *   //验证密码
 *  if (! user.getPassword().equals(loginForm.getPassword())) throw new MyCustomException("密码错误!!!");
 */

public class MyCustomException extends RuntimeException {

    public MyCustomException(String message) {
        super(message);
    }
}
