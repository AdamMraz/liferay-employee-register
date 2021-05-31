<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<script src="https://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="https://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>

<script type="text/javascript">
	<%@include file="/js/eployeeregistermvc/edit.js"%>
</script>

<portlet:defineObjects />


<!-- Go Back URL -->
<portlet:renderURL var="goBackURL">
	<portlet:param name="mvcPath" value="/html/eployeeregistermvc/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="addEntry" var="addEntryURL"></portlet:actionURL>

<aui:form action="<%= addEntryURL %>" name="<portlet:namespace />fm<portlet:namespace />">
	<aui:fieldset>
		<aui:input label="Surname" name="surname"></aui:input>
		<aui:input label="Name" name="name"></aui:input>
		<aui:input label="Patronymic" name="patronymic"></aui:input>
		<aui:input label="Female" name="gender" type="radio" value="Female"></aui:input>
		<aui:input label="Male" name="gender" type="radio" value="Male"></aui:input>
		<aui:input cssClass="calendar" label="Birth Date" name="birthDate"></aui:input>
		<aui:input label="Position" name="position"></aui:input>
		<aui:input cssClass="calendar" label="Date Of Employment" name="dateOfEmployment"></aui:input>
		<aui:input label="Selary" name="selary"></aui:input>
		<aui:input label="Work phone" name="workPhone" type="tel"></aui:input>
		<aui:input label="Mobile phone" name="mobilePhone" type="tel"></aui:input>
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" value="Submit"></aui:button>
		<aui:button type="cancel" onClick="<%= goBackURL.toString() %>" value="Cancel"></aui:button>
	</aui:button-row>
</aui:form>