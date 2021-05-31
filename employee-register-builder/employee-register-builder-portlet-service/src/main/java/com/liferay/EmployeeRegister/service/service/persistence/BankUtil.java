package com.liferay.EmployeeRegister.service.service.persistence;

import com.liferay.EmployeeRegister.service.model.Bank;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import java.util.List;

/**
 * The persistence utility for the bank service. This utility wraps {@link BankPersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see BankPersistence
 * @see BankPersistenceImpl
 * @generated
 */
public class BankUtil {
    private static BankPersistence _persistence;

    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify this class directly. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
     */

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#clearCache()
     */
    public static void clearCache() {
        getPersistence().clearCache();
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#clearCache(com.liferay.portal.model.BaseModel)
     */
    public static void clearCache(Bank bank) {
        getPersistence().clearCache(bank);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#countWithDynamicQuery(DynamicQuery)
     */
    public static long countWithDynamicQuery(DynamicQuery dynamicQuery)
        throws SystemException {
        return getPersistence().countWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery)
     */
    public static List<Bank> findWithDynamicQuery(DynamicQuery dynamicQuery)
        throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
     */
    public static List<Bank> findWithDynamicQuery(DynamicQuery dynamicQuery,
        int start, int end) throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
     */
    public static List<Bank> findWithDynamicQuery(DynamicQuery dynamicQuery,
        int start, int end, OrderByComparator orderByComparator)
        throws SystemException {
        return getPersistence()
                   .findWithDynamicQuery(dynamicQuery, start, end,
            orderByComparator);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel)
     */
    public static Bank update(Bank bank) throws SystemException {
        return getPersistence().update(bank);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, ServiceContext)
     */
    public static Bank update(Bank bank, ServiceContext serviceContext)
        throws SystemException {
        return getPersistence().update(bank, serviceContext);
    }

    /**
    * Returns all the banks where uuid = &#63;.
    *
    * @param uuid the uuid
    * @return the matching banks
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findByUuid(
        java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid(uuid);
    }

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
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findByUuid(
        java.lang.String uuid, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid(uuid, start, end);
    }

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
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findByUuid(
        java.lang.String uuid, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid(uuid, start, end, orderByComparator);
    }

    /**
    * Returns the first bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the first matching bank
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Bank findByUuid_First(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid_First(uuid, orderByComparator);
    }

    /**
    * Returns the first bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the first matching bank, or <code>null</code> if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Bank fetchByUuid_First(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUuid_First(uuid, orderByComparator);
    }

    /**
    * Returns the last bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the last matching bank
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Bank findByUuid_Last(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid_Last(uuid, orderByComparator);
    }

    /**
    * Returns the last bank in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the last matching bank, or <code>null</code> if a matching bank could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Bank fetchByUuid_Last(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUuid_Last(uuid, orderByComparator);
    }

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
    public static com.liferay.EmployeeRegister.service.model.Bank[] findByUuid_PrevAndNext(
        long bankId, java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence()
                   .findByUuid_PrevAndNext(bankId, uuid, orderByComparator);
    }

    /**
    * Removes all the banks where uuid = &#63; from the database.
    *
    * @param uuid the uuid
    * @throws SystemException if a system exception occurred
    */
    public static void removeByUuid(java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeByUuid(uuid);
    }

    /**
    * Returns the number of banks where uuid = &#63;.
    *
    * @param uuid the uuid
    * @return the number of matching banks
    * @throws SystemException if a system exception occurred
    */
    public static int countByUuid(java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countByUuid(uuid);
    }

    /**
    * Caches the bank in the entity cache if it is enabled.
    *
    * @param bank the bank
    */
    public static void cacheResult(
        com.liferay.EmployeeRegister.service.model.Bank bank) {
        getPersistence().cacheResult(bank);
    }

    /**
    * Caches the banks in the entity cache if it is enabled.
    *
    * @param banks the banks
    */
    public static void cacheResult(
        java.util.List<com.liferay.EmployeeRegister.service.model.Bank> banks) {
        getPersistence().cacheResult(banks);
    }

    /**
    * Creates a new bank with the primary key. Does not add the bank to the database.
    *
    * @param bankId the primary key for the new bank
    * @return the new bank
    */
    public static com.liferay.EmployeeRegister.service.model.Bank create(
        long bankId) {
        return getPersistence().create(bankId);
    }

    /**
    * Removes the bank with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param bankId the primary key of the bank
    * @return the bank that was removed
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Bank remove(
        long bankId)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().remove(bankId);
    }

    public static com.liferay.EmployeeRegister.service.model.Bank updateImpl(
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().updateImpl(bank);
    }

    /**
    * Returns the bank with the primary key or throws a {@link com.liferay.EmployeeRegister.service.NoSuchBankException} if it could not be found.
    *
    * @param bankId the primary key of the bank
    * @return the bank
    * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Bank findByPrimaryKey(
        long bankId)
        throws com.liferay.EmployeeRegister.service.NoSuchBankException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByPrimaryKey(bankId);
    }

    /**
    * Returns the bank with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param bankId the primary key of the bank
    * @return the bank, or <code>null</code> if a bank with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Bank fetchByPrimaryKey(
        long bankId) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByPrimaryKey(bankId);
    }

    /**
    * Returns all the banks.
    *
    * @return the banks
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll();
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
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end);
    }

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
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end, orderByComparator);
    }

    /**
    * Removes all the banks from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public static void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeAll();
    }

    /**
    * Returns the number of banks.
    *
    * @return the number of banks
    * @throws SystemException if a system exception occurred
    */
    public static int countAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countAll();
    }

    /**
    * Returns all the employees associated with the bank.
    *
    * @param pk the primary key of the bank
    * @return the employees associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getEmployees(pk);
    }

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
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getEmployees(pk, start, end);
    }

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
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getEmployees(pk, start, end, orderByComparator);
    }

    /**
    * Returns the number of employees associated with the bank.
    *
    * @param pk the primary key of the bank
    * @return the number of employees associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public static int getEmployeesSize(long pk)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getEmployeesSize(pk);
    }

    /**
    * Returns <code>true</code> if the employee is associated with the bank.
    *
    * @param pk the primary key of the bank
    * @param employeePK the primary key of the employee
    * @return <code>true</code> if the employee is associated with the bank; <code>false</code> otherwise
    * @throws SystemException if a system exception occurred
    */
    public static boolean containsEmployee(long pk, long employeePK)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().containsEmployee(pk, employeePK);
    }

    /**
    * Returns <code>true</code> if the bank has any employees associated with it.
    *
    * @param pk the primary key of the bank to check for associations with employees
    * @return <code>true</code> if the bank has any employees associated with it; <code>false</code> otherwise
    * @throws SystemException if a system exception occurred
    */
    public static boolean containsEmployees(long pk)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().containsEmployees(pk);
    }

    /**
    * Adds an association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePK the primary key of the employee
    * @throws SystemException if a system exception occurred
    */
    public static void addEmployee(long pk, long employeePK)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addEmployee(pk, employeePK);
    }

    /**
    * Adds an association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employee the employee
    * @throws SystemException if a system exception occurred
    */
    public static void addEmployee(long pk,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addEmployee(pk, employee);
    }

    /**
    * Adds an association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePKs the primary keys of the employees
    * @throws SystemException if a system exception occurred
    */
    public static void addEmployees(long pk, long[] employeePKs)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addEmployees(pk, employeePKs);
    }

    /**
    * Adds an association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employees the employees
    * @throws SystemException if a system exception occurred
    */
    public static void addEmployees(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addEmployees(pk, employees);
    }

    /**
    * Clears all associations between the bank and its employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank to clear the associated employees from
    * @throws SystemException if a system exception occurred
    */
    public static void clearEmployees(long pk)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().clearEmployees(pk);
    }

    /**
    * Removes the association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePK the primary key of the employee
    * @throws SystemException if a system exception occurred
    */
    public static void removeEmployee(long pk, long employeePK)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeEmployee(pk, employeePK);
    }

    /**
    * Removes the association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employee the employee
    * @throws SystemException if a system exception occurred
    */
    public static void removeEmployee(long pk,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeEmployee(pk, employee);
    }

    /**
    * Removes the association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePKs the primary keys of the employees
    * @throws SystemException if a system exception occurred
    */
    public static void removeEmployees(long pk, long[] employeePKs)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeEmployees(pk, employeePKs);
    }

    /**
    * Removes the association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employees the employees
    * @throws SystemException if a system exception occurred
    */
    public static void removeEmployees(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeEmployees(pk, employees);
    }

    /**
    * Sets the employees associated with the bank, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employeePKs the primary keys of the employees to be associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public static void setEmployees(long pk, long[] employeePKs)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().setEmployees(pk, employeePKs);
    }

    /**
    * Sets the employees associated with the bank, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the bank
    * @param employees the employees to be associated with the bank
    * @throws SystemException if a system exception occurred
    */
    public static void setEmployees(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().setEmployees(pk, employees);
    }

    public static BankPersistence getPersistence() {
        if (_persistence == null) {
            _persistence = (BankPersistence) PortletBeanLocatorUtil.locate(com.liferay.EmployeeRegister.service.service.ClpSerializer.getServletContextName(),
                    BankPersistence.class.getName());

            ReferenceRegistry.registerReference(BankUtil.class, "_persistence");
        }

        return _persistence;
    }

    /**
     * @deprecated As of 6.2.0
     */
    public void setPersistence(BankPersistence persistence) {
    }
}
