package com.entities;

import java.util.Date;

public class Todo {
private String todoTitle;
private String toDoContent;
private Date toDoDate;
@Override
public String toString() {
	return "Todo [todoTitle=" + todoTitle + ", toDoContent=" + toDoContent + "]";
}
public Todo() {
	super();
	// TODO Auto-generated constructor stub
}
public Todo(String todoTitle, String toDoContent, Date toDoDate) {
	super();
	this.todoTitle = todoTitle;
	this.toDoContent = toDoContent;
	this.toDoDate = toDoDate;
}
public String getTodoTitle() {
	return todoTitle;
}
public void setTodoTitle(String todoTitle) {
	this.todoTitle = todoTitle;
}
public String getToDoContent() {
	return toDoContent;
}
public void setToDoContent(String toDoContent) {
	this.toDoContent = toDoContent;
}
public Date getToDoDate() {
	return toDoDate;
}
public void setToDoDate(Date toDoDate) {
	this.toDoDate = toDoDate;
}

}
