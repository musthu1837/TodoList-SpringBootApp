<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<div class="container">
	<h2>
		Add todo for <i>${name}</i>
	</h2>
	<form:form method="post" action="/add-todo" modelAttribute="todo">
		<fieldset class="form-group">
			<form:label path="desc">Description :</form:label>
			<form:input path="desc" type="text" name="desc" class="form-control"
				required="required" />
			<form:errors path="desc" cssClass="text-warning"></form:errors>
		</fieldset>
		<fieldset class="form-group">
			<form:label path="desc">Target Date :</form:label>
			<form:input path="targetDate" type="text" name="desc" class="form-control"
				required="required" />
			<form:errors path="targetDate" cssClass="text-warning"></form:errors>
		</fieldset>		
		<c:choose>
			<c:when test="${todo.id == 0}">
				<button type="submit" class="btn btn-success">Add</button>
				<br />
			</c:when>
			<c:otherwise>
				<button type="submit" class="btn btn-success">Update</button>
				<br />
			</c:otherwise>
		</c:choose>
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>