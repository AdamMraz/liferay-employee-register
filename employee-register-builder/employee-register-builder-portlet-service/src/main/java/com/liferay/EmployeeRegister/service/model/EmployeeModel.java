package com.liferay.EmployeeRegister.service.model;

import com.liferay.portal.kernel.bean.AutoEscape;
import com.liferay.portal.model.BaseModel;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.service.ServiceContext;

import com.liferay.portlet.expando.model.ExpandoBridge;

import java.io.Serializable;

import java.util.Date;

/**
 * The base model interface for the Employee service. Represents a row in the &quot;Emp_Employee&quot; database table, with each column mapped to a property of this class.
 *
 * <p>
 * This interface and its corresponding implementation {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl} exist only as a container for the default property accessors generated by ServiceBuilder. Helper methods and all application logic should be put in {@link com.liferay.EmployeeRegister.service.model.impl.EmployeeImpl}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see Employee
 * @see com.liferay.EmployeeRegister.service.model.impl.EmployeeImpl
 * @see com.liferay.EmployeeRegister.service.model.impl.EmployeeModelImpl
 * @generated
 */
public interface EmployeeModel extends BaseModel<Employee> {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this interface directly. All methods that expect a employee model instance should use the {@link Employee} interface instead.
     */

    /**
     * Returns the primary key of this employee.
     *
     * @return the primary key of this employee
     */
    public long getPrimaryKey();

    /**
     * Sets the primary key of this employee.
     *
     * @param primaryKey the primary key of this employee
     */
    public void setPrimaryKey(long primaryKey);

    /**
     * Returns the uuid of this employee.
     *
     * @return the uuid of this employee
     */
    @AutoEscape
    public String getUuid();

    /**
     * Sets the uuid of this employee.
     *
     * @param uuid the uuid of this employee
     */
    public void setUuid(String uuid);

    /**
     * Returns the employee ID of this employee.
     *
     * @return the employee ID of this employee
     */
    public long getEmployeeId();

    /**
     * Sets the employee ID of this employee.
     *
     * @param employeeId the employee ID of this employee
     */
    public void setEmployeeId(long employeeId);

    /**
     * Returns the name of this employee.
     *
     * @return the name of this employee
     */
    @AutoEscape
    public String getName();

    /**
     * Sets the name of this employee.
     *
     * @param name the name of this employee
     */
    public void setName(String name);

    /**
     * Returns the patronymic of this employee.
     *
     * @return the patronymic of this employee
     */
    @AutoEscape
    public String getPatronymic();

    /**
     * Sets the patronymic of this employee.
     *
     * @param patronymic the patronymic of this employee
     */
    public void setPatronymic(String patronymic);

    /**
     * Returns the surname of this employee.
     *
     * @return the surname of this employee
     */
    @AutoEscape
    public String getSurname();

    /**
     * Sets the surname of this employee.
     *
     * @param surname the surname of this employee
     */
    public void setSurname(String surname);

    /**
     * Returns the gender of this employee.
     *
     * @return the gender of this employee
     */
    @AutoEscape
    public String getGender();

    /**
     * Sets the gender of this employee.
     *
     * @param gender the gender of this employee
     */
    public void setGender(String gender);

    /**
     * Returns the birth date of this employee.
     *
     * @return the birth date of this employee
     */
    public Date getBirthDate();

    /**
     * Sets the birth date of this employee.
     *
     * @param birthDate the birth date of this employee
     */
    public void setBirthDate(Date birthDate);

    /**
     * Returns the date of employment of this employee.
     *
     * @return the date of employment of this employee
     */
    public Date getDateOfEmployment();

    /**
     * Sets the date of employment of this employee.
     *
     * @param dateOfEmployment the date of employment of this employee
     */
    public void setDateOfEmployment(Date dateOfEmployment);

    /**
     * Returns the salary of this employee.
     *
     * @return the salary of this employee
     */
    public int getSalary();

    /**
     * Sets the salary of this employee.
     *
     * @param salary the salary of this employee
     */
    public void setSalary(int salary);

    /**
     * Returns the work phone of this employee.
     *
     * @return the work phone of this employee
     */
    @AutoEscape
    public String getWorkPhone();

    /**
     * Sets the work phone of this employee.
     *
     * @param workPhone the work phone of this employee
     */
    public void setWorkPhone(String workPhone);

    /**
     * Returns the mobile phone of this employee.
     *
     * @return the mobile phone of this employee
     */
    @AutoEscape
    public String getMobilePhone();

    /**
     * Sets the mobile phone of this employee.
     *
     * @param mobilePhone the mobile phone of this employee
     */
    public void setMobilePhone(String mobilePhone);

    /**
     * Returns the archive of this employee.
     *
     * @return the archive of this employee
     */
    public boolean getArchive();

    /**
     * Returns <code>true</code> if this employee is archive.
     *
     * @return <code>true</code> if this employee is archive; <code>false</code> otherwise
     */
    public boolean isArchive();

    /**
     * Sets whether this employee is archive.
     *
     * @param archive the archive of this employee
     */
    public void setArchive(boolean archive);

    /**
     * Returns the position ID of this employee.
     *
     * @return the position ID of this employee
     */
    public long getPositionId();

    /**
     * Sets the position ID of this employee.
     *
     * @param positionId the position ID of this employee
     */
    public void setPositionId(long positionId);

    @Override
    public boolean isNew();

    @Override
    public void setNew(boolean n);

    @Override
    public boolean isCachedModel();

    @Override
    public void setCachedModel(boolean cachedModel);

    @Override
    public boolean isEscapedModel();

    @Override
    public Serializable getPrimaryKeyObj();

    @Override
    public void setPrimaryKeyObj(Serializable primaryKeyObj);

    @Override
    public ExpandoBridge getExpandoBridge();

    @Override
    public void setExpandoBridgeAttributes(BaseModel<?> baseModel);

    @Override
    public void setExpandoBridgeAttributes(ExpandoBridge expandoBridge);

    @Override
    public void setExpandoBridgeAttributes(ServiceContext serviceContext);

    @Override
    public Object clone();

    @Override
    public int compareTo(
        com.liferay.EmployeeRegister.service.model.Employee employee);

    @Override
    public int hashCode();

    @Override
    public CacheModel<com.liferay.EmployeeRegister.service.model.Employee> toCacheModel();

    @Override
    public com.liferay.EmployeeRegister.service.model.Employee toEscapedModel();

    @Override
    public com.liferay.EmployeeRegister.service.model.Employee toUnescapedModel();

    @Override
    public String toString();

    @Override
    public String toXmlString();
}
