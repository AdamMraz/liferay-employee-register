package com.liferay.EmployeeRegister.portlet;

import com.liferay.EmployeeRegister.service.model.Employee;
import com.liferay.EmployeeRegister.service.model.Position;
import com.liferay.EmployeeRegister.service.model.impl.EmployeeImpl;
import com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil;
import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.portal.util.PortalUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;

import java.io.IOException;
import java.text.SimpleDateFormat;

/**
 * Portlet implementation class EployeeRegisterMVC
 */
public class EmployeeRegisterMVC extends MVCPortlet {
	
	@Override
	public void render (RenderRequest request, RenderResponse response)
			  throws IOException, PortletException {
		if (ParamUtil.getString(request, "name").isEmpty() &&
				ParamUtil.getString(request, "startDate").isEmpty() &&
				ParamUtil.getString(request, "finishDate").isEmpty()) {
			List<Employee> result = new ArrayList<>();		
			result.addAll(EmployeeLocalServiceUtil.getAllEmployee());
			request.setAttribute("employeeList", result);
		}
		super.render(request, response);
	}

	//Фильтры
	public void filter (ActionRequest request, ActionResponse response) {
		SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
		
		Date startDate = null;
		Date finishDate = null;
		
		String name = ParamUtil.getString(request, "name");
		
		if (!ParamUtil.getString(request, "startDate").isEmpty()) {
			startDate = ParamUtil.getDate(request, "startDate", format);
		}
		if (!ParamUtil.getString(request, "finishDate").isEmpty()) {
			finishDate = ParamUtil.getDate(request, "finishDate", format);
		}
		List<Employee> result = new ArrayList<>();
		if (!name.isEmpty() || startDate != null || finishDate != null) {
			result.addAll(EmployeeLocalServiceUtil.getEmployeeByName(name, startDate, finishDate));
		}
		request.setAttribute("employeeList", result);
		
		PortalUtil.copyRequestParameters(request, response);
	}
	
	//Смена статуса архивности
	public void swapArchive (ActionRequest request, ActionResponse response) {
		Employee employee = new EmployeeImpl();
		try {
			 employee = EmployeeLocalServiceUtil.getEmployee(ParamUtil.getLong(request, "employeeId"));
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (employee.getArchive()) {
			employee.setArchive(false);
		}
		else if (!employee.getArchive()) {
			employee.setArchive(true);
		}
		try {
			EmployeeLocalServiceUtil.updateEmployee(employee);
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	//Добавление/изменение сотрудника в базу
	public void addEmployee(ActionRequest request, ActionResponse response) {
		long employeeId = ParamUtil.getLong(request, "employeeId");
		Employee employee = new EmployeeImpl();
		try {
			if (employeeId == -1) {
				employee.setEmployeeId(CounterLocalServiceUtil.increment(Employee.class.getName()));
				employee.setPositionId(-1);
				employee.setArchive(false);
			}
			else {
				employee = EmployeeLocalServiceUtil.getEmployee(employeeId);
			}
			employee.setSurname(ParamUtil.getString(request, "surname"));
			employee.setName(ParamUtil.getString(request, "name"));
			employee.setPatronymic(ParamUtil.getString(request, "patronymic"));
			employee.setGender(ParamUtil.getString(request, "gender"));
			try {
				employee.setBirthDate(new SimpleDateFormat("dd.MM.yyyy")
						.parse(ParamUtil.getString(request, "birthDate")));
			}
			catch (Exception e) {
			}
			long positionId = ParamUtil.getLong(request, "positionId");
			
			if (employee.getPositionId() != positionId) {
				if (employee.getPositionId() != -1) {
					try {
						Position position = PositionLocalServiceUtil.getPosition(employee.getPositionId());
						position.setEmployeeId(-1);
						PositionLocalServiceUtil.updatePosition(position);
					}
					catch (Exception e) {
						
					}
				}
				
				try {
					Position position = PositionLocalServiceUtil.getPosition(positionId);
					position.setEmployeeId(employee.getEmployeeId());
					PositionLocalServiceUtil.updatePosition(position);
				}
				catch (Exception e) {
					
				}
				
				
				employee.setPositionId(positionId);
			}
			
			try {
				employee.setDateOfEmployment(new SimpleDateFormat("dd.MM.yyyy")
						.parse(ParamUtil.getString(request, "dateOfEmployment")));
			}
			catch (Exception e) {
			}
			
			try {
				employee.setSalary(Integer
						.parseInt(ParamUtil.getString(request, "selary")));
			}
			catch (Exception e) {
			}
			employee.setWorkPhone(ParamUtil.getString(request, "workPhone"));
			employee.setMobilePhone(ParamUtil.getString(request, "mobilePhone"));
			
			try {
				long bankId = ParamUtil.getLong(request, "bankId");
				long oldBankId = -1;
				try {
					oldBankId = BankLocalServiceUtil.getEmployeeBank(employee.getEmployeeId()).getBankId();
				}
				catch (NullPointerException e) {
					
				}
				if (oldBankId != bankId) {
					BankLocalServiceUtil.clearEmployeeBanks(employee.getEmployeeId());
					EmployeeLocalServiceUtil.addBankEmployee(bankId, employee.getEmployeeId());
				}
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			EmployeeLocalServiceUtil.updateEmployee(employee);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	//Перход на страницу добавления/изменения
	public void redirectAddEmployee(ActionRequest request, ActionResponse response) {
		long employeeId = ParamUtil.getLong(request, "employeeId");
		Employee employee = new EmployeeImpl();
		Boolean f = false;
		Boolean m = false;
		String birthDate = "";
		String dateOfEmployment = "";
		String salary = "";
		if (employeeId != -1) {
			try {
				employee = EmployeeLocalServiceUtil.getEmployee(employeeId);
			} catch (PortalException | SystemException e) {
			}
			employeeId = employee.getEmployeeId();
			SimpleDateFormat format = new SimpleDateFormat("dd.MM.yyyy");
			try {
				birthDate = format.format(employee.getBirthDate());
			}
			catch (Exception e) {
			}
			try {
				dateOfEmployment = format.format(employee.getDateOfEmployment());
			}
			catch (Exception e) {
			}
			salary = String.valueOf(employee.getSalary());
			if(employee.getGender().equals("Female")) {
				f = true;
			}
			else if(employee.getGender().equals("Male")) {
				m = true;
			}
		}
		request.setAttribute("birthDate", birthDate);
		request.setAttribute("dateOfEmployment", dateOfEmployment);
		request.setAttribute("salary", salary);
		request.setAttribute("f", f);
		request.setAttribute("m", m);
		request.setAttribute("employeeId", employeeId);
		request.setAttribute("employee", employee);
		
		PortalUtil.copyRequestParameters(request, response);
	}
}
