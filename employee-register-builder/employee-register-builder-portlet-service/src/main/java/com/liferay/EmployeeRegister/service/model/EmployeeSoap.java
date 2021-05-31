package com.liferay.EmployeeRegister.service.model;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * This class is used by SOAP remote services.
 *
 * @author Brian Wing Shun Chan
 * @generated
 */
public class EmployeeSoap implements Serializable {
    private String _uuid;
    private long _employeeId;
    private String _name;
    private String _patronymic;
    private String _surname;
    private String _gender;
    private Date _birthDate;
    private Date _dateOfEmployment;
    private int _salary;
    private String _workPhone;
    private String _mobilePhone;
    private boolean _archive;
    private long _positionId;

    public EmployeeSoap() {
    }

    public static EmployeeSoap toSoapModel(Employee model) {
        EmployeeSoap soapModel = new EmployeeSoap();

        soapModel.setUuid(model.getUuid());
        soapModel.setEmployeeId(model.getEmployeeId());
        soapModel.setName(model.getName());
        soapModel.setPatronymic(model.getPatronymic());
        soapModel.setSurname(model.getSurname());
        soapModel.setGender(model.getGender());
        soapModel.setBirthDate(model.getBirthDate());
        soapModel.setDateOfEmployment(model.getDateOfEmployment());
        soapModel.setSalary(model.getSalary());
        soapModel.setWorkPhone(model.getWorkPhone());
        soapModel.setMobilePhone(model.getMobilePhone());
        soapModel.setArchive(model.getArchive());
        soapModel.setPositionId(model.getPositionId());

        return soapModel;
    }

    public static EmployeeSoap[] toSoapModels(Employee[] models) {
        EmployeeSoap[] soapModels = new EmployeeSoap[models.length];

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModel(models[i]);
        }

        return soapModels;
    }

    public static EmployeeSoap[][] toSoapModels(Employee[][] models) {
        EmployeeSoap[][] soapModels = null;

        if (models.length > 0) {
            soapModels = new EmployeeSoap[models.length][models[0].length];
        } else {
            soapModels = new EmployeeSoap[0][0];
        }

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModels(models[i]);
        }

        return soapModels;
    }

    public static EmployeeSoap[] toSoapModels(List<Employee> models) {
        List<EmployeeSoap> soapModels = new ArrayList<EmployeeSoap>(models.size());

        for (Employee model : models) {
            soapModels.add(toSoapModel(model));
        }

        return soapModels.toArray(new EmployeeSoap[soapModels.size()]);
    }

    public long getPrimaryKey() {
        return _employeeId;
    }

    public void setPrimaryKey(long pk) {
        setEmployeeId(pk);
    }

    public String getUuid() {
        return _uuid;
    }

    public void setUuid(String uuid) {
        _uuid = uuid;
    }

    public long getEmployeeId() {
        return _employeeId;
    }

    public void setEmployeeId(long employeeId) {
        _employeeId = employeeId;
    }

    public String getName() {
        return _name;
    }

    public void setName(String name) {
        _name = name;
    }

    public String getPatronymic() {
        return _patronymic;
    }

    public void setPatronymic(String patronymic) {
        _patronymic = patronymic;
    }

    public String getSurname() {
        return _surname;
    }

    public void setSurname(String surname) {
        _surname = surname;
    }

    public String getGender() {
        return _gender;
    }

    public void setGender(String gender) {
        _gender = gender;
    }

    public Date getBirthDate() {
        return _birthDate;
    }

    public void setBirthDate(Date birthDate) {
        _birthDate = birthDate;
    }

    public Date getDateOfEmployment() {
        return _dateOfEmployment;
    }

    public void setDateOfEmployment(Date dateOfEmployment) {
        _dateOfEmployment = dateOfEmployment;
    }

    public int getSalary() {
        return _salary;
    }

    public void setSalary(int salary) {
        _salary = salary;
    }

    public String getWorkPhone() {
        return _workPhone;
    }

    public void setWorkPhone(String workPhone) {
        _workPhone = workPhone;
    }

    public String getMobilePhone() {
        return _mobilePhone;
    }

    public void setMobilePhone(String mobilePhone) {
        _mobilePhone = mobilePhone;
    }

    public boolean getArchive() {
        return _archive;
    }

    public boolean isArchive() {
        return _archive;
    }

    public void setArchive(boolean archive) {
        _archive = archive;
    }

    public long getPositionId() {
        return _positionId;
    }

    public void setPositionId(long positionId) {
        _positionId = positionId;
    }
}
