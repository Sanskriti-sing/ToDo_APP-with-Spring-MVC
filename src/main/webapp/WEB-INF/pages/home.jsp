<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><c:out value="${page}"></c:out></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
    <div class="container mt-3">
    <h1 class="text-center">Welcome to Todo Manager</h1>
    <c:if test="${not empty msg }">
    <div class="alert alert-success">
    <b><c:out value="${msg}"></c:out></b>
    </c:if>
    </div>
    <div class="row mt-4">

			<div class="col-md-2">

				<div class="list-group">
					    <a href="#" class="list-group-item list-group-item-action active"
						aria-current="true"> Menu </a> 
						<a href='<c:url value='/add'></c:url>'
						class="list-group-item list-group-item-action">Add TODO</a>
					    <a href='<c:url value='/home'></c:url>' class="list-group-item list-group-item-action">View TODO</a>
					    
				</div>
			</div>
			<div class="col-md-8">
    <h3 class="text-center">Content</h3>
    <c:if test="${page=='home'}">
    <h3 class="text-center">All TODOS</h3>
    
    <c:forEach items="${todos}" var="t">
    <div class="card">
    <div class="card-body">
    <h3><c:out value="${t.todoTitle} "></c:out></h3>
    <p><c:out value="${t.toDoContent} "></c:out></p>
    </div>
    </div>
    </c:forEach>
    </c:if>
    
    <c:if test="${page=='add'}">
    <h3 class="text-center">Add TODO</h3>
    <br>
    <form:form action="saveToDo" method="post" class="text-center" modelAttribute="todo">
    <div class="form-group">
    <form:input path="todoTitle" cssClass="form-control" placeholder="Enter your toDo title" />
  
    </div>
    
    <div class="form-group">
    <form:textarea path="toDoContent" cssClass="form-control" placeholder="Enter your todo content" cssStyle="height:280px;margin-top:10px;" />
    </div>
    <div class="container" style="margin-top:10px">
    <button class="btn btn-outline-success">Add ToDo</button>
    </div>
    </form:form>
    </c:if>
    
    </div>
    
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>