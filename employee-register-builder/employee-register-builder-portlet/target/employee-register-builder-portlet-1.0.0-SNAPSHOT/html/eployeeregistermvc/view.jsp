<%@page import="com.liferay.EmployeeRegister.service.model.Employee"%>
<%@page import="com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.liferay.portal.kernel.language.LanguageUtil"%>
<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@page import="com.liferay.portal.kernel.util.ListUtil" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>


<portlet:defineObjects />

<%
	SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");	
	request.setAttribute("format", format);
%>

<portlet:renderURL var="iteratorURL">
       <portlet:param name="mvcPath" value="/html/bankregistermvc/view.jsp" />
</portlet:renderURL>

<aui:button-row cssClass="employee-button">
	<portlet:renderURL var="addEntryURL">
		<portlet:param name="mvcPath" value="/html/eployeeregistermvc/edit.jsp"></portlet:param>
	</portlet:renderURL>
	<aui:button onClick="<%= addEntryURL.toString() %>" value="Add Entry"></aui:button>
</aui:button-row>



<liferay-ui:search-container delta="10" deltaConfigurable="true" emptyResultsMessage="Employee Register is empty.">
	<liferay-ui:search-container-results
		results="<%= EmployeeLocalServiceUtil.getEmployees(searchContainer.getStart(), searchContainer.getEnd()) %>"
		total="<%= EmployeeLocalServiceUtil.getEmployeesCount() %>"
	/>

	<liferay-ui:search-container-row
		className="com.liferay.EmployeeRegister.service.model.Employee"
		modelVar="employee"
	>
	
		<portlet:renderURL var="editInf">
			<portlet:param name="employeeId" value="${employee.employeeId}"/>
			<portlet:param name="mvcPath" value="/html/employeeregistermvc/edit.jsp"/>
		</portlet:renderURL>

		<liferay-ui:search-container-column-text property="name" name="Name" />
		<liferay-ui:search-container-column-text property="surname" name="Surname" />
		<liferay-ui:search-container-column-text property="patronymic" name="Patronymic" />
		<liferay-ui:search-container-column-text property="gender" name="Gender" />
		<liferay-ui:search-container-column-text value="${format.format(employee.birthDate)}" name="Birth date" />
		<liferay-ui:search-container-column-text value="${format.format(employee.dateOfEmployment)}" name="Date of employment" />
		<liferay-ui:search-container-column-text property="salary" name="Salary" />
		<liferay-ui:search-container-column-text property="workPhone" name="Work phone" />
		<liferay-ui:search-container-column-text property="mobilePhone" name="Mobile phone" />
		<liferay-ui:search-container-column-text property="archive" name="Archive" />
		<liferay-ui:search-container-column-text name="Position" />
		<liferay-ui:search-container-column-text name="Bank" />
		<liferay-ui:search-container-column-text name="Edit" value="Edit employee information" href="${editInf}"/>
		<liferay-ui:search-container-column-text name="Edit" value="Edit employee information" href="${editInf}"/>
		
	</liferay-ui:search-container-row>

	<liferay-ui:search-iterator />
</liferay-ui:search-container>