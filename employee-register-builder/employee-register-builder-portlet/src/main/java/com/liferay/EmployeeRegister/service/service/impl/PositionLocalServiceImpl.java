package com.liferay.EmployeeRegister.service.service.impl;

import com.liferay.EmployeeRegister.service.model.Bank;
import com.liferay.EmployeeRegister.service.model.Position;
import com.liferay.EmployeeRegister.service.model.impl.PositionImpl;
import com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.base.PositionLocalServiceBaseImpl;
import com.liferay.counter.service.CounterLocalServiceUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.dao.orm.DynamicQueryFactoryUtil;
import com.liferay.portal.kernel.dao.orm.PropertyFactoryUtil;
import com.liferay.portal.kernel.exception.PortalException;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.portlet.PortletClassLoaderUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * The implementation of the position local service.
 *
 * <p>
 * All custom service methods should be put in this class. Whenever methods are added, rerun ServiceBuilder to copy their definitions into the {@link com.liferay.EmployeeRegister.service.service.PositionLocalService} interface.
 *
 * <p>
 * This is a local service. Methods of this service will not have security checks based on the propagated JAAS credentials because this service can only be accessed from within the same VM.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see com.liferay.EmployeeRegister.service.service.base.PositionLocalServiceBaseImpl
 * @see com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil
 */
public class PositionLocalServiceImpl extends PositionLocalServiceBaseImpl {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never reference this interface directly. Always use {@link com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil} to access the position local service.
     */
	
	public List<Position> getAllFreePosition(long include) {
		List<Position> result = new ArrayList<>();
		
		if (include != -1) {
			try {
				result.add(PositionLocalServiceUtil.getPosition(include));
			} catch (PortalException | SystemException e1) {
			}
		}
		DynamicQuery query = DynamicQueryFactoryUtil
				.forClass(Position.class, "position", PortletClassLoaderUtil.getClassLoader());
		query.add(PropertyFactoryUtil.forName("position.employeeId").eq((long)-1));
		query.add(PropertyFactoryUtil.forName("position.archive").eq(false));
		
		try {
			result.addAll(PositionLocalServiceUtil.dynamicQuery(query));
		} catch (SystemException e) {
		}
		
		return result;
	}
}
