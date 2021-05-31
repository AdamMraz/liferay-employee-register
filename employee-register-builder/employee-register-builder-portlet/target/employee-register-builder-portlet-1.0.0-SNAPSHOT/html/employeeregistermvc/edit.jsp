<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@page import="com.liferay.EmployeeRegister.service.model.Employee"%>
<%@page import="com.liferay.EmployeeRegister.service.model.impl.EmployeeImpl"%>
<%@page import="com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Position"%>
<%@page import="com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Bank"%>
<%@page import="com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil"%>

<%@page import="java.text.SimpleDateFormat"%>


<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<script src="https://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="https://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	<%@include file="/js/employeeregistermvc/edit.js"%>
</script>

<portlet:defineObjects />

<%
	Employee employee = new EmployeeImpl();
	try {
		employee = EmployeeLocalServiceUtil.getEmployee(ParamUtil.getLong(request, "employeeId"));
	}
	catch (Exception e) {
	}
%>

<!-- Go Back URL -->
<portlet:renderURL var="goBackURL">
	<portlet:param name="mvcPath" value="/html/employeeregistermvc/view.jsp"></portlet:param>
</portlet:renderURL>

<!-- Add/Edit Employee -->
<portlet:actionURL name="addEmployee" var="addEntryURL">
	<portlet:param name="employeeId" value="${employeeId}"/>
</portlet:actionURL>

<aui:form action="<%= addEntryURL %>" name="<portlet:namespace />fm<portlet:namespace />">
	<aui:fieldset>
		<aui:input label="Фамилия*" name="surname" value="${employee.surname}" id="name"></aui:input>
		<aui:input label="Имя*" name="name" value="${employee.name}" id="surname"></aui:input>
		<aui:input label="Отчество*" name="patronymic" value="${employee.patronymic}" id="patronymic"></aui:input>
		<label>Пол:</label>
		<aui:input label="Женский" name="gender" type="radio" value="Female" checked="${f}"></aui:input>
		<aui:input label="Мужской" name="gender" type="radio" value="Male" checked="${m}"></aui:input>
		<aui:input cssClass="calendar" label="Дата рождения" name="birthDate" value="${birthDate}"></aui:input>
		<aui:input cssClass="calendar" label="Дата трудоустройства" name="dateOfEmployment" value="${dateOfEmployment}"></aui:input>
		<aui:input label="Зарплата" name="selary" value="${salary}"></aui:input>
		<aui:input label="Рабочий телефон" name="workPhone" type="tel" value="${employee.workPhone}"></aui:input>
		<aui:input label="Мобильный телефон" name="mobilePhone" type="tel" value="${employee.mobilePhone}"></aui:input>
		<aui:select label="Должность" name="positionId">
			<aui:option label="" value="-1" selected=""/>
			<%
				for (Position position : PositionLocalServiceUtil.getAllFreePosition(employee.getPositionId())) {
					boolean select = false;
					if (position.getPositionId() == employee.getPositionId()) {
						select = true;
					}
			%>
		    <aui:option label="<%= position.getName() %>" value="<%= position.getPositionId() %>" selected="<%= select %>"/>
		    <%
		    	}
		    %>
		</aui:select>
		<aui:select label="Банк" name="bankId">
			<aui:option label="" value="-1"/>
			<%
				for (Bank bank : BankLocalServiceUtil.getAllBanks()) {
					boolean select = false;
					if (bank.equals(BankLocalServiceUtil.getEmployeeBank(employee.getEmployeeId()))) {
						select = true;
					}
			%>
		    <aui:option label="<%= bank.getName() %>" value="<%= bank.getBankId() %>" selected="<%= select %>"/>
		    <%
		    	}
		    %>
		</aui:select>
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" value="Подтвердить" id="submit-button"></aui:button>
		<aui:button type="cancel" onClick="<%= goBackURL.toString() %>" value="Назад"></aui:button>
	</aui:button-row>
</aui:form>