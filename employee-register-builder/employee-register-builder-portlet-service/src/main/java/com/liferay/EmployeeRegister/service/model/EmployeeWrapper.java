package com.liferay.EmployeeRegister.service.model;

import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.model.ModelWrapper;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 * This class is a wrapper for {@link Employee}.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see Employee
 * @generated
 */
public class EmployeeWrapper implements Employee, ModelWrapper<Employee> {
    private Employee _employee;

    public EmployeeWrapper(Employee employee) {
        _employee = employee;
    }

    @Override
    public Class<?> getModelClass() {
        return Employee.class;
    }

    @Override
    public String getModelClassName() {
        return Employee.class.getName();
    }

    @Override
    public Map<String, Object> getModelAttributes() {
        Map<String, Object> attributes = new HashMap<String, Object>();

        attributes.put("uuid", getUuid());
        attributes.put("employeeId", getEmployeeId());
        attributes.put("name", getName());
        attributes.put("patronymic", getPatronymic());
        attributes.put("surname", getSurname());
        attributes.put("gender", getGender());
        attributes.put("birthDate", getBirthDate());
        attributes.put("dateOfEmployment", getDateOfEmployment());
        attributes.put("salary", getSalary());
        attributes.put("workPhone", getWorkPhone());
        attributes.put("mobilePhone", getMobilePhone());
        attributes.put("archive", getArchive());
        attributes.put("positionId", getPositionId());

        return attributes;
    }

    @Override
    public void setModelAttributes(Map<String, Object> attributes) {
        String uuid = (String) attributes.get("uuid");

        if (uuid != null) {
            setUuid(uuid);
        }

        Long employeeId = (Long) attributes.get("employeeId");

        if (employeeId != null) {
            setEmployeeId(employeeId);
        }

        String name = (String) attributes.get("name");

        if (name != null) {
            setName(name);
        }

        String patronymic = (String) attributes.get("patronymic");

        if (patronymic != null) {
            setPatronymic(patronymic);
        }

        String surname = (String) attributes.get("surname");

        if (surname != null) {
            setSurname(surname);
        }

        String gender = (String) attributes.get("gender");

        if (gender != null) {
            setGender(gender);
        }

        Date birthDate = (Date) attributes.get("birthDate");

        if (birthDate != null) {
            setBirthDate(birthDate);
        }

        Date dateOfEmployment = (Date) attributes.get("dateOfEmployment");

        if (dateOfEmployment != null) {
            setDateOfEmployment(dateOfEmployment);
        }

        Integer salary = (Integer) attributes.get("salary");

        if (salary != null) {
            setSalary(salary);
        }

        String workPhone = (String) attributes.get("workPhone");

        if (workPhone != null) {
            setWorkPhone(workPhone);
        }

        String mobilePhone = (String) attributes.get("mobilePhone");

        if (mobilePhone != null) {
            setMobilePhone(mobilePhone);
        }

        Boolean archive = (Boolean) attributes.get("archive");

        if (archive != null) {
            setArchive(archive);
        }

        Long positionId = (Long) attributes.get("positionId");

        if (positionId != null) {
            setPositionId(positionId);
        }
    }

    /**
    * Returns the primary key of this employee.
    *
    * @return the primary key of this employee
    */
    @Override
    public long getPrimaryKey() {
        return _employee.getPrimaryKey();
    }

    /**
    * Sets the primary key of this employee.
    *
    * @param primaryKey the primary key of this employee
    */
    @Override
    public void setPrimaryKey(long primaryKey) {
        _employee.setPrimaryKey(primaryKey);
    }

    /**
    * Returns the uuid of this employee.
    *
    * @return the uuid of this employee
    */
    @Override
    public java.lang.String getUuid() {
        return _employee.getUuid();
    }

    /**
    * Sets the uuid of this employee.
    *
    * @param uuid the uuid of this employee
    */
    @Override
    public void setUuid(java.lang.String uuid) {
        _employee.setUuid(uuid);
    }

    /**
    * Returns the employee ID of this employee.
    *
    * @return the employee ID of this employee
    */
    @Override
    public long getEmployeeId() {
        return _employee.getEmployeeId();
    }

    /**
    * Sets the employee ID of this employee.
    *
    * @param employeeId the employee ID of this employee
    */
    @Override
    public void setEmployeeId(long employeeId) {
        _employee.setEmployeeId(employeeId);
    }

    /**
    * Returns the name of this employee.
    *
    * @return the name of this employee
    */
    @Override
    public java.lang.String getName() {
        return _employee.getName();
    }

    /**
    * Sets the name of this employee.
    *
    * @param name the name of this employee
    */
    @Override
    public void setName(java.lang.String name) {
        _employee.setName(name);
    }

    /**
    * Returns the patronymic of this employee.
    *
    * @return the patronymic of this employee
    */
    @Override
    public java.lang.String getPatronymic() {
        return _employee.getPatronymic();
    }

    /**
    * Sets the patronymic of this employee.
    *
    * @param patronymic the patronymic of this employee
    */
    @Override
    public void setPatronymic(java.lang.String patronymic) {
        _employee.setPatronymic(patronymic);
    }

    /**
    * Returns the surname of this employee.
    *
    * @return the surname of this employee
    */
    @Override
    public java.lang.String getSurname() {
        return _employee.getSurname();
    }

    /**
    * Sets the surname of this employee.
    *
    * @param surname the surname of this employee
    */
    @Override
    public void setSurname(java.lang.String surname) {
        _employee.setSurname(surname);
    }

    /**
    * Returns the gender of this employee.
    *
    * @return the gender of this employee
    */
    @Override
    public java.lang.String getGender() {
        return _employee.getGender();
    }

    /**
    * Sets the gender of this employee.
    *
    * @param gender the gender of this employee
    */
    @Override
    public void setGender(java.lang.String gender) {
        _employee.setGender(gender);
    }

    /**
    * Returns the birth date of this employee.
    *
    * @return the birth date of this employee
    */
    @Override
    public java.util.Date getBirthDate() {
        return _employee.getBirthDate();
    }

    /**
    * Sets the birth date of this employee.
    *
    * @param birthDate the birth date of this employee
    */
    @Override
    public void setBirthDate(java.util.Date birthDate) {
        _employee.setBirthDate(birthDate);
    }

    /**
    * Returns the date of employment of this employee.
    *
    * @return the date of employment of this employee
    */
    @Override
    public java.util.Date getDateOfEmployment() {
        return _employee.getDateOfEmployment();
    }

    /**
    * Sets the date of employment of this employee.
    *
    * @param dateOfEmployment the date of employment of this employee
    */
    @Override
    public void setDateOfEmployment(java.util.Date dateOfEmployment) {
        _employee.setDateOfEmployment(dateOfEmployment);
    }

    /**
    * Returns the salary of this employee.
    *
    * @return the salary of this employee
    */
    @Override
    public int getSalary() {
        return _employee.getSalary();
    }

    /**
    * Sets the salary of this employee.
    *
    * @param salary the salary of this employee
    */
    @Override
    public void setSalary(int salary) {
        _employee.setSalary(salary);
    }

    /**
    * Returns the work phone of this employee.
    *
    * @return the work phone of this employee
    */
    @Override
    public java.lang.String getWorkPhone() {
        return _employee.getWorkPhone();
    }

    /**
    * Sets the work phone of this employee.
    *
    * @param workPhone the work phone of this employee
    */
    @Override
    public void setWorkPhone(java.lang.String workPhone) {
        _employee.setWorkPhone(workPhone);
    }

    /**
    * Returns the mobile phone of this employee.
    *
    * @return the mobile phone of this employee
    */
    @Override
    public java.lang.String getMobilePhone() {
        return _employee.getMobilePhone();
    }

    /**
    * Sets the mobile phone of this employee.
    *
    * @param mobilePhone the mobile phone of this employee
    */
    @Override
    public void setMobilePhone(java.lang.String mobilePhone) {
        _employee.setMobilePhone(mobilePhone);
    }

    /**
    * Returns the archive of this employee.
    *
    * @return the archive of this employee
    */
    @Override
    public boolean getArchive() {
        return _employee.getArchive();
    }

    /**
    * Returns <code>true</code> if this employee is archive.
    *
    * @return <code>true</code> if this employee is archive; <code>false</code> otherwise
    */
    @Override
    public boolean isArchive() {
        return _employee.isArchive();
    }

    /**
    * Sets whether this employee is archive.
    *
    * @param archive the archive of this employee
    */
    @Override
    public void setArchive(boolean archive) {
        _employee.setArchive(archive);
    }

    /**
    * Returns the position ID of this employee.
    *
    * @return the position ID of this employee
    */
    @Override
    public long getPositionId() {
        return _employee.getPositionId();
    }

    /**
    * Sets the position ID of this employee.
    *
    * @param positionId the position ID of this employee
    */
    @Override
    public void setPositionId(long positionId) {
        _employee.setPositionId(positionId);
    }

    @Override
    public boolean isNew() {
        return _employee.isNew();
    }

    @Override
    public void setNew(boolean n) {
        _employee.setNew(n);
    }

    @Override
    public boolean isCachedModel() {
        return _employee.isCachedModel();
    }

    @Override
    public void setCachedModel(boolean cachedModel) {
        _employee.setCachedModel(cachedModel);
    }

    @Override
    public boolean isEscapedModel() {
        return _employee.isEscapedModel();
    }

    @Override
    public java.io.Serializable getPrimaryKeyObj() {
        return _employee.getPrimaryKeyObj();
    }

    @Override
    public void setPrimaryKeyObj(java.io.Serializable primaryKeyObj) {
        _employee.setPrimaryKeyObj(primaryKeyObj);
    }

    @Override
    public com.liferay.portlet.expando.model.ExpandoBridge getExpandoBridge() {
        return _employee.getExpandoBridge();
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.model.BaseModel<?> baseModel) {
        _employee.setExpandoBridgeAttributes(baseModel);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portlet.expando.model.ExpandoBridge expandoBridge) {
        _employee.setExpandoBridgeAttributes(expandoBridge);
    }

    @Override
    public void setExpandoBridgeAttributes(
        com.liferay.portal.service.ServiceContext serviceContext) {
        _employee.setExpandoBridgeAttributes(serviceContext);
    }

    @Override
    public java.lang.Object clone() {
        return new EmployeeWrapper((Employee) _employee.clone());
    }

    @Override
    public int compareTo(
        com.liferay.EmployeeRegister.service.model.Employee employee) {
        return _employee.compareTo(employee);
    }

    @Override
    public int hashCode() {
        return _employee.hashCode();
    }

    @Override
    public com.liferay.portal.model.CacheModel<com.liferay.EmployeeRegister.service.model.Employee> toCacheModel() {
        return _employee.toCacheModel();
    }

    @Override
    public com.liferay.EmployeeRegister.service.model.Employee toEscapedModel() {
        return new EmployeeWrapper(_employee.toEscapedModel());
    }

    @Override
    public com.liferay.EmployeeRegister.service.model.Employee toUnescapedModel() {
        return new EmployeeWrapper(_employee.toUnescapedModel());
    }

    @Override
    public java.lang.String toString() {
        return _employee.toString();
    }

    @Override
    public java.lang.String toXmlString() {
        return _employee.toXmlString();
    }

    @Override
    public void persist()
        throws com.liferay.portal.kernel.exception.SystemException {
        _employee.persist();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!(obj instanceof EmployeeWrapper)) {
            return false;
        }

        EmployeeWrapper employeeWrapper = (EmployeeWrapper) obj;

        if (Validator.equals(_employee, employeeWrapper._employee)) {
            return true;
        }

        return false;
    }

    /**
     * @deprecated As of 6.1.0, replaced by {@link #getWrappedModel}
     */
    public Employee getWrappedEmployee() {
        return _employee;
    }

    @Override
    public Employee getWrappedModel() {
        return _employee;
    }

    @Override
    public void resetOriginalValues() {
        _employee.resetOriginalValues();
    }
}
