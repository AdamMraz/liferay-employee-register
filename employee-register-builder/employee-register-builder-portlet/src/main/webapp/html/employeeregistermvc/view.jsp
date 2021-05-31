<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Employee"%>
<%@page import="com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Position"%>
<%@page import="com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Bank"%>
<%@page import="com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.liferay.portal.kernel.language.LanguageUtil"%>
<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@page import="com.liferay.portal.kernel.util.ListUtil" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<style type="text/css">
	<%@include file="/css/employeeregistermvc/view.css" %>
</style>

<script type="text/javascript">
	<%@include file="/js/employeeregistermvc/view.js" %>
</script>

<portlet:defineObjects />

<%
	SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
	request.setAttribute("format", format);
%>

<portlet:renderURL var="iteratorURL">
       <portlet:param name="mvcPath" value="/html/employeeregistermvc/view.jsp" />
</portlet:renderURL>

<portlet:actionURL name="filter" var="filterURL">
	<portlet:param name="jspPage" value="/html/employeeregistermvc/view.jsp"></portlet:param>
</portlet:actionURL>

<aui:button-row cssClass="employee-button ${hidden}">
	<portlet:actionURL name="redirectAddEmployee" var="addEmployeeURL">
		<portlet:param name="jspPage" value="/html/employeeregistermvc/edit.jsp"></portlet:param>
		<portlet:param name="employeeId" value="-1"/>
	</portlet:actionURL>
	<aui:button onClick="<%= addEmployeeURL.toString() %>" value="Добавить сотрудника"></aui:button>
</aui:button-row>
	
<aui:form name="<portlet:namespace />fm<portlet:namespace />" action="<%= filterURL.toString() %>" cssClass="${hidden}">
	<aui:fieldset cssClass="filter-fieldset">
		<p class="filter-text">Имя:</p>
		<aui:input label="" name="name" cssClass="filter-imput" wrapperCssClass="filter-imput-div"></aui:input>
		<p class="filter-text">Дата рождения:</p>
		<aui:input label="" name="startDate" cssClass="filter-imput calendar" wrapperCssClass="filter-imput-div"></aui:input>
		<p class="filter-text">—</p>
		<aui:input label="" name="finishDate" cssClass="filter-imput calendar" wrapperCssClass="filter-imput-div"></aui:input>
	</aui:fieldset>
	<aui:button-row cssClass="filter-button-row">
		<aui:button type="submit" value="Подтвердить"></aui:button>
	</aui:button-row>
</aui:form>


<liferay-ui:search-container delta="5" deltaConfigurable="true" emptyResultsMessage="Сотрудники не найдены.">
	<liferay-ui:search-container-results
		results="${employeeList.subList(searchContainer.getStart(), searchContainer.getEnd() < (employeeList.size()) ? (searchContainer.getEnd()) : (employeeList.size()))}"
		total="${employeeList.size()}"
	/>

	<liferay-ui:search-container-row
		className="com.liferay.EmployeeRegister.service.model.Employee"
		modelVar="employee"
	>
	
		<%
			long positionId = employee.getPositionId();
			String positionName = "";
			if (positionId != -1) {
				StringBuilder builder = new StringBuilder("");
				Position position = PositionLocalServiceUtil.getPosition(positionId);
				builder.append(position.getName());	
				if (position.getArchive()) {
					builder.append(" (Archive)");
				}
				positionName = builder.toString();
			}
			
			String bankName = "";
			try {
				bankName = BankLocalServiceUtil.getEmployeeBank(employee.getEmployeeId()).getName();
			}
			catch (Exception e) {
			}
			request.setAttribute("bankName", bankName);
			request.setAttribute("position", positionName);
		%>

		<liferay-ui:search-container-column-text property="surname" name="Фамилия" />
		<liferay-ui:search-container-column-text property="name" name="Имя" />
		<liferay-ui:search-container-column-text property="patronymic" name="Отчество" />
		<liferay-ui:search-container-column-text value="${employee.gender == \"Male\" ? \"М\" : employee.gender == \"Female\" ? \"Ж\" : \"\"}" name="Пол" />
		<liferay-ui:search-container-column-text value="${employee.birthDate != null ? format.format(employee.birthDate) : \"\"}" name="Дата рождения" />
		<liferay-ui:search-container-column-text value="${employee.dateOfEmployment != null ? format.format(employee.dateOfEmployment) : \"\"}" name="Дата трудоустройства" />
		<liferay-ui:search-container-column-text property="salary" name="Зарплата" />
		<liferay-ui:search-container-column-text property="workPhone" name="Рабочий телефон" />
		<liferay-ui:search-container-column-text property="mobilePhone" name="Мобильный телефон" />
		<liferay-ui:search-container-column-text name="Должность" value="${position}"/>
		<liferay-ui:search-container-column-text name="Банк" value="${bankName}"/>
		<liferay-ui:search-container-column-text value="${employee.archive == true ? \"В архиве\" : \"\"}" name="Статус архивности" />
		<liferay-ui:search-container-column-jsp path="/html/employeeregistermvc/actions.jsp"></liferay-ui:search-container-column-jsp>
		
	</liferay-ui:search-container-row>

	<liferay-ui:search-iterator />
</liferay-ui:search-container>