<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Employee"%>

<%@page import="com.liferay.portal.kernel.dao.search.ResultRow"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<portlet:defineObjects />

<%
	ResultRow row = (ResultRow) request
			.getAttribute(WebKeys.SEARCH_CONTAINER_RESULT_ROW);

	Employee employee = (Employee) row.getObject();
%>

<liferay-ui:icon-menu message="Действия" icon="" triggerCssClass="icon-cog">
	<portlet:actionURL name="redirectAddEmployee" var="editInf">
		<portlet:param name="jspPage" value="/html/employeeregistermvc/edit.jsp"></portlet:param>
		<portlet:param name="employeeId" value="<%= String.valueOf(employee.getEmployeeId()) %>"/>
	</portlet:actionURL>

	<liferay-ui:icon message="Изменить" url="<%= editInf.toString() %>" iconCssClass="icon-edit"></liferay-ui:icon>
	
	<portlet:actionURL name="swapArchive" var="swapArchiveURL">
		<portlet:param name="employeeId" value="<%= String.valueOf(employee.getEmployeeId()) %>"/>
	</portlet:actionURL>
	
	<liferay-ui:icon message="Сменить архивность" url="<%= swapArchiveURL.toString() %>" iconCssClass="icon-refresh"></liferay-ui:icon>
</liferay-ui:icon-menu>	