package com.example.todolist.Exceptions;

public class AlreadyDeletedException extends RuntimeException{
    public AlreadyDeletedException(String message){super(message);}
}
