package com.liferay.EmployeeRegister.service.model.impl;

import com.liferay.EmployeeRegister.service.model.Employee;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

import java.util.Date;

/**
 * The cache model class for representing Employee in entity cache.
 *
 * @author Brian Wing Shun Chan
 * @see Employee
 * @generated
 */
public class EmployeeCacheModel implements CacheModel<Employee>, Externalizable {
    public String uuid;
    public long employeeId;
    public String name;
    public String patronymic;
    public String surname;
    public String gender;
    public long birthDate;
    public long dateOfEmployment;
    public int salary;
    public String workPhone;
    public String mobilePhone;
    public boolean archive;
    public long positionId;

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(27);

        sb.append("{uuid=");
        sb.append(uuid);
        sb.append(", employeeId=");
        sb.append(employeeId);
        sb.append(", name=");
        sb.append(name);
        sb.append(", patronymic=");
        sb.append(patronymic);
        sb.append(", surname=");
        sb.append(surname);
        sb.append(", gender=");
        sb.append(gender);
        sb.append(", birthDate=");
        sb.append(birthDate);
        sb.append(", dateOfEmployment=");
        sb.append(dateOfEmployment);
        sb.append(", salary=");
        sb.append(salary);
        sb.append(", workPhone=");
        sb.append(workPhone);
        sb.append(", mobilePhone=");
        sb.append(mobilePhone);
        sb.append(", archive=");
        sb.append(archive);
        sb.append(", positionId=");
        sb.append(positionId);
        sb.append("}");

        return sb.toString();
    }

    @Override
    public Employee toEntityModel() {
        EmployeeImpl employeeImpl = new EmployeeImpl();

        if (uuid == null) {
            employeeImpl.setUuid(StringPool.BLANK);
        } else {
            employeeImpl.setUuid(uuid);
        }

        employeeImpl.setEmployeeId(employeeId);

        if (name == null) {
            employeeImpl.setName(StringPool.BLANK);
        } else {
            employeeImpl.setName(name);
        }

        if (patronymic == null) {
            employeeImpl.setPatronymic(StringPool.BLANK);
        } else {
            employeeImpl.setPatronymic(patronymic);
        }

        if (surname == null) {
            employeeImpl.setSurname(StringPool.BLANK);
        } else {
            employeeImpl.setSurname(surname);
        }

        if (gender == null) {
            employeeImpl.setGender(StringPool.BLANK);
        } else {
            employeeImpl.setGender(gender);
        }

        if (birthDate == Long.MIN_VALUE) {
            employeeImpl.setBirthDate(null);
        } else {
            employeeImpl.setBirthDate(new Date(birthDate));
        }

        if (dateOfEmployment == Long.MIN_VALUE) {
            employeeImpl.setDateOfEmployment(null);
        } else {
            employeeImpl.setDateOfEmployment(new Date(dateOfEmployment));
        }

        employeeImpl.setSalary(salary);

        if (workPhone == null) {
            employeeImpl.setWorkPhone(StringPool.BLANK);
        } else {
            employeeImpl.setWorkPhone(workPhone);
        }

        if (mobilePhone == null) {
            employeeImpl.setMobilePhone(StringPool.BLANK);
        } else {
            employeeImpl.setMobilePhone(mobilePhone);
        }

        employeeImpl.setArchive(archive);
        employeeImpl.setPositionId(positionId);

        employeeImpl.resetOriginalValues();

        return employeeImpl;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException {
        uuid = objectInput.readUTF();
        employeeId = objectInput.readLong();
        name = objectInput.readUTF();
        patronymic = objectInput.readUTF();
        surname = objectInput.readUTF();
        gender = objectInput.readUTF();
        birthDate = objectInput.readLong();
        dateOfEmployment = objectInput.readLong();
        salary = objectInput.readInt();
        workPhone = objectInput.readUTF();
        mobilePhone = objectInput.readUTF();
        archive = objectInput.readBoolean();
        positionId = objectInput.readLong();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput)
        throws IOException {
        if (uuid == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(uuid);
        }

        objectOutput.writeLong(employeeId);

        if (name == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(name);
        }

        if (patronymic == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(patronymic);
        }

        if (surname == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(surname);
        }

        if (gender == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(gender);
        }

        objectOutput.writeLong(birthDate);
        objectOutput.writeLong(dateOfEmployment);
        objectOutput.writeInt(salary);

        if (workPhone == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(workPhone);
        }

        if (mobilePhone == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(mobilePhone);
        }

        objectOutput.writeBoolean(archive);
        objectOutput.writeLong(positionId);
    }
}
