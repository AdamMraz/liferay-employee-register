<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Position"%>

<%@page import="com.liferay.portal.kernel.dao.search.ResultRow"%>
<%@page import="com.liferay.portal.kernel.util.WebKeys"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<portlet:defineObjects />

<%
	ResultRow row = (ResultRow) request
			.getAttribute(WebKeys.SEARCH_CONTAINER_RESULT_ROW);
	Position position = (Position) row.getObject();
%>

<liferay-ui:icon-menu message="Действия" icon="" triggerCssClass="icon-cog">
	<portlet:renderURL var="editInf">
		<portlet:param name="positionId" value="<%= String.valueOf(position.getPositionId()) %>"/>
		<portlet:param name="mvcPath" value="/html/positionregistermvc/edit.jsp"/>
	</portlet:renderURL>

	<liferay-ui:icon message="Изменить" url="<%= editInf.toString() %>" iconCssClass="icon-edit"></liferay-ui:icon>
	
	<portlet:actionURL name="swapArchive" var="swapArchiveURL">
		<portlet:param name="positionId" value="<%= String.valueOf(position.getPositionId()) %>"/>
	</portlet:actionURL>
	
	<liferay-ui:icon message="Сменить архивность" url="<%= swapArchiveURL.toString() %>" iconCssClass="icon-refresh"></liferay-ui:icon>
</liferay-ui:icon-menu>	