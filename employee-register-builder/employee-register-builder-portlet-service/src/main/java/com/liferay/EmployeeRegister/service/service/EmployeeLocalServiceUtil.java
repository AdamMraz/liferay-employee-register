package com.liferay.EmployeeRegister.service.service;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.InvokableLocalService;

/**
 * Provides the local service utility for Employee. This utility wraps
 * {@link com.liferay.EmployeeRegister.service.service.impl.EmployeeLocalServiceImpl} and is the
 * primary access point for service operations in application layer code running
 * on the local server. Methods of this service will not have security checks
 * based on the propagated JAAS credentials because this service can only be
 * accessed from within the same VM.
 *
 * @author Brian Wing Shun Chan
 * @see EmployeeLocalService
 * @see com.liferay.EmployeeRegister.service.service.base.EmployeeLocalServiceBaseImpl
 * @see com.liferay.EmployeeRegister.service.service.impl.EmployeeLocalServiceImpl
 * @generated
 */
public class EmployeeLocalServiceUtil {
    private static EmployeeLocalService _service;

    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify this class directly. Add custom service methods to {@link com.liferay.EmployeeRegister.service.service.impl.EmployeeLocalServiceImpl} and rerun ServiceBuilder to regenerate this class.
     */

    /**
    * Adds the employee to the database. Also notifies the appropriate model listeners.
    *
    * @param employee the employee
    * @return the employee that was added
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee addEmployee(
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().addEmployee(employee);
    }

    /**
    * Creates a new employee with the primary key. Does not add the employee to the database.
    *
    * @param employeeId the primary key for the new employee
    * @return the new employee
    */
    public static com.liferay.EmployeeRegister.service.model.Employee createEmployee(
        long employeeId) {
        return getService().createEmployee(employeeId);
    }

    /**
    * Deletes the employee with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param employeeId the primary key of the employee
    * @return the employee that was removed
    * @throws PortalException if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee deleteEmployee(
        long employeeId)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return getService().deleteEmployee(employeeId);
    }

    /**
    * Deletes the employee from the database. Also notifies the appropriate model listeners.
    *
    * @param employee the employee
    * @return the employee that was removed
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee deleteEmployee(
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().deleteEmployee(employee);
    }

    public static com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
        return getService().dynamicQuery();
    }

    /**
    * Performs a dynamic query on the database and returns the matching rows.
    *
    * @param dynamicQuery the dynamic query
    * @return the matching rows
    * @throws SystemException if a system exception occurred
    */
    @SuppressWarnings("rawtypes")
    public static java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().dynamicQuery(dynamicQuery);
    }

    /**
    * Performs a dynamic query on the database and returns a range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param dynamicQuery the dynamic query
    * @param start the lower bound of the range of model instances
    * @param end the upper bound of the range of model instances (not inclusive)
    * @return the range of matching rows
    * @throws SystemException if a system exception occurred
    */
    @SuppressWarnings("rawtypes")
    public static java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
        int end) throws com.liferay.portal.kernel.exception.SystemException {
        return getService().dynamicQuery(dynamicQuery, start, end);
    }

    /**
    * Performs a dynamic query on the database and returns an ordered range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param dynamicQuery the dynamic query
    * @param start the lower bound of the range of model instances
    * @param end the upper bound of the range of model instances (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of matching rows
    * @throws SystemException if a system exception occurred
    */
    @SuppressWarnings("rawtypes")
    public static java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
        int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService()
                   .dynamicQuery(dynamicQuery, start, end, orderByComparator);
    }

    /**
    * Returns the number of rows that match the dynamic query.
    *
    * @param dynamicQuery the dynamic query
    * @return the number of rows that match the dynamic query
    * @throws SystemException if a system exception occurred
    */
    public static long dynamicQueryCount(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().dynamicQueryCount(dynamicQuery);
    }

    /**
    * Returns the number of rows that match the dynamic query.
    *
    * @param dynamicQuery the dynamic query
    * @param projection the projection to apply to the query
    * @return the number of rows that match the dynamic query
    * @throws SystemException if a system exception occurred
    */
    public static long dynamicQueryCount(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery,
        com.liferay.portal.kernel.dao.orm.Projection projection)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().dynamicQueryCount(dynamicQuery, projection);
    }

    public static com.liferay.EmployeeRegister.service.model.Employee fetchEmployee(
        long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().fetchEmployee(employeeId);
    }

    /**
    * Returns the employee with the primary key.
    *
    * @param employeeId the primary key of the employee
    * @return the employee
    * @throws PortalException if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee getEmployee(
        long employeeId)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return getService().getEmployee(employeeId);
    }

    public static com.liferay.portal.model.PersistedModel getPersistedModel(
        java.io.Serializable primaryKeyObj)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return getService().getPersistedModel(primaryKeyObj);
    }

    /**
    * Returns a range of all the employees.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of employees
    * @param end the upper bound of the range of employees (not inclusive)
    * @return the range of employees
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().getEmployees(start, end);
    }

    /**
    * Returns the number of employees.
    *
    * @return the number of employees
    * @throws SystemException if a system exception occurred
    */
    public static int getEmployeesCount()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().getEmployeesCount();
    }

    /**
    * Updates the employee in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
    *
    * @param employee the employee
    * @return the employee that was updated
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee updateEmployee(
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().updateEmployee(employee);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void addBankEmployee(long bankId, long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().addBankEmployee(bankId, employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void addBankEmployee(long bankId,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().addBankEmployee(bankId, employee);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void addBankEmployees(long bankId, long[] employeeIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().addBankEmployees(bankId, employeeIds);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void addBankEmployees(long bankId,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> Employees)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().addBankEmployees(bankId, Employees);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void clearBankEmployees(long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().clearBankEmployees(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void deleteBankEmployee(long bankId, long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().deleteBankEmployee(bankId, employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void deleteBankEmployee(long bankId,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().deleteBankEmployee(bankId, employee);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void deleteBankEmployees(long bankId, long[] employeeIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().deleteBankEmployees(bankId, employeeIds);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void deleteBankEmployees(long bankId,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> Employees)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().deleteBankEmployees(bankId, Employees);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getBankEmployees(
        long bankId) throws com.liferay.portal.kernel.exception.SystemException {
        return getService().getBankEmployees(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getBankEmployees(
        long bankId, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().getBankEmployees(bankId, start, end);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getBankEmployees(
        long bankId, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService()
                   .getBankEmployees(bankId, start, end, orderByComparator);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static int getBankEmployeesCount(long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().getBankEmployeesCount(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static boolean hasBankEmployee(long bankId, long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().hasBankEmployee(bankId, employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static boolean hasBankEmployees(long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getService().hasBankEmployees(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    public static void setBankEmployees(long bankId, long[] employeeIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        getService().setBankEmployees(bankId, employeeIds);
    }

    /**
    * Returns the Spring bean ID for this bean.
    *
    * @return the Spring bean ID for this bean
    */
    public static java.lang.String getBeanIdentifier() {
        return getService().getBeanIdentifier();
    }

    /**
    * Sets the Spring bean ID for this bean.
    *
    * @param beanIdentifier the Spring bean ID for this bean
    */
    public static void setBeanIdentifier(java.lang.String beanIdentifier) {
        getService().setBeanIdentifier(beanIdentifier);
    }

    public static java.lang.Object invokeMethod(java.lang.String name,
        java.lang.String[] parameterTypes, java.lang.Object[] arguments)
        throws java.lang.Throwable {
        return getService().invokeMethod(name, parameterTypes, arguments);
    }

    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployeeByName(
        java.lang.String name, java.util.Date startDate,
        java.util.Date finishDate) {
        return getService().getEmployeeByName(name, startDate, finishDate);
    }

    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getAllEmployee() {
        return getService().getAllEmployee();
    }

    public static void clearService() {
        _service = null;
    }

    public static EmployeeLocalService getService() {
        if (_service == null) {
            InvokableLocalService invokableLocalService = (InvokableLocalService) PortletBeanLocatorUtil.locate(ClpSerializer.getServletContextName(),
                    EmployeeLocalService.class.getName());

            if (invokableLocalService instanceof EmployeeLocalService) {
                _service = (EmployeeLocalService) invokableLocalService;
            } else {
                _service = new EmployeeLocalServiceClp(invokableLocalService);
            }

            ReferenceRegistry.registerReference(EmployeeLocalServiceUtil.class,
                "_service");
        }

        return _service;
    }

    /**
     * @deprecated As of 6.2.0
     */
    public void setService(EmployeeLocalService service) {
    }
}
