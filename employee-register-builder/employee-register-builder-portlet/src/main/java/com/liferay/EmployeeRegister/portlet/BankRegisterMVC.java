package com.liferay.EmployeeRegister.portlet;

import com.liferay.EmployeeRegister.service.model.Bank;
import com.liferay.EmployeeRegister.service.model.Employee;
import com.liferay.EmployeeRegister.service.model.impl.BankImpl;
import com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil;
import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

import java.util.ArrayList;
import java.util.List;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;

/**
 * Portlet implementation class BankRegisterMVC
 */
public class BankRegisterMVC extends MVCPortlet {
 
	//Добавление банка
	public void addBank(ActionRequest request, ActionResponse response) {
		long bankId = ParamUtil.getLong(request, "bankId");
		Bank bank = new BankImpl();
		try {
			if (bankId == -1) {
				bank.setBankId(CounterLocalServiceUtil.increment(Bank.class.getName()));
				bank.setName(ParamUtil.getString(request, "name"));	
			}
			else {
				bank = BankLocalServiceUtil.getBank(bankId);
			}
			bank.setBik(ParamUtil.getString(request, "bik"));
			bank.setAddress(ParamUtil.getString(request, "address"));
			BankLocalServiceUtil.updateBank(bank);
		}
		catch (Exception e) {
		}
	}

	public void getEmployeeByBankId(ActionRequest request, ActionResponse response) {
		List<Employee> result = new ArrayList<>();
		
		try {
			result.addAll(EmployeeLocalServiceUtil.getBankEmployees(ParamUtil.getInteger(request, "bankId")));
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("employeeList", result);
		request.setAttribute("hidden", "hidden");
		
		PortalUtil.copyRequestParameters(request, response);
	}
}
