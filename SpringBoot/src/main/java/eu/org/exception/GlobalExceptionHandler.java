package eu.org.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * @author 白也
 * @date 2023/6/24 8:46 下午
 * @title
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(MyCustomException.class)
    public ResponseEntity<String> handleException(MyCustomException ex) {
        // 处理异常，并返回自定义的错误信息给前端
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(ex.getMessage());
    }
}
