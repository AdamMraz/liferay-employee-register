package com.liferay.EmployeeRegister.service.service;

import com.liferay.portal.service.ServiceWrapper;

/**
 * Provides a wrapper for {@link BankLocalService}.
 *
 * @author Brian Wing Shun Chan
 * @see BankLocalService
 * @generated
 */
public class BankLocalServiceWrapper implements BankLocalService,
    ServiceWrapper<BankLocalService> {
    private BankLocalService _bankLocalService;

    public BankLocalServiceWrapper(BankLocalService bankLocalService) {
        _bankLocalService = bankLocalService;
    }

    /**
    * Adds the bank to the database. Also notifies the appropriate model listeners.
    *
    * @param bank the bank
    * @return the bank that was added
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Bank addBank(
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.addBank(bank);
    }

    /**
    * Creates a new bank with the primary key. Does not add the bank to the database.
    *
    * @param bankId the primary key for the new bank
    * @return the new bank
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Bank createBank(
        long bankId) {
        return _bankLocalService.createBank(bankId);
    }

    /**
    * Deletes the bank with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param bankId the primary key of the bank
    * @return the bank that was removed
    * @throws PortalException if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Bank deleteBank(
        long bankId)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.deleteBank(bankId);
    }

    /**
    * Deletes the bank from the database. Also notifies the appropriate model listeners.
    *
    * @param bank the bank
    * @return the bank that was removed
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Bank deleteBank(
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.deleteBank(bank);
    }

    @Override
    public com.liferay.portal.kernel.dao.orm.DynamicQuery dynamicQuery() {
        return _bankLocalService.dynamicQuery();
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
        return _bankLocalService.dynamicQuery(dynamicQuery);
    }

    /**
    * Performs a dynamic query on the database and returns a range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
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
        return _bankLocalService.dynamicQuery(dynamicQuery, start, end);
    }

    /**
    * Performs a dynamic query on the database and returns an ordered range of the matching rows.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
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
        return _bankLocalService.dynamicQuery(dynamicQuery, start, end,
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
        return _bankLocalService.dynamicQueryCount(dynamicQuery);
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
        return _bankLocalService.dynamicQueryCount(dynamicQuery, projection);
    }

    @Override
    public com.liferay.EmployeeRegister.service.model.Bank fetchBank(
        long bankId) throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.fetchBank(bankId);
    }

    /**
    * Returns the bank with the primary key.
    *
    * @param bankId the primary key of the bank
    * @return the bank
    * @throws PortalException if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Bank getBank(long bankId)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getBank(bankId);
    }

    @Override
    public com.liferay.portal.model.PersistedModel getPersistedModel(
        java.io.Serializable primaryKeyObj)
        throws com.liferay.portal.kernel.exception.PortalException,
            com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getPersistedModel(primaryKeyObj);
    }

    /**
    * Returns a range of all the banks.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of banks
    * @param end the upper bound of the range of banks (not inclusive)
    * @return the range of banks
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getBanks(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getBanks(start, end);
    }

    /**
    * Returns the number of banks.
    *
    * @return the number of banks
    * @throws SystemException if a system exception occurred
    */
    @Override
    public int getBanksCount()
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getBanksCount();
    }

    /**
    * Updates the bank in the database or adds it if it does not yet exist. Also notifies the appropriate model listeners.
    *
    * @param bank the bank
    * @return the bank that was updated
    * @throws SystemException if a system exception occurred
    */
    @Override
    public com.liferay.EmployeeRegister.service.model.Bank updateBank(
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.updateBank(bank);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addEmployeeBank(long employeeId, long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.addEmployeeBank(employeeId, bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addEmployeeBank(long employeeId,
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.addEmployeeBank(employeeId, bank);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addEmployeeBanks(long employeeId, long[] bankIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.addEmployeeBanks(employeeId, bankIds);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void addEmployeeBanks(long employeeId,
        java.util.List<com.liferay.EmployeeRegister.service.model.Bank> Banks)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.addEmployeeBanks(employeeId, Banks);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void clearEmployeeBanks(long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.clearEmployeeBanks(employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteEmployeeBank(long employeeId, long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.deleteEmployeeBank(employeeId, bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteEmployeeBank(long employeeId,
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.deleteEmployeeBank(employeeId, bank);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteEmployeeBanks(long employeeId, long[] bankIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.deleteEmployeeBanks(employeeId, bankIds);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void deleteEmployeeBanks(long employeeId,
        java.util.List<com.liferay.EmployeeRegister.service.model.Bank> Banks)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.deleteEmployeeBanks(employeeId, Banks);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getEmployeeBanks(
        long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getEmployeeBanks(employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getEmployeeBanks(
        long employeeId, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getEmployeeBanks(employeeId, start, end);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getEmployeeBanks(
        long employeeId, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getEmployeeBanks(employeeId, start, end,
            orderByComparator);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public int getEmployeeBanksCount(long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.getEmployeeBanksCount(employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public boolean hasEmployeeBank(long employeeId, long bankId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.hasEmployeeBank(employeeId, bankId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public boolean hasEmployeeBanks(long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return _bankLocalService.hasEmployeeBanks(employeeId);
    }

    /**
    * @throws SystemException if a system exception occurred
    */
    @Override
    public void setEmployeeBanks(long employeeId, long[] bankIds)
        throws com.liferay.portal.kernel.exception.SystemException {
        _bankLocalService.setEmployeeBanks(employeeId, bankIds);
    }

    /**
    * Returns the Spring bean ID for this bean.
    *
    * @return the Spring bean ID for this bean
    */
    @Override
    public java.lang.String getBeanIdentifier() {
        return _bankLocalService.getBeanIdentifier();
    }

    /**
    * Sets the Spring bean ID for this bean.
    *
    * @param beanIdentifier the Spring bean ID for this bean
    */
    @Override
    public void setBeanIdentifier(java.lang.String beanIdentifier) {
        _bankLocalService.setBeanIdentifier(beanIdentifier);
    }

    @Override
    public java.lang.Object invokeMethod(java.lang.String name,
        java.lang.String[] parameterTypes, java.lang.Object[] arguments)
        throws java.lang.Throwable {
        return _bankLocalService.invokeMethod(name, parameterTypes, arguments);
    }

    @Override
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getAllBanks() {
        return _bankLocalService.getAllBanks();
    }

    @Override
    public com.liferay.EmployeeRegister.service.model.Bank getEmployeeBank(
        long employeeId)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException {
        return _bankLocalService.getEmployeeBank(employeeId);
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedService}
     */
    public BankLocalService getWrappedBankLocalService() {
        return _bankLocalService;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #setWrappedService}
     */
    public void setWrappedBankLocalService(BankLocalService bankLocalService) {
        _bankLocalService = bankLocalService;
    }

    @Override
    public BankLocalService getWrappedService() {
        return _bankLocalService;
    }

    @Override
    public void setWrappedService(BankLocalService bankLocalService) {
        _bankLocalService = bankLocalService;
    }
}
