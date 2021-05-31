package com.liferay.EmployeeRegister.service.model;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.List;

/**
 * This class is used by SOAP remote services.
 *
 * @author Brian Wing Shun Chan
 * @generated
 */
public class PositionSoap implements Serializable {
    private String _uuid;
    private long _positionId;
    private String _name;
    private boolean _archive;
    private long _employeeId;

    public PositionSoap() {
    }

    public static PositionSoap toSoapModel(Position model) {
        PositionSoap soapModel = new PositionSoap();

        soapModel.setUuid(model.getUuid());
        soapModel.setPositionId(model.getPositionId());
        soapModel.setName(model.getName());
        soapModel.setArchive(model.getArchive());
        soapModel.setEmployeeId(model.getEmployeeId());

        return soapModel;
    }

    public static PositionSoap[] toSoapModels(Position[] models) {
        PositionSoap[] soapModels = new PositionSoap[models.length];

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModel(models[i]);
        }

        return soapModels;
    }

    public static PositionSoap[][] toSoapModels(Position[][] models) {
        PositionSoap[][] soapModels = null;

        if (models.length > 0) {
            soapModels = new PositionSoap[models.length][models[0].length];
        } else {
            soapModels = new PositionSoap[0][0];
        }

        for (int i = 0; i < models.length; i++) {
            soapModels[i] = toSoapModels(models[i]);
        }

        return soapModels;
    }

    public static PositionSoap[] toSoapModels(List<Position> models) {
        List<PositionSoap> soapModels = new ArrayList<PositionSoap>(models.size());

        for (Position model : models) {
            soapModels.add(toSoapModel(model));
        }

        return soapModels.toArray(new PositionSoap[soapModels.size()]);
    }

    public long getPrimaryKey() {
        return _positionId;
    }

    public void setPrimaryKey(long pk) {
        setPositionId(pk);
    }

    public String getUuid() {
        return _uuid;
    }

    public void setUuid(String uuid) {
        _uuid = uuid;
    }

    public long getPositionId() {
        return _positionId;
    }

    public void setPositionId(long positionId) {
        _positionId = positionId;
    }

    public String getName() {
        return _name;
    }

    public void setName(String name) {
        _name = name;
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

    public long getEmployeeId() {
        return _employeeId;
    }

    public void setEmployeeId(long employeeId) {
        _employeeId = employeeId;
    }
}
