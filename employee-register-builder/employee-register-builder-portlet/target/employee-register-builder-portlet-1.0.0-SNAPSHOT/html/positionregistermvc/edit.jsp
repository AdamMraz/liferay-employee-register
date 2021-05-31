<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@page import="com.liferay.EmployeeRegister.service.model.Position"%>
<%@page import="com.liferay.EmployeeRegister.service.model.impl.PositionImpl"%>
<%@page import="com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<script src="https://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	<%@include file="/js/positionregistermvc/edit.js"%>
</script>

<portlet:defineObjects />

<%
	long positionId = ParamUtil.getLong(request, "positionId");
	Position position = new PositionImpl();
	if (positionId != -1) {
		position = PositionLocalServiceUtil.getPosition(positionId);
		positionId = position.getPositionId();
	}
	request.setAttribute("position", position);
	request.setAttribute("positionId", positionId);
%>

<!-- Go Back URL -->
<portlet:renderURL var="goBackURL">
	<portlet:param name="mvcPath" value="/html/positionregistermvc/view.jsp"></portlet:param>
</portlet:renderURL>

<!-- Add Position -->
<portlet:actionURL name="addPosition" var="addPositionURL">
	<portlet:param name="positionId" value="${positionId}"/>
</portlet:actionURL>

<aui:form action="<%= addPositionURL %>" name="<portlet:namespace />fm<portlet:namespace />">
	<aui:fieldset>
		<aui:input label="Должность*" name="name" id="position-name" value="${position.name}"></aui:input>
		
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" value="Подтвердить" id="submit-button"></aui:button>
		<aui:button type="cancel" onClick="<%= goBackURL.toString() %>" value="Назад"></aui:button>
	</aui:button-row>
</aui:form>