<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
		<h2 style="float:left">Your todo's are :</h2>
		<a style="float:right;margin-top:30px;" type="button" class="btn btn-primary" href="/add-todo">
			<i class="glyphicon glyphicon-plus"></i>			
			Add todo
		</a>
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Description</th>
				<th>Target Date</th>
				<th>is Done?</th>
				<th>Operations</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.desc}</td>
					<td><fmt:formatDate value="${todo.targetDate}"
							pattern="dd/MM/yyyy" /></td>
					<td>
						<c:choose>
							<c:when test="${todo.done}">
								YES
								<br />
							</c:when>
							<c:otherwise>
								NO
								<br />
							</c:otherwise>
						</c:choose>						
					</td>
					<td>
						<div>
							<a href="/delete-todo?id=${todo.id}" type="button" class="btn btn-danger">
								<i class="glyphicon glyphicon-remove"></i>						
								Remove
							</a>
						</div>
					</td>
					<td>
						<div>
							<a type="button" class="btn btn-warning" href="/update-todo?id=${todo.id}">
								Edit &nbsp;							
								<i class="glyphicon glyphicon-pencil"></i>
							</a>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>	
</div>
<%@ include file="common/footer.jspf"%>