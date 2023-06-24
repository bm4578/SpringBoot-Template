package eu.org.exception;

/**
 * @author 白也
 * @date 2023/6/24 8:34 下午
 * @title
 */

public class MyCustomException extends RuntimeException {

    public MyCustomException(String message) {
        super(message);
    }
}
