package com.liferay.EmployeeRegister.service.model.impl;

import com.liferay.EmployeeRegister.service.model.Position;

import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.model.CacheModel;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/**
 * The cache model class for representing Position in entity cache.
 *
 * @author Brian Wing Shun Chan
 * @see Position
 * @generated
 */
public class PositionCacheModel implements CacheModel<Position>, Externalizable {
    public String uuid;
    public long positionId;
    public String name;
    public boolean archive;
    public long employeeId;

    @Override
    public String toString() {
        StringBundler sb = new StringBundler(11);

        sb.append("{uuid=");
        sb.append(uuid);
        sb.append(", positionId=");
        sb.append(positionId);
        sb.append(", name=");
        sb.append(name);
        sb.append(", archive=");
        sb.append(archive);
        sb.append(", employeeId=");
        sb.append(employeeId);
        sb.append("}");

        return sb.toString();
    }

    @Override
    public Position toEntityModel() {
        PositionImpl positionImpl = new PositionImpl();

        if (uuid == null) {
            positionImpl.setUuid(StringPool.BLANK);
        } else {
            positionImpl.setUuid(uuid);
        }

        positionImpl.setPositionId(positionId);

        if (name == null) {
            positionImpl.setName(StringPool.BLANK);
        } else {
            positionImpl.setName(name);
        }

        positionImpl.setArchive(archive);
        positionImpl.setEmployeeId(employeeId);

        positionImpl.resetOriginalValues();

        return positionImpl;
    }

    @Override
    public void readExternal(ObjectInput objectInput) throws IOException {
        uuid = objectInput.readUTF();
        positionId = objectInput.readLong();
        name = objectInput.readUTF();
        archive = objectInput.readBoolean();
        employeeId = objectInput.readLong();
    }

    @Override
    public void writeExternal(ObjectOutput objectOutput)
        throws IOException {
        if (uuid == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(uuid);
        }

        objectOutput.writeLong(positionId);

        if (name == null) {
            objectOutput.writeUTF(StringPool.BLANK);
        } else {
            objectOutput.writeUTF(name);
        }

        objectOutput.writeBoolean(archive);
        objectOutput.writeLong(employeeId);
    }
}
