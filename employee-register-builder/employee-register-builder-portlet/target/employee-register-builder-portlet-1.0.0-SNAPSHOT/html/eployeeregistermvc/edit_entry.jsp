<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<script src="https://cdn.alloyui.com/3.0.1/aui/aui-min.js"></script>
<link href="https://cdn.alloyui.com/3.0.1/aui-css/css/bootstrap.min.css" rel="stylesheet"></link>

<script>
	YUI().use(
		'aui-datepicker',
		function(Y) {
			new Y.DatePicker({
				trigger: '#_eployeeregistermvc_WAR_employeeregisterbuilderportlet_calendar',
				mask: '%d.%m.%Y',
		        popover: {
		        	zIndex: 1
		        },
		        on: {
		        	selectionChange: function(event) {
		            console.log(event.newSelection)
		        	}
				}
		    });
		}
	);
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
		<aui:input label="Female" name="gender" type="radio" value="female"></aui:input>
		<aui:input label="Male" name="gender" type="radio" value="male"></aui:input>
		<aui:input id="calendar" label="Birth Date" name="birthDate"></aui:input>
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" value="Submit"></aui:button>
		<aui:button type="cancel" onClick="<%= goBackURL.toString() %>" value="Cancel"></aui:button>
	</aui:button-row>
</aui:form>