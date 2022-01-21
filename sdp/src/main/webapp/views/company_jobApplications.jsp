<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>




<form:form action="/displayAll" method="post">
	<label for="cars">Choose Batch:</label>
	<select name="batch" id="cars">
		<c:forEach items="${allBatches}" var="li">        
			<option value="${li.getName()}">${li.getName()}</option>
		</c:forEach>
	</select>
  <br><br>
  <button>submit</button>
</form:form>