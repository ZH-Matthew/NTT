package com.example.ntt.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.BAD_REQUEST)
public class InvalidUuidException extends RuntimeException {
    public InvalidUuidException(String message) {
        super(message);
    }
}
