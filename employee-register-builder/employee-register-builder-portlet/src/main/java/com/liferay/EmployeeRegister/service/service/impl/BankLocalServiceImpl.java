package com.liferay.EmployeeRegister.service.service.impl;

import com.liferay.EmployeeRegister.service.NoSuchBankException;
import com.liferay.EmployeeRegister.service.model.Bank;
import com.liferay.EmployeeRegister.service.model.impl.BankImpl;
import com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.base.BankLocalServiceBaseImpl;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.dao.orm.DynamicQueryFactoryUtil;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.portlet.PortletClassLoaderUtil;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The implementation of the bank local service.
 *
 * <p>
 * All custom service methods should be put in this class. Whenever methods are added, rerun ServiceBuilder to copy their definitions into the {@link com.liferay.EmployeeRegister.service.service.BankLocalService} interface.
 *
 * <p>
 * This is a local service. Methods of this service will not have security checks based on the propagated JAAS credentials because this service can only be accessed from within the same VM.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see com.liferay.EmployeeRegister.service.service.base.BankLocalServiceBaseImpl
 * @see com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil
 */
public class BankLocalServiceImpl extends BankLocalServiceBaseImpl {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never reference this interface directly. Always use {@link com.liferay.EmployeeRegister.service.service.BankLocalServiceUtil} to access the bank local service.
     */
	
	public List<Bank> getAllBanks() {
		List<Bank> result = new ArrayList<>();
		
		DynamicQuery query = DynamicQueryFactoryUtil
				.forClass(Bank.class, "bank", PortletClassLoaderUtil.getClassLoader());
		try {
			result.addAll(BankLocalServiceUtil.dynamicQuery(query));
		} catch (SystemException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public Bank getEmployeeBank (long employeeId) throws NoSuchBankException {
		Bank bank = new BankImpl();
		try {
			bank = BankLocalServiceUtil.getEmployeeBanks(employeeId).get(0);
			return bank;
		} catch (Exception e) {
			return null;
		}
	}
}
