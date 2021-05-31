<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.EmployeeRegister.service.model.Bank"%>
<%@page import="com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil"%>

<%@page import="com.liferay.portal.kernel.language.LanguageUtil"%>
<%@page import="com.liferay.portal.util.PortalUtil"%>
<%@ page import="com.liferay.portal.kernel.util.ListUtil" %>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/portlet" prefix="liferay-portlet" %>

<portlet:defineObjects />


<portlet:renderURL var="iteratorURL">
       <portlet:param name="mvcPath" value="/html/bankregistermvc/view.jsp" />
</portlet:renderURL>

<aui:button-row cssClass="bank-button">
	<portlet:renderURL var="addBankURL">
		<portlet:param name="bankId" value="-1"/>
		<portlet:param name="mvcPath" value="/html/bankregistermvc/edit.jsp"></portlet:param>
	</portlet:renderURL>
	<aui:button onClick="<%= addBankURL.toString() %>" value="Добавить банк"></aui:button>
</aui:button-row>

<liferay-ui:search-container delta="5" deltaConfigurable="true" emptyResultsMessage="Банки не найдены.">
	<liferay-ui:search-container-results
		results="<%= BankLocalServiceUtil.getBanks(searchContainer.getStart(), searchContainer.getEnd()) %>"
		total="<%= BankLocalServiceUtil.getBanksCount() %>"
	/>

	<liferay-ui:search-container-row
		className="com.liferay.EmployeeRegister.service.model.Bank"
		modelVar="bank"
	>

		<liferay-ui:search-container-column-text property="name" name="Название банка"/>
		<liferay-ui:search-container-column-text property="bik" name="БИК"/>
		<liferay-ui:search-container-column-text property="address" name="Адрес"/>
		<liferay-ui:search-container-column-jsp path="/html/bankregistermvc/actions.jsp"></liferay-ui:search-container-column-jsp>
		
		
	</liferay-ui:search-container-row>

	<liferay-ui:search-iterator />
</liferay-ui:search-container>