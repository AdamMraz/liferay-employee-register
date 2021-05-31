package com.liferay.EmployeeRegister.portlet;

import com.liferay.EmployeeRegister.service.model.Employee;
import com.liferay.EmployeeRegister.service.model.Position;
import com.liferay.EmployeeRegister.service.model.impl.PositionImpl;
import com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil;
import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;

/**
 * Portlet implementation class PositionRegisterMVC
 */
public class PositionRegisterMVC extends MVCPortlet {
	
	public void swapArchive (ActionRequest request, ActionResponse response) {
		Position position = new PositionImpl();
		try {
			 position = PositionLocalServiceUtil.getPosition(ParamUtil.getLong(request, "positionId"));
		} catch (PortalException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (position.getArchive()) {
			position.setArchive(false);
		}
		else if (!position.getArchive()) {
			position.setArchive(true);
		}
		try {
			PositionLocalServiceUtil.updatePosition(position);
		} catch (SystemException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
 
	public void addPosition(ActionRequest request, ActionResponse response) {
		try {
			long positionId = ParamUtil.getLong(request, "positionId");
			Position position = new PositionImpl();
			if (positionId == -1) {
				position.setPositionId(CounterLocalServiceUtil.increment(Position.class.getName()));
				position.setEmployeeId(-1);
			}
			else {
				position = PositionLocalServiceUtil.getPosition(positionId);
			}
			position.setName(ParamUtil.getString(request, "name"));
			position.setArchive(false);
			PositionLocalServiceUtil.updatePosition(position);
		}
		catch (Exception e) {
			
		}
	}
}
