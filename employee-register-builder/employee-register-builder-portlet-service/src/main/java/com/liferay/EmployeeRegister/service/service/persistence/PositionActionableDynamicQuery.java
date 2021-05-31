package com.liferay.EmployeeRegister.service.service.persistence;

import com.liferay.EmployeeRegister.service.model.Position;
import com.liferay.EmployeeRegister.service.service.PositionLocalServiceUtil;

import com.liferay.portal.kernel.dao.orm.BaseActionableDynamicQuery;
import com.liferay.portal.kernel.exception.SystemException;

/**
 * @author Brian Wing Shun Chan
 * @generated
 */
public abstract class PositionActionableDynamicQuery
    extends BaseActionableDynamicQuery {
    public PositionActionableDynamicQuery() throws SystemException {
        setBaseLocalService(PositionLocalServiceUtil.getService());
        setClass(Position.class);

        setClassLoader(com.liferay.EmployeeRegister.service.service.ClpSerializer.class.getClassLoader());

        setPrimaryKeyPropertyName("positionId");
    }
}
