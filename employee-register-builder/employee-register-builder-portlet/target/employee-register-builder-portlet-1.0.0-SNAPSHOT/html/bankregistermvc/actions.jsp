<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Bank"%>

<%@page import="com.liferay.portal.kernel.dao.search.ResultRow"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<portlet:defineObjects />

<%
	ResultRow row = (ResultRow) request
			.getAttribute(WebKeys.SEARCH_CONTAINER_RESULT_ROW);

	Bank bank = (Bank) row.getObject();
%>

<liferay-ui:icon-menu message="Действия" icon="" triggerCssClass="icon-cog">
	<portlet:renderURL var="editInf">
		<portlet:param name="bankId" value="<%= String.valueOf(bank.getBankId()) %>"/>
		<portlet:param name="mvcPath" value="/html/bankregistermvc/edit.jsp"/>
	</portlet:renderURL>

	<liferay-ui:icon message="Изменить" url="<%= editInf.toString() %>" iconCssClass="icon-edit"></liferay-ui:icon>
	
	<portlet:actionURL name="getEmployeeByBankId" var="getEmployeeByBankIdURL">
		<portlet:param name="bankId" value="<%= String.valueOf(bank.getBankId()) %>"/>
		<portlet:param name="jspPage" value="/html/employeeregistermvc/view.jsp"></portlet:param>
	</portlet:actionURL>

	<liferay-ui:icon message="Список сотрудников" url="<%= getEmployeeByBankIdURL.toString() %>" iconCssClass="icon-edit"></liferay-ui:icon>
</liferay-ui:icon-menu>	