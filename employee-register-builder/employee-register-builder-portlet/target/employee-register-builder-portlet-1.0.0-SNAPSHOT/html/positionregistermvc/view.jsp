<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Position"%>
<%@page import="com.liferay.EmployeeRegister.service.model.impl.PositionImpl"%>
<%@page import="com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil"%>

<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@page import="com.liferay.portal.kernel.language.LanguageUtil"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<portlet:defineObjects />

<aui:button-row cssClass="position-button">
	<portlet:renderURL var="addPositionURL">
		<portlet:param name="positionId" value="-1"/>
		<portlet:param name="mvcPath" value="/html/positionregistermvc/edit.jsp"></portlet:param>
	</portlet:renderURL>
	<aui:button onClick="<%= addPositionURL.toString() %>" value="Добавить должность"></aui:button>
</aui:button-row>

<liferay-ui:search-container delta="5" emptyResultsMessage="Список должностей пуст." deltaConfigurable="true">
	<liferay-ui:search-container-results
		results="<%= PositionLocalServiceUtil.getPositions(searchContainer.getStart(), searchContainer.getEnd()) %>"
		total="<%= PositionLocalServiceUtil.getPositionsCount() %>"
	/>

	<liferay-ui:search-container-row
		className="com.liferay.EmployeeRegister.service.model.Position"
		modelVar="position"
	>
		<liferay-ui:search-container-column-text property="name" name="Название" />
		<liferay-ui:search-container-column-text value="${position.archive == true ? \"В архиве\" : \"\"}" name="Статус архивности" />
		<liferay-ui:search-container-column-jsp path="/html/positionregistermvc/actions.jsp"></liferay-ui:search-container-column-jsp>
		
		
		
	</liferay-ui:search-container-row>

	<liferay-ui:search-iterator />
</liferay-ui:search-container>