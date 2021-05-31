<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@page import="com.liferay.portal.kernel.util.ParamUtil"%>
<%@page import="com.liferay.EmployeeRegister.service.model.Bank"%>
<%@page import="com.liferay.EmployeeRegister.service.model.impl.BankImpl"%>
<%@page import="com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil"%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://alloy.liferay.com/tld/aui" prefix="aui" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript">
	<%@include file="/js/bankregistermvc/edit.js"%>
</script>

<portlet:defineObjects />

<%
	long bankId = ParamUtil.getLong(request, "bankId");
	Bank bank = new BankImpl();
	Boolean inputDisabled = false;
	if (bankId != -1) {
		bank = BankLocalServiceUtil.getBank(bankId);
		bankId = bank.getBankId();
		inputDisabled = true;
	}
	request.setAttribute("bankId", bankId);
	request.setAttribute("inputDisabled", inputDisabled);
	request.setAttribute("bank", bank);
%>

<!-- Go Back URL -->
<portlet:renderURL var="goBackURL">
	<portlet:param name="mvcPath" value="/html/bankregistermvc/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="addBank" var="addBankURL">
	<portlet:param name="bankId" value="${bankId}"/>
</portlet:actionURL>

<aui:form action="<%= addBankURL %>" name="<portlet:namespace />fm<portlet:namespace />">
	<aui:fieldset>
		
		<aui:input label="Название банка*" name="name" disabled="${inputDisabled}" value="${bank.name}" id="bank-name"></aui:input>
		<aui:input label="БИК" name="bik" value="${bank.bik}"></aui:input>
		<aui:input label="Адрес" name="address" value="${bank.address}"></aui:input>
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit" value="Подтвердить" id="submit-button"></aui:button>
		<aui:button type="cancel" onClick="<%= goBackURL.toString() %>" value="Назад"></aui:button>
	</aui:button-row>
</aui:form>