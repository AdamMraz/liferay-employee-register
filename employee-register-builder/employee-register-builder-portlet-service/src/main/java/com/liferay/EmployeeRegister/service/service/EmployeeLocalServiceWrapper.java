package com.liferay.EmployeeRegister.service.service;

import com.liferay.portal.service.ServiceWrapper;

/**
 * Provides a wrapper for {@link EmployeeLocalService}.
 *
 * @author Brian Wing Shun Chan
 * @see EmployeeLocalService
 * @generated
 */
public class EmployeeLocalServiceWrapper implements EmployeeLocalService,
    ServiceWrapper<EmployeeLocalService> {
    private EmployeeLocalService _employeeLocalService;

    public EmployeeLocalServiceWrapper(
        EmployeeLocalService employeeLocalService) {
        _employeeLocalService = employeeLocalService;
    }

    /**
    * Adds the employee to the database. Also notifies the appropriate model listeners.
    *
    * @param employee the employee
    * @return the employee that was added
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Employee addEmployee(
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.addEmployee(employee);
    }

    /**
    * Creates a new employee with the primary key. Does not add the employee to the database.
    *
    * @param employeeId the primary key for the new employee
    * @return the new employee
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Employee createEmployee(
        long employeeId) {
        return _employeeLocalService.createEmployee(employeeId);
    }

    /**
    * Deletes the employee with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param employeeId the primary key of the employee
    * @return the employee that was removed
    * @throws PortalException if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Employee deleteEmployee(
        long employeeId)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.deleteEmployee(employeeId);
    }

    /**
    * Deletes the employee from the database. Also notifies the appropriate model listeners.
    *
    * @param employee the employee
    * @return the employee that was removed
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Employee deleteEmployee(
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.deleteEmployee(employee);
    }

    @Override
    public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
        return _employeeLocalService.dynamicQuery();
    }

    /**
    * Performs a dynamic query on the database and returns the matching rows.
    *
    * @param dynamicQuery the dynamic query
    * @return the matching rows
    * @throws SystemException if a system exception occurred
    */
    @Override
    @SuppressWarnings("rawtypes")
    public java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.dynamicQuery(dynamicQuery);
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
    @Override
    @SuppressWarnings("rawtypes")
    public java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
        int end) throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.dynamicQuery(dynamicQuery, start, end);
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
    @Override
    @SuppressWarnings("rawtypes")
    public java.util.List dynamicQuery(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery, int start,
        int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.dynamicQuery(dynamicQuery, start, end,
            orderByComparator);
    }

    /**
    * Returns the number of rows that match the dynamic query.
    *
    * @param dynamicQuery the dynamic query
    * @return the number of rows that match the dynamic query
    * @throws SystemException if a system exception occurred
    */
    @Override
    public long dynamicQueryCount(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.dynamicQueryCount(dynamicQuery);
    }

    /**
    * Returns the number of rows that match the dynamic query.
    *
    * @param dynamicQuery the dynamic query
    * @param projection the projection to apply to the query
    * @return the number of rows that match the dynamic query
    * @throws SystemException if a system exception occurred
    */
    @Override
    public long dynamicQueryCount(
        com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery,
        com.liferay.portal.kernel.dao.orm.Projection projection)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.dynamicQueryCount(dynamicQuery, projection);
    }

    @Override
    public com.liferay.EmployeeRegister.service.model.Employee fetchEmployee(
        long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.fetchEmployee(employeeId);
    }

    /**
    * Returns the employee with the primary key.
    *
    * @param employeeId the primary key of the employee
    * @return the employee
    * @throws PortalException if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Employee getEmployee(
        long employeeId)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getEmployee(employeeId);
    }

    @Override
    public com.liferay.portal.model.PersistedModel getPersistedModel(
        java.io.Serializable primaryKeyObj)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getPersistedModel(primaryKeyObj);
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
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getEmployees(start, end);
    }

    /**
    * Returns the number of employees.
    *
    * @return the number of employees
    * @throws SystemException if a system exception occurred
    */
    @Override
    public int getEmployeesCount()
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getEmployeesCount();
    }

    /**
    * Updates the employee in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
    *
    * @param employee the employee
    * @return the employee that was updated
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Employee updateEmployee(
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.updateEmployee(employee);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addBankEmployee(long bankId, long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.addBankEmployee(bankId, employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addBankEmployee(long bankId,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.addBankEmployee(bankId, employee);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addBankEmployees(long bankId, long[] employeeIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.addBankEmployees(bankId, employeeIds);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addBankEmployees(long bankId,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> Employees)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.addBankEmployees(bankId, Employees);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void clearBankEmployees(long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.clearBankEmployees(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteBankEmployee(long bankId, long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.deleteBankEmployee(bankId, employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteBankEmployee(long bankId,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.deleteBankEmployee(bankId, employee);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteBankEmployees(long bankId, long[] employeeIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.deleteBankEmployees(bankId, employeeIds);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteBankEmployees(long bankId,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> Employees)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.deleteBankEmployees(bankId, Employees);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getBankEmployees(
        long bankId) throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getBankEmployees(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getBankEmployees(
        long bankId, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getBankEmployees(bankId, start, end);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getBankEmployees(
        long bankId, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getBankEmployees(bankId, start, end,
            orderByComparator);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public int getBankEmployeesCount(long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.getBankEmployeesCount(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public boolean hasBankEmployee(long bankId, long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.hasBankEmployee(bankId, employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public boolean hasBankEmployees(long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _employeeLocalService.hasBankEmployees(bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void setBankEmployees(long bankId, long[] employeeIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        _employeeLocalService.setBankEmployees(bankId, employeeIds);
    }

    /**
    * Returns the Spring bean ID for this bean.
    *
    * @return the Spring bean ID for this bean
    */
    @Override
    public java.lang.String getBeanIdentifier() {
        return _employeeLocalService.getBeanIdentifier();
    }

    /**
    * Sets the Spring bean ID for this bean.
    *
    * @param beanIdentifier the Spring bean ID for this bean
    */
    @Override
    public void setBeanIdentifier(java.lang.String beanIdentifier) {
        _employeeLocalService.setBeanIdentifier(beanIdentifier);
    }

    @Override
    public java.lang.Object invokeMethod(java.lang.String name,
        java.lang.String[] parameterTypes, java.lang.Object[] arguments)
        throws java.lang.Throwable {
        return _employeeLocalService.invokeMethod(name, parameterTypes,
            arguments);
    }

    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployeeByName(
        java.lang.String name, java.util.Date startDate,
        java.util.Date finishDate) {
        return _employeeLocalService.getEmployeeByName(name, startDate,
            finishDate);
    }

    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getAllEmployee() {
        return _employeeLocalService.getAllEmployee();
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedService}
     */
    public EmployeeLocalService getWrappedEmployeeLocalService() {
        return _employeeLocalService;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #setWrappedService}
     */
    public void setWrappedEmployeeLocalService(
        EmployeeLocalService employeeLocalService) {
        _employeeLocalService = employeeLocalService;
    }

    @Override
    public EmployeeLocalService getWrappedService() {
        return _employeeLocalService;
    }

    @Override
    public void setWrappedService(EmployeeLocalService employeeLocalService) {
        _employeeLocalService = employeeLocalService;
    }
}
