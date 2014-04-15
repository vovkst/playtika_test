<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("UTF-8");%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Calculator</title>
    <style type="text/css">
        .error { color: red;}
    </style>
</head>
<body>

<h3><spring:message code="label.contactmanager"/></h3>

<c:if test="${isIndex}">
<span style="float: right">
    <a href="?lang=en">en</a> | <a href="?lang=ru">ru</a>
</span>
</c:if>

<form:form method="POST" action="/calculate" commandName="operands">

    <table>
        <tr>
            <td><spring:message code="label.firstoperand"/></td>
            <td><form:input path="firstOperand"/></td>
            <td><form:errors path="firstOperand" cssClass="error" /></td>
        </tr>
        <tr>
            <td><spring:message code="label.operation"/></td>
            <td><form:select path="operation">
                <form:option value="+"><spring:message code="label.add"/></form:option>
                <option value="-"><spring:message code="label.subduct"/></option>
                <option value="*"><spring:message code="label.multiply"/></option>
                <option value="/"><spring:message code="label.divide"/></option>
                <option value="square root"><spring:message code="label.squareroot"/></option>
            </form:select>
            </td>
            <td><form:errors path="operation" cssClass="error" /></td>
        </tr>
        <tr>
            <td><spring:message code="label.secondoperand"/></td>
            <td><form:input path="secondOperand"/></td>
            <td><form:errors path="secondOperand" cssClass="error" /></td>
        </tr>
        <tr>
            <td><spring:message code="label.result"/></td>
            <td><label>
                <input type="text" disabled value=<%= (request.getParameter("result") ==
                null?"":request.getParameter("result"))%>>
            </label></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value=<spring:message code="label.addcontact"/>></td>
        </tr>
    </table>
</form:form>

</body>
</html>
