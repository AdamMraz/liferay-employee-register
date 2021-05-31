package com.liferay.EmployeeRegister.service.service.persistence;

import com.liferay.EmployeeRegister.service.model.Employee;

import com.liferay.portal.kernel.bean.PortletBeanLocatorUtil;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.ReferenceRegistry;
import com.liferay.portal.service.ServiceContext;

import java.util.List;

/**
 * The persistence utility for the employee service. This utility wraps {@link EmployeePersistenceImpl} and provides direct access to the database for CRUD operations. This utility should only be used by the service layer, as it must operate within a transaction. Never access this utility in a JSP, controller, model, or other front-end class.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see EmployeePersistence
 * @see EmployeePersistenceImpl
 * @generated
 */
public class EmployeeUtil {
    private static EmployeePersistence _persistence;

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
    public static void clearCache(Employee employee) {
        getPersistence().clearCache(employee);
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
    public static List<Employee> findWithDynamicQuery(DynamicQuery dynamicQuery)
        throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int)
     */
    public static List<Employee> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end)
        throws SystemException {
        return getPersistence().findWithDynamicQuery(dynamicQuery, start, end);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#findWithDynamicQuery(DynamicQuery, int, int, OrderByComparator)
     */
    public static List<Employee> findWithDynamicQuery(
        DynamicQuery dynamicQuery, int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        return getPersistence()
                   .findWithDynamicQuery(dynamicQuery, start, end,
            orderByComparator);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel)
     */
    public static Employee update(Employee employee) throws SystemException {
        return getPersistence().update(employee);
    }

    /**
     * @see com.liferay.portal.service.persistence.BasePersistence#update(com.liferay.portal.model.BaseModel, ServiceContext)
     */
    public static Employee update(Employee employee,
        ServiceContext serviceContext) throws SystemException {
        return getPersistence().update(employee, serviceContext);
    }

    /**
    * Returns all the employees where uuid = &#63;.
    *
    * @param uuid the uuid
    * @return the matching employees
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> findByUuid(
        java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid(uuid);
    }

    /**
    * Returns a range of all the employees where uuid = &#63;.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param uuid the uuid
    * @param start the lower bound of the range of employees
    * @param end the upper bound of the range of employees (not inclusive)
    * @return the range of matching employees
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> findByUuid(
        java.lang.String uuid, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid(uuid, start, end);
    }

    /**
    * Returns an ordered range of all the employees where uuid = &#63;.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param uuid the uuid
    * @param start the lower bound of the range of employees
    * @param end the upper bound of the range of employees (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of matching employees
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> findByUuid(
        java.lang.String uuid, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid(uuid, start, end, orderByComparator);
    }

    /**
    * Returns the first employee in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the first matching employee
    * @throws com.liferay.EmployeeRegister.service.NoSuchloyeeException if a matching employee could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee findByUuid_First(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchloyeeException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid_First(uuid, orderByComparator);
    }

    /**
    * Returns the first employee in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the first matching employee, or <code>null</code> if a matching employee could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee fetchByUuid_First(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUuid_First(uuid, orderByComparator);
    }

    /**
    * Returns the last employee in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the last matching employee
    * @throws com.liferay.EmployeeRegister.service.NoSuchloyeeException if a matching employee could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee findByUuid_Last(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchloyeeException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByUuid_Last(uuid, orderByComparator);
    }

    /**
    * Returns the last employee in the ordered set where uuid = &#63;.
    *
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the last matching employee, or <code>null</code> if a matching employee could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee fetchByUuid_Last(
        java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByUuid_Last(uuid, orderByComparator);
    }

    /**
    * Returns the employees before and after the current employee in the ordered set where uuid = &#63;.
    *
    * @param employeeId the primary key of the current employee
    * @param uuid the uuid
    * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
    * @return the previous, current, and next employee
    * @throws com.liferay.EmployeeRegister.service.NoSuchloyeeException if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee[] findByUuid_PrevAndNext(
        long employeeId, java.lang.String uuid,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.EmployeeRegister.service.NoSuchloyeeException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence()
                   .findByUuid_PrevAndNext(employeeId, uuid, orderByComparator);
    }

    /**
    * Removes all the employees where uuid = &#63; from the database.
    *
    * @param uuid the uuid
    * @throws SystemException if a system exception occurred
    */
    public static void removeByUuid(java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeByUuid(uuid);
    }

    /**
    * Returns the number of employees where uuid = &#63;.
    *
    * @param uuid the uuid
    * @return the number of matching employees
    * @throws SystemException if a system exception occurred
    */
    public static int countByUuid(java.lang.String uuid)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countByUuid(uuid);
    }

    /**
    * Caches the employee in the entity cache if it is enabled.
    *
    * @param employee the employee
    */
    public static void cacheResult(
        com.liferay.EmployeeRegister.service.model.Employee employee) {
        getPersistence().cacheResult(employee);
    }

    /**
    * Caches the employees in the entity cache if it is enabled.
    *
    * @param employees the employees
    */
    public static void cacheResult(
        java.util.List<com.liferay.EmployeeRegister.service.model.Employee> employees) {
        getPersistence().cacheResult(employees);
    }

    /**
    * Creates a new employee with the primary key. Does not add the employee to the database.
    *
    * @param employeeId the primary key for the new employee
    * @return the new employee
    */
    public static com.liferay.EmployeeRegister.service.model.Employee create(
        long employeeId) {
        return getPersistence().create(employeeId);
    }

    /**
    * Removes the employee with the primary key from the database. Also notifies the appropriate model listeners.
    *
    * @param employeeId the primary key of the employee
    * @return the employee that was removed
    * @throws com.liferay.EmployeeRegister.service.NoSuchloyeeException if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee remove(
        long employeeId)
        throws com.liferay.EmployeeRegister.service.NoSuchloyeeException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().remove(employeeId);
    }

    public static com.liferay.EmployeeRegister.service.model.Employee updateImpl(
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().updateImpl(employee);
    }

    /**
    * Returns the employee with the primary key or throws a {@link com.liferay.EmployeeRegister.service.NoSuchloyeeException} if it could not be found.
    *
    * @param employeeId the primary key of the employee
    * @return the employee
    * @throws com.liferay.EmployeeRegister.service.NoSuchloyeeException if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee findByPrimaryKey(
        long employeeId)
        throws com.liferay.EmployeeRegister.service.NoSuchloyeeException,
            com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findByPrimaryKey(employeeId);
    }

    /**
    * Returns the employee with the primary key or returns <code>null</code> if it could not be found.
    *
    * @param employeeId the primary key of the employee
    * @return the employee, or <code>null</code> if a employee with the primary key could not be found
    * @throws SystemException if a system exception occurred
    */
    public static com.liferay.EmployeeRegister.service.model.Employee fetchByPrimaryKey(
        long employeeId)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().fetchByPrimaryKey(employeeId);
    }

    /**
    * Returns all the employees.
    *
    * @return the employees
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> findAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll();
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
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> findAll(
        int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end);
    }

    /**
    * Returns an ordered range of all the employees.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param start the lower bound of the range of employees
    * @param end the upper bound of the range of employees (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of employees
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Employee> findAll(
        int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().findAll(start, end, orderByComparator);
    }

    /**
    * Removes all the employees from the database.
    *
    * @throws SystemException if a system exception occurred
    */
    public static void removeAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeAll();
    }

    /**
    * Returns the number of employees.
    *
    * @return the number of employees
    * @throws SystemException if a system exception occurred
    */
    public static int countAll()
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().countAll();
    }

    /**
    * Returns all the banks associated with the employee.
    *
    * @param pk the primary key of the employee
    * @return the banks associated with the employee
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getBanks(
        long pk) throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getBanks(pk);
    }

    /**
    * Returns a range of all the banks associated with the employee.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param pk the primary key of the employee
    * @param start the lower bound of the range of employees
    * @param end the upper bound of the range of employees (not inclusive)
    * @return the range of banks associated with the employee
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getBanks(
        long pk, int start, int end)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getBanks(pk, start, end);
    }

    /**
    * Returns an ordered range of all the banks associated with the employee.
    *
    * <p>
    * Useful when paginating results. Returns a maximum of <code>end - start</code> instances. <code>start</code> and <code>end</code> are not primary keys, they are indexes in the result set. Thus, <code>0</code> refers to the first result in the set. Setting both <code>start</code> and <code>end</code> to {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS} will return the full result set. If <code>orderByComparator</code> is specified, then the query will include the given ORDER BY logic. If <code>orderByComparator</code> is absent and pagination is required (<code>start</code> and <code>end</code> are not {@link com.liferay.portal.kernel.dao.orm.QueryUtil#ALL_POS}), then the query will include the default ORDER BY logic from {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl}. If both <code>orderByComparator</code> and pagination are absent, for performance reasons, the query will not have an ORDER BY clause and the returned result set will be sorted on by the primary key in an ascending order.
    * </p>
    *
    * @param pk the primary key of the employee
    * @param start the lower bound of the range of employees
    * @param end the upper bound of the range of employees (not inclusive)
    * @param orderByComparator the comparator to order the results by (optionally <code>null</code>)
    * @return the ordered range of banks associated with the employee
    * @throws SystemException if a system exception occurred
    */
    public static java.util.List<com.liferay.EmployeeRegister.service.model.Bank> getBanks(
        long pk, int start, int end,
        com.liferay.portal.kernel.util.OrderByComparator orderByComparator)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getBanks(pk, start, end, orderByComparator);
    }

    /**
    * Returns the number of banks associated with the employee.
    *
    * @param pk the primary key of the employee
    * @return the number of banks associated with the employee
    * @throws SystemException if a system exception occurred
    */
    public static int getBanksSize(long pk)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().getBanksSize(pk);
    }

    /**
    * Returns <code>true</code> if the bank is associated with the employee.
    *
    * @param pk the primary key of the employee
    * @param bankPK the primary key of the bank
    * @return <code>true</code> if the bank is associated with the employee; <code>false</code> otherwise
    * @throws SystemException if a system exception occurred
    */
    public static boolean containsBank(long pk, long bankPK)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().containsBank(pk, bankPK);
    }

    /**
    * Returns <code>true</code> if the employee has any banks associated with it.
    *
    * @param pk the primary key of the employee to check for associations with banks
    * @return <code>true</code> if the employee has any banks associated with it; <code>false</code> otherwise
    * @throws SystemException if a system exception occurred
    */
    public static boolean containsBanks(long pk)
        throws com.liferay.portal.kernel.exception.SystemException {
        return getPersistence().containsBanks(pk);
    }

    /**
    * Adds an association between the employee and the bank. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param bankPK the primary key of the bank
    * @throws SystemException if a system exception occurred
    */
    public static void addBank(long pk, long bankPK)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addBank(pk, bankPK);
    }

    /**
    * Adds an association between the employee and the bank. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param bank the bank
    * @throws SystemException if a system exception occurred
    */
    public static void addBank(long pk,
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addBank(pk, bank);
    }

    /**
    * Adds an association between the employee and the banks. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param bankPKs the primary keys of the banks
    * @throws SystemException if a system exception occurred
    */
    public static void addBanks(long pk, long[] bankPKs)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addBanks(pk, bankPKs);
    }

    /**
    * Adds an association between the employee and the banks. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param banks the banks
    * @throws SystemException if a system exception occurred
    */
    public static void addBanks(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Bank> banks)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().addBanks(pk, banks);
    }

    /**
    * Clears all associations between the employee and its banks. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee to clear the associated banks from
    * @throws SystemException if a system exception occurred
    */
    public static void clearBanks(long pk)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().clearBanks(pk);
    }

    /**
    * Removes the association between the employee and the bank. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param bankPK the primary key of the bank
    * @throws SystemException if a system exception occurred
    */
    public static void removeBank(long pk, long bankPK)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeBank(pk, bankPK);
    }

    /**
    * Removes the association between the employee and the bank. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param bank the bank
    * @throws SystemException if a system exception occurred
    */
    public static void removeBank(long pk,
        com.liferay.EmployeeRegister.service.model.Bank bank)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeBank(pk, bank);
    }

    /**
    * Removes the association between the employee and the banks. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param bankPKs the primary keys of the banks
    * @throws SystemException if a system exception occurred
    */
    public static void removeBanks(long pk, long[] bankPKs)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeBanks(pk, bankPKs);
    }

    /**
    * Removes the association between the employee and the banks. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param banks the banks
    * @throws SystemException if a system exception occurred
    */
    public static void removeBanks(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Bank> banks)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().removeBanks(pk, banks);
    }

    /**
    * Sets the banks associated with the employee, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param bankPKs the primary keys of the banks to be associated with the employee
    * @throws SystemException if a system exception occurred
    */
    public static void setBanks(long pk, long[] bankPKs)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().setBanks(pk, bankPKs);
    }

    /**
    * Sets the banks associated with the employee, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
    *
    * @param pk the primary key of the employee
    * @param banks the banks to be associated with the employee
    * @throws SystemException if a system exception occurred
    */
    public static void setBanks(long pk,
        java.util.List<com.liferay.EmployeeRegister.service.model.Bank> banks)
        throws com.liferay.portal.kernel.exception.SystemException {
        getPersistence().setBanks(pk, banks);
    }

    public static EmployeePersistence getPersistence() {
        if (_persistence == null) {
            _persistence = (EmployeePersistence) PortletBeanLocatorUtil.locate(com.liferay.EmployeeRegister.service.service.ClpSerializer.getServletContextName(),
                    EmployeePersistence.class.getName());

            ReferenceRegistry.registerReference(EmployeeUtil.class,
                "_persistence");
        }

        return _persistence;
    }

    /**
     * @deprecated As of 6.2.0
     */
    public void setPersistence(EmployeePersistence persistence) {
    }
}
