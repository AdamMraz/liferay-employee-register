package com.liferay.EmployeeRegister.service.service.persistence;

import com.liferay.EmployeeRegister.service.model.Bank;

import com.liferay.portal.service.persistence.BasePersistence;

/**
 * The persistence interface for the bank service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see BankPersistenceImpl
 * @see BankUtil
 * @generated
 */
public interface BankPersistence extends BasePersistence<Bank> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. Always use {@link BankUtil} to access the bank persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this interface.
     */

    /**
    * Returns all the banks where uuid = &#63;.
    *
    * @param uuid the uuid
    * @return the matching banks
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findByUuid(
        java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns a range of all the banks where uuid = &#63;.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param uuid the uuid
    * @param start the lower bound of the range of banks
    * @param end the upper bound of the range of banks (not inclusive)
    * @return the range of matching banks
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findByUuid(
        java.lang.String uuid, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns an ordered range of all the banks where uuid = &#63;.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param uuid the uuid
    * @param start the lower bound of the range of banks
    * @param end the upper bound of the range of banks (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of matching banks
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findByUuid(
        java.lang.String uuid, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the first bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the first matching bank
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank findByUuid_First(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the first bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the first matching bank, or <code>null</code> if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank fetchByUuid_First(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the last bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the last matching bank
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank findByUuid_Last(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the last bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the last matching bank, or <code>null</code> if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank fetchByUuid_Last(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the banks before and after the current bank in the ordered set where uuid = &#63;.
    *
    * @param bankId the primary key of the current bank
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the previous, current, and next bank
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank[] findByUuid_PrevAndNext(
        long bankId, java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes all the banks where uuid = &#63; from the database.
    *
    * @param uuid the uuid
    * @throws SystemException if a system exception occurred
    */
    public void removeByUuid(java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the number of banks where uuid = &#63;.
    *
    * @param uuid the uuid
    * @return the number of matching banks
    * @throws SystemException if a system exception occurred
    */
    public int countByUuid(java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Caches the bank in the entity cache if it is enabled.
    *
    * @param bank the bank
    */
    public void cacheResult(
        com.liferay.EmployeeRegister.service.model.Bank bank);

    /**
    * Caches the banks in the entity cache if it is enabled.
    *
    * @param banks the banks
    */
    public void cacheResult(
        java.util.List<com.liferay.EmployeeRegister.service.model.Bank> banks);

    /**
    * Creates a new bank with the primary key. Does not add the bank to the database.
    *
    * @param bankId the primary key for the new bank
    * @return the new bank
    */
    public com.liferay.EmployeeRegister.service.model.Bank create(long bankId);

    /**
    * Removes the bank with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param bankId the primary key of the bank
    * @return the bank that was removed
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank remove(long bankId)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException;

    public com.liferay.EmployeeRegister.service.model.Bank updateImpl(
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the bank with the primary key or throws a {@link com.liferay.EmployeeRegister.service.NoSuchBankException} if it could not be found.
    *
    * @param bankId the primary key of the bank
    * @return the bank
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank findByPrimaryKey(
        long bankId)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the bank with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param bankId the primary key of the bank
    * @return the bank, or <code>null</code> if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public com.liferay.EmployeeRegister.service.model.Bank fetchByPrimaryKey(
        long bankId) throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns all the banks.
    *
    * @return the banks
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findAll()
        throws com.liferay.portal.kernel.exception.SystemException;

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
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns an ordered range of all the banks.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of banks
    * @param end the upper bound of the range of banks (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of banks
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes all the banks from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the number of banks.
    *
    * @return the number of banks
    * @throws SystemException if a system exception occurred
    */
    public int countAll()
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns all the employees associated with the bank.
    *
    * @param pk the primary key of the bank
    * @return the employees associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk) throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns a range of all the employees associated with the bank.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param pk the primary key of the bank
    * @param start the lower bound of the range of banks
    * @param end the upper bound of the range of banks (not inclusive)
    * @return the range of employees associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns an ordered range of all the employees associated with the bank.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.BankModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param pk the primary key of the bank
    * @param start the lower bound of the range of banks
    * @param end the upper bound of the range of banks (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of employees associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns the number of employees associated with the bank.
    *
    * @param pk the primary key of the bank
    * @return the number of employees associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public int getEmployeesSize(long pk)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns <code>true</code> if the employee is associated with the bank.
    *
    * @param pk the primary key of the bank
    * @param employeePK the primary key of the employee
    * @return <code>true</code> if the employee is associated with the bank; <code>false</code> otherwise
    * @throws SystemException if a system exception occurred
    */
    public boolean containsEmployee(long pk, long employeePK)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Returns <code>true</code> if the bank has any employees associated with it.
    *
    * @param pk the primary key of the bank to check for associations with employees
    * @return <code>true</code> if the bank has any employees associated with it; <code>false</code> otherwise
    * @throws SystemException if a system exception occurred
    */
    public boolean containsEmployees(long pk)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Adds an association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePK the primary key of the employee
    * @throws SystemException if a system exception occurred
    */
    public void addEmployee(long pk, long employeePK)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Adds an association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employee the employee
    * @throws SystemException if a system exception occurred
    */
    public void addEmployee(long pk,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Adds an association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePKs the primary keys of the employees
    * @throws SystemException if a system exception occurred
    */
    public void addEmployees(long pk, long[] employeePKs)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Adds an association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employees the employees
    * @throws SystemException if a system exception occurred
    */
    public void addEmployees(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Clears all associations between the bank and its employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank to clear the associated employees from
    * @throws SystemException if a system exception occurred
    */
    public void clearEmployees(long pk)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePK the primary key of the employee
    * @throws SystemException if a system exception occurred
    */
    public void removeEmployee(long pk, long employeePK)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employee the employee
    * @throws SystemException if a system exception occurred
    */
    public void removeEmployee(long pk,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePKs the primary keys of the employees
    * @throws SystemException if a system exception occurred
    */
    public void removeEmployees(long pk, long[] employeePKs)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Removes the association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employees the employees
    * @throws SystemException if a system exception occurred
    */
    public void removeEmployees(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Sets the employees associated with the bank, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePKs the primary keys of the employees to be associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public void setEmployees(long pk, long[] employeePKs)
        throws com.liferay.portal.kernel.exception.SystemException;

    /**
    * Sets the employees associated with the bank, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employees the employees to be associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public void setEmployees(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws com.liferay.portal.kernel.exception.SystemException;
}
