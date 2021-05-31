package com.liferay.EmployeeRegister.service.service.persistence;

import com.liferay.EmployeeRegister.service.NoSuchBankException;
import com.liferay.EmployeeRegister.service.model.Bank;
import com.liferay.EmployeeRegister.service.model.impl.BankImpl;
import com.liferay.EmployeeRegister.service.model.impl.BankModelImpl;
import com.liferay.EmployeeRegister.service.service.persistence.BankPersistence;
import com.liferay.EmployeeRegister.service.service.persistence.EmployeePersistence;

import com.liferay.portal.kernel.bean.BeanReference;
import com.liferay.portal.kernel.cache.CacheRegistryUtil;
import com.liferay.portal.kernel.dao.orm.EntityCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderCacheUtil;
import com.liferay.portal.kernel.dao.orm.FinderPath;
import com.liferay.portal.kernel.dao.orm.Query;
import com.liferay.portal.kernel.dao.orm.QueryPos;
import com.liferay.portal.kernel.dao.orm.QueryUtil;
import com.liferay.portal.kernel.dao.orm.Session;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import com.liferay.portal.kernel.util.GetterUtil;
import com.liferay.portal.kernel.util.InstanceFactory;
import com.liferay.portal.kernel.util.OrderByComparator;
import com.liferay.portal.kernel.util.PropsKeys;
import com.liferay.portal.kernel.util.PropsUtil;
import com.liferay.portal.kernel.util.SetUtil;
import com.liferay.portal.kernel.util.StringBundler;
import com.liferay.portal.kernel.util.StringPool;
import com.liferay.portal.kernel.util.StringUtil;
import com.liferay.portal.kernel.util.UnmodifiableList;
import com.liferay.portal.kernel.util.Validator;
import com.liferay.portal.kernel.uuid.PortalUUIDUtil;
import com.liferay.portal.model.CacheModel;
import com.liferay.portal.model.ModelListener;
import com.liferay.portal.service.persistence.impl.BasePersistenceImpl;
import com.liferay.portal.service.persistence.impl.TableMapper;
import com.liferay.portal.service.persistence.impl.TableMapperFactory;

import java.io.Serializable;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * The persistence implementation for the bank service.
 *
 * <p>
 * Caching information and settings can be found in <code>portal.properties</code>
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see BankPersistence
 * @see BankUtil
 * @generated
 */
public class BankPersistenceImpl extends BasePersistenceImpl<Bank>
    implements BankPersistence {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never modify or reference this class directly. Always use {@link BankUtil} to access the bank persistence. Modify <code>service.xml</code> and rerun ServiceBuilder to regenerate this class.
     */
    public static final String FINDER_CLASS_NAME_ENTITY = BankImpl.class.getName();
    public static final String FINDER_CLASS_NAME_LIST_WITH_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List1";
    public static final String FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION = FINDER_CLASS_NAME_ENTITY +
        ".List2";
    public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_ALL = new FinderPath(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankModelImpl.FINDER_CACHE_ENABLED, BankImpl.class,
            FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL = new FinderPath(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankModelImpl.FINDER_CACHE_ENABLED, BankImpl.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findAll", new String[0]);
    public static final FinderPath FINDER_PATH_COUNT_ALL = new FinderPath(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countAll", new String[0]);
    public static final FinderPath FINDER_PATH_WITH_PAGINATION_FIND_BY_UUID = new FinderPath(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankModelImpl.FINDER_CACHE_ENABLED, BankImpl.class,
            FINDER_CLASS_NAME_LIST_WITH_PAGINATION, "findByUuid",
            new String[] {
                String.class.getName(),
                
            Integer.class.getName(), Integer.class.getName(),
                OrderByComparator.class.getName()
            });
    public static final FinderPath FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_UUID = new FinderPath(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankModelImpl.FINDER_CACHE_ENABLED, BankImpl.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "findByUuid",
            new String[] { String.class.getName() },
            BankModelImpl.UUID_COLUMN_BITMASK);
    public static final FinderPath FINDER_PATH_COUNT_BY_UUID = new FinderPath(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankModelImpl.FINDER_CACHE_ENABLED, Long.class,
            FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION, "countByUuid",
            new String[] { String.class.getName() });
    private static final String _FINDER_COLUMN_UUID_UUID_1 = "bank.uuid IS NULL";
    private static final String _FINDER_COLUMN_UUID_UUID_2 = "bank.uuid = ?";
    private static final String _FINDER_COLUMN_UUID_UUID_3 = "(bank.uuid IS NULL OR bank.uuid = '')";
    private static final String _SQL_SELECT_BANK = "SELECT bank FROM Bank bank";
    private static final String _SQL_SELECT_BANK_WHERE = "SELECT bank FROM Bank bank WHERE ";
    private static final String _SQL_COUNT_BANK = "SELECT COUNT(bank) FROM Bank bank";
    private static final String _SQL_COUNT_BANK_WHERE = "SELECT COUNT(bank) FROM Bank bank WHERE ";
    private static final String _ORDER_BY_ENTITY_ALIAS = "bank.";
    private static final String _NO_SUCH_ENTITY_WITH_PRIMARY_KEY = "No Bank exists with the primary key ";
    private static final String _NO_SUCH_ENTITY_WITH_KEY = "No Bank exists with the key {";
    private static final boolean _HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE = GetterUtil.getBoolean(PropsUtil.get(
                PropsKeys.HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE));
    private static Log _log = LogFactoryUtil.getLog(BankPersistenceImpl.class);
    private static Set<String> _badColumnNames = SetUtil.fromArray(new String[] {
                "uuid", "bankId", "employeeId"
            });
    private static Bank _nullBank = new BankImpl() {
            @Override
            public Object clone() {
                return this;
            }

            @Override
            public CacheModel<Bank> toCacheModel() {
                return _nullBankCacheModel;
            }
        };

    private static CacheModel<Bank> _nullBankCacheModel = new CacheModel<Bank>() {
            @Override
            public Bank toEntityModel() {
                return _nullBank;
            }
        };

    @BeanReference(type = EmployeePersistence.class)
    protected EmployeePersistence employeePersistence;
    protected TableMapper<Bank, com.liferay.EmployeeRegister.service.model.Employee> bankToEmployeeTableMapper;

    public BankPersistenceImpl() {
        setModelClass(Bank.class);
    }

    /**
     * Returns all the banks where uuid = &#63;.
     *
     * @param uuid the uuid
     * @return the matching banks
     * @throws SystemException if a system exception occurred
     */
    @Override
    public List<Bank> findByUuid(String uuid) throws SystemException {
        return findByUuid(uuid, QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
    @Override
    public List<Bank> findByUuid(String uuid, int start, int end)
        throws SystemException {
        return findByUuid(uuid, start, end, null);
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
    @Override
    public List<Bank> findByUuid(String uuid, int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        boolean pagination = true;
        FinderPath finderPath = null;
        Object[] finderArgs = null;

        if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
                (orderByComparator == null)) {
            pagination = false;
            finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_UUID;
            finderArgs = new Object[] { uuid };
        } else {
            finderPath = FINDER_PATH_WITH_PAGINATION_FIND_BY_UUID;
            finderArgs = new Object[] { uuid, start, end, orderByComparator };
        }

        List<Bank> list = (List<Bank>) FinderCacheUtil.getResult(finderPath,
                finderArgs, this);

        if ((list != null) && !list.isEmpty()) {
            for (Bank bank : list) {
                if (!Validator.equals(uuid, bank.getUuid())) {
                    list = null;

                    break;
                }
            }
        }

        if (list == null) {
            StringBundler query = null;

            if (orderByComparator != null) {
                query = new StringBundler(3 +
                        (orderByComparator.getOrderByFields().length * 3));
            } else {
                query = new StringBundler(3);
            }

            query.append(_SQL_SELECT_BANK_WHERE);

            boolean bindUuid = false;

            if (uuid == null) {
                query.append(_FINDER_COLUMN_UUID_UUID_1);
            } else if (uuid.equals(StringPool.BLANK)) {
                query.append(_FINDER_COLUMN_UUID_UUID_3);
            } else {
                bindUuid = true;

                query.append(_FINDER_COLUMN_UUID_UUID_2);
            }

            if (orderByComparator != null) {
                appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
                    orderByComparator);
            } else
             if (pagination) {
                query.append(BankModelImpl.ORDER_BY_JPQL);
            }

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                if (bindUuid) {
                    qPos.add(uuid);
                }

                if (!pagination) {
                    list = (List<Bank>) QueryUtil.list(q, getDialect(), start,
                            end, false);

                    Collections.sort(list);

                    list = new UnmodifiableList<Bank>(list);
                } else {
                    list = (List<Bank>) QueryUtil.list(q, getDialect(), start,
                            end);
                }

                cacheResult(list);

                FinderCacheUtil.putResult(finderPath, finderArgs, list);
            } catch (Exception e) {
                FinderCacheUtil.removeResult(finderPath, finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return list;
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
    @Override
    public Bank findByUuid_First(String uuid,
        OrderByComparator orderByComparator)
        throws NoSuchBankException, SystemException {
        Bank bank = fetchByUuid_First(uuid, orderByComparator);

        if (bank != null) {
            return bank;
        }

        StringBundler msg = new StringBundler(4);

        msg.append(_NO_SUCH_ENTITY_WITH_KEY);

        msg.append("uuid=");
        msg.append(uuid);

        msg.append(StringPool.CLOSE_CURLY_BRACE);

        throw new NoSuchBankException(msg.toString());
    }

    /**
     * Returns the first bank in the ordered set where uuid = &#63;.
     *
     * @param uuid the uuid
     * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
     * @return the first matching bank, or <code>null</code> if a matching bank could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank fetchByUuid_First(String uuid,
        OrderByComparator orderByComparator) throws SystemException {
        List<Bank> list = findByUuid(uuid, 0, 1, orderByComparator);

        if (!list.isEmpty()) {
            return list.get(0);
        }

        return null;
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
    @Override
    public Bank findByUuid_Last(String uuid, OrderByComparator orderByComparator)
        throws NoSuchBankException, SystemException {
        Bank bank = fetchByUuid_Last(uuid, orderByComparator);

        if (bank != null) {
            return bank;
        }

        StringBundler msg = new StringBundler(4);

        msg.append(_NO_SUCH_ENTITY_WITH_KEY);

        msg.append("uuid=");
        msg.append(uuid);

        msg.append(StringPool.CLOSE_CURLY_BRACE);

        throw new NoSuchBankException(msg.toString());
    }

    /**
     * Returns the last bank in the ordered set where uuid = &#63;.
     *
     * @param uuid the uuid
     * @param orderByComparator the comparator to order the set by (optionally <code>null</code>)
     * @return the last matching bank, or <code>null</code> if a matching bank could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank fetchByUuid_Last(String uuid,
        OrderByComparator orderByComparator) throws SystemException {
        int count = countByUuid(uuid);

        if (count == 0) {
            return null;
        }

        List<Bank> list = findByUuid(uuid, count - 1, count, orderByComparator);

        if (!list.isEmpty()) {
            return list.get(0);
        }

        return null;
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
    @Override
    public Bank[] findByUuid_PrevAndNext(long bankId, String uuid,
        OrderByComparator orderByComparator)
        throws NoSuchBankException, SystemException {
        Bank bank = findByPrimaryKey(bankId);

        Session session = null;

        try {
            session = openSession();

            Bank[] array = new BankImpl[3];

            array[0] = getByUuid_PrevAndNext(session, bank, uuid,
                    orderByComparator, true);

            array[1] = bank;

            array[2] = getByUuid_PrevAndNext(session, bank, uuid,
                    orderByComparator, false);

            return array;
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }
    }

    protected Bank getByUuid_PrevAndNext(Session session, Bank bank,
        String uuid, OrderByComparator orderByComparator, boolean previous) {
        StringBundler query = null;

        if (orderByComparator != null) {
            query = new StringBundler(6 +
                    (orderByComparator.getOrderByFields().length * 6));
        } else {
            query = new StringBundler(3);
        }

        query.append(_SQL_SELECT_BANK_WHERE);

        boolean bindUuid = false;

        if (uuid == null) {
            query.append(_FINDER_COLUMN_UUID_UUID_1);
        } else if (uuid.equals(StringPool.BLANK)) {
            query.append(_FINDER_COLUMN_UUID_UUID_3);
        } else {
            bindUuid = true;

            query.append(_FINDER_COLUMN_UUID_UUID_2);
        }

        if (orderByComparator != null) {
            String[] orderByConditionFields = orderByComparator.getOrderByConditionFields();

            if (orderByConditionFields.length > 0) {
                query.append(WHERE_AND);
            }

            for (int i = 0; i < orderByConditionFields.length; i++) {
                query.append(_ORDER_BY_ENTITY_ALIAS);
                query.append(orderByConditionFields[i]);

                if ((i + 1) < orderByConditionFields.length) {
                    if (orderByComparator.isAscending() ^ previous) {
                        query.append(WHERE_GREATER_THAN_HAS_NEXT);
                    } else {
                        query.append(WHERE_LESSER_THAN_HAS_NEXT);
                    }
                } else {
                    if (orderByComparator.isAscending() ^ previous) {
                        query.append(WHERE_GREATER_THAN);
                    } else {
                        query.append(WHERE_LESSER_THAN);
                    }
                }
            }

            query.append(ORDER_BY_CLAUSE);

            String[] orderByFields = orderByComparator.getOrderByFields();

            for (int i = 0; i < orderByFields.length; i++) {
                query.append(_ORDER_BY_ENTITY_ALIAS);
                query.append(orderByFields[i]);

                if ((i + 1) < orderByFields.length) {
                    if (orderByComparator.isAscending() ^ previous) {
                        query.append(ORDER_BY_ASC_HAS_NEXT);
                    } else {
                        query.append(ORDER_BY_DESC_HAS_NEXT);
                    }
                } else {
                    if (orderByComparator.isAscending() ^ previous) {
                        query.append(ORDER_BY_ASC);
                    } else {
                        query.append(ORDER_BY_DESC);
                    }
                }
            }
        } else {
            query.append(BankModelImpl.ORDER_BY_JPQL);
        }

        String sql = query.toString();

        Query q = session.createQuery(sql);

        q.setFirstResult(0);
        q.setMaxResults(2);

        QueryPos qPos = QueryPos.getInstance(q);

        if (bindUuid) {
            qPos.add(uuid);
        }

        if (orderByComparator != null) {
            Object[] values = orderByComparator.getOrderByConditionValues(bank);

            for (Object value : values) {
                qPos.add(value);
            }
        }

        List<Bank> list = q.list();

        if (list.size() == 2) {
            return list.get(1);
        } else {
            return null;
        }
    }

    /**
     * Removes all the banks where uuid = &#63; from the database.
     *
     * @param uuid the uuid
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeByUuid(String uuid) throws SystemException {
        for (Bank bank : findByUuid(uuid, QueryUtil.ALL_POS, QueryUtil.ALL_POS,
                null)) {
            remove(bank);
        }
    }

    /**
     * Returns the number of banks where uuid = &#63;.
     *
     * @param uuid the uuid
     * @return the number of matching banks
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int countByUuid(String uuid) throws SystemException {
        FinderPath finderPath = FINDER_PATH_COUNT_BY_UUID;

        Object[] finderArgs = new Object[] { uuid };

        Long count = (Long) FinderCacheUtil.getResult(finderPath, finderArgs,
                this);

        if (count == null) {
            StringBundler query = new StringBundler(2);

            query.append(_SQL_COUNT_BANK_WHERE);

            boolean bindUuid = false;

            if (uuid == null) {
                query.append(_FINDER_COLUMN_UUID_UUID_1);
            } else if (uuid.equals(StringPool.BLANK)) {
                query.append(_FINDER_COLUMN_UUID_UUID_3);
            } else {
                bindUuid = true;

                query.append(_FINDER_COLUMN_UUID_UUID_2);
            }

            String sql = query.toString();

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                QueryPos qPos = QueryPos.getInstance(q);

                if (bindUuid) {
                    qPos.add(uuid);
                }

                count = (Long) q.uniqueResult();

                FinderCacheUtil.putResult(finderPath, finderArgs, count);
            } catch (Exception e) {
                FinderCacheUtil.removeResult(finderPath, finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return count.intValue();
    }

    /**
     * Caches the bank in the entity cache if it is enabled.
     *
     * @param bank the bank
     */
    @Override
    public void cacheResult(Bank bank) {
        EntityCacheUtil.putResult(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankImpl.class, bank.getPrimaryKey(), bank);

        bank.resetOriginalValues();
    }

    /**
     * Caches the banks in the entity cache if it is enabled.
     *
     * @param banks the banks
     */
    @Override
    public void cacheResult(List<Bank> banks) {
        for (Bank bank : banks) {
            if (EntityCacheUtil.getResult(BankModelImpl.ENTITY_CACHE_ENABLED,
                        BankImpl.class, bank.getPrimaryKey()) == null) {
                cacheResult(bank);
            } else {
                bank.resetOriginalValues();
            }
        }
    }

    /**
     * Clears the cache for all banks.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache() {
        if (_HIBERNATE_CACHE_USE_SECOND_LEVEL_CACHE) {
            CacheRegistryUtil.clear(BankImpl.class.getName());
        }

        EntityCacheUtil.clearCache(BankImpl.class.getName());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }

    /**
     * Clears the cache for the bank.
     *
     * <p>
     * The {@link com.liferay.portal.kernel.dao.orm.EntityCache} and {@link com.liferay.portal.kernel.dao.orm.FinderCache} are both cleared by this method.
     * </p>
     */
    @Override
    public void clearCache(Bank bank) {
        EntityCacheUtil.removeResult(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankImpl.class, bank.getPrimaryKey());

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
    }

    @Override
    public void clearCache(List<Bank> banks) {
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        for (Bank bank : banks) {
            EntityCacheUtil.removeResult(BankModelImpl.ENTITY_CACHE_ENABLED,
                BankImpl.class, bank.getPrimaryKey());
        }
    }

    /**
     * Creates a new bank with the primary key. Does not add the bank to the database.
     *
     * @param bankId the primary key for the new bank
     * @return the new bank
     */
    @Override
    public Bank create(long bankId) {
        Bank bank = new BankImpl();

        bank.setNew(true);
        bank.setPrimaryKey(bankId);

        String uuid = PortalUUIDUtil.generate();

        bank.setUuid(uuid);

        return bank;
    }

    /**
     * Removes the bank with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param bankId the primary key of the bank
     * @return the bank that was removed
     * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank remove(long bankId) throws NoSuchBankException, SystemException {
        return remove((Serializable) bankId);
    }

    /**
     * Removes the bank with the primary key from the database. Also notifies the appropriate model listeners.
     *
     * @param primaryKey the primary key of the bank
     * @return the bank that was removed
     * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank remove(Serializable primaryKey)
        throws NoSuchBankException, SystemException {
        Session session = null;

        try {
            session = openSession();

            Bank bank = (Bank) session.get(BankImpl.class, primaryKey);

            if (bank == null) {
                if (_log.isWarnEnabled()) {
                    _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
                }

                throw new NoSuchBankException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                    primaryKey);
            }

            return remove(bank);
        } catch (NoSuchBankException nsee) {
            throw nsee;
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }
    }

    @Override
    protected Bank removeImpl(Bank bank) throws SystemException {
        bank = toUnwrappedModel(bank);

        bankToEmployeeTableMapper.deleteLeftPrimaryKeyTableMappings(bank.getPrimaryKey());

        Session session = null;

        try {
            session = openSession();

            if (!session.contains(bank)) {
                bank = (Bank) session.get(BankImpl.class,
                        bank.getPrimaryKeyObj());
            }

            if (bank != null) {
                session.delete(bank);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        if (bank != null) {
            clearCache(bank);
        }

        return bank;
    }

    @Override
    public Bank updateImpl(com.liferay.EmployeeRegister.service.model.Bank bank)
        throws SystemException {
        bank = toUnwrappedModel(bank);

        boolean isNew = bank.isNew();

        BankModelImpl bankModelImpl = (BankModelImpl) bank;

        if (Validator.isNull(bank.getUuid())) {
            String uuid = PortalUUIDUtil.generate();

            bank.setUuid(uuid);
        }

        Session session = null;

        try {
            session = openSession();

            if (bank.isNew()) {
                session.save(bank);

                bank.setNew(false);
            } else {
                session.merge(bank);
            }
        } catch (Exception e) {
            throw processException(e);
        } finally {
            closeSession(session);
        }

        FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);

        if (isNew || !BankModelImpl.COLUMN_BITMASK_ENABLED) {
            FinderCacheUtil.clearCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);
        }
        else {
            if ((bankModelImpl.getColumnBitmask() &
                    FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_UUID.getColumnBitmask()) != 0) {
                Object[] args = new Object[] { bankModelImpl.getOriginalUuid() };

                FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_UUID, args);
                FinderCacheUtil.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_UUID,
                    args);

                args = new Object[] { bankModelImpl.getUuid() };

                FinderCacheUtil.removeResult(FINDER_PATH_COUNT_BY_UUID, args);
                FinderCacheUtil.removeResult(FINDER_PATH_WITHOUT_PAGINATION_FIND_BY_UUID,
                    args);
            }
        }

        EntityCacheUtil.putResult(BankModelImpl.ENTITY_CACHE_ENABLED,
            BankImpl.class, bank.getPrimaryKey(), bank);

        return bank;
    }

    protected Bank toUnwrappedModel(Bank bank) {
        if (bank instanceof BankImpl) {
            return bank;
        }

        BankImpl bankImpl = new BankImpl();

        bankImpl.setNew(bank.isNew());
        bankImpl.setPrimaryKey(bank.getPrimaryKey());

        bankImpl.setUuid(bank.getUuid());
        bankImpl.setBankId(bank.getBankId());
        bankImpl.setName(bank.getName());
        bankImpl.setBik(bank.getBik());
        bankImpl.setAddress(bank.getAddress());

        return bankImpl;
    }

    /**
     * Returns the bank with the primary key or throws a {@link com.liferay.portal.NoSuchModelException} if it could not be found.
     *
     * @param primaryKey the primary key of the bank
     * @return the bank
     * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank findByPrimaryKey(Serializable primaryKey)
        throws NoSuchBankException, SystemException {
        Bank bank = fetchByPrimaryKey(primaryKey);

        if (bank == null) {
            if (_log.isWarnEnabled()) {
                _log.warn(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY + primaryKey);
            }

            throw new NoSuchBankException(_NO_SUCH_ENTITY_WITH_PRIMARY_KEY +
                primaryKey);
        }

        return bank;
    }

    /**
     * Returns the bank with the primary key or throws a {@link com.liferay.EmployeeRegister.service.NoSuchBankException} if it could not be found.
     *
     * @param bankId the primary key of the bank
     * @return the bank
     * @throws com.liferay.EmployeeRegister.service.NoSuchBankException if a bank with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank findByPrimaryKey(long bankId)
        throws NoSuchBankException, SystemException {
        return findByPrimaryKey((Serializable) bankId);
    }

    /**
     * Returns the bank with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param primaryKey the primary key of the bank
     * @return the bank, or <code>null</code> if a bank with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank fetchByPrimaryKey(Serializable primaryKey)
        throws SystemException {
        Bank bank = (Bank) EntityCacheUtil.getResult(BankModelImpl.ENTITY_CACHE_ENABLED,
                BankImpl.class, primaryKey);

        if (bank == _nullBank) {
            return null;
        }

        if (bank == null) {
            Session session = null;

            try {
                session = openSession();

                bank = (Bank) session.get(BankImpl.class, primaryKey);

                if (bank != null) {
                    cacheResult(bank);
                } else {
                    EntityCacheUtil.putResult(BankModelImpl.ENTITY_CACHE_ENABLED,
                        BankImpl.class, primaryKey, _nullBank);
                }
            } catch (Exception e) {
                EntityCacheUtil.removeResult(BankModelImpl.ENTITY_CACHE_ENABLED,
                    BankImpl.class, primaryKey);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return bank;
    }

    /**
     * Returns the bank with the primary key or returns <code>null</code> if it could not be found.
     *
     * @param bankId the primary key of the bank
     * @return the bank, or <code>null</code> if a bank with the primary key could not be found
     * @throws SystemException if a system exception occurred
     */
    @Override
    public Bank fetchByPrimaryKey(long bankId) throws SystemException {
        return fetchByPrimaryKey((Serializable) bankId);
    }

    /**
     * Returns all the banks.
     *
     * @return the banks
     * @throws SystemException if a system exception occurred
     */
    @Override
    public List<Bank> findAll() throws SystemException {
        return findAll(QueryUtil.ALL_POS, QueryUtil.ALL_POS, null);
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
    @Override
    public List<Bank> findAll(int start, int end) throws SystemException {
        return findAll(start, end, null);
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
    @Override
    public List<Bank> findAll(int start, int end,
        OrderByComparator orderByComparator) throws SystemException {
        boolean pagination = true;
        FinderPath finderPath = null;
        Object[] finderArgs = null;

        if ((start == QueryUtil.ALL_POS) && (end == QueryUtil.ALL_POS) &&
                (orderByComparator == null)) {
            pagination = false;
            finderPath = FINDER_PATH_WITHOUT_PAGINATION_FIND_ALL;
            finderArgs = FINDER_ARGS_EMPTY;
        } else {
            finderPath = FINDER_PATH_WITH_PAGINATION_FIND_ALL;
            finderArgs = new Object[] { start, end, orderByComparator };
        }

        List<Bank> list = (List<Bank>) FinderCacheUtil.getResult(finderPath,
                finderArgs, this);

        if (list == null) {
            StringBundler query = null;
            String sql = null;

            if (orderByComparator != null) {
                query = new StringBundler(2 +
                        (orderByComparator.getOrderByFields().length * 3));

                query.append(_SQL_SELECT_BANK);

                appendOrderByComparator(query, _ORDER_BY_ENTITY_ALIAS,
                    orderByComparator);

                sql = query.toString();
            } else {
                sql = _SQL_SELECT_BANK;

                if (pagination) {
                    sql = sql.concat(BankModelImpl.ORDER_BY_JPQL);
                }
            }

            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(sql);

                if (!pagination) {
                    list = (List<Bank>) QueryUtil.list(q, getDialect(), start,
                            end, false);

                    Collections.sort(list);

                    list = new UnmodifiableList<Bank>(list);
                } else {
                    list = (List<Bank>) QueryUtil.list(q, getDialect(), start,
                            end);
                }

                cacheResult(list);

                FinderCacheUtil.putResult(finderPath, finderArgs, list);
            } catch (Exception e) {
                FinderCacheUtil.removeResult(finderPath, finderArgs);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return list;
    }

    /**
     * Removes all the banks from the database.
     *
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeAll() throws SystemException {
        for (Bank bank : findAll()) {
            remove(bank);
        }
    }

    /**
     * Returns the number of banks.
     *
     * @return the number of banks
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int countAll() throws SystemException {
        Long count = (Long) FinderCacheUtil.getResult(FINDER_PATH_COUNT_ALL,
                FINDER_ARGS_EMPTY, this);

        if (count == null) {
            Session session = null;

            try {
                session = openSession();

                Query q = session.createQuery(_SQL_COUNT_BANK);

                count = (Long) q.uniqueResult();

                FinderCacheUtil.putResult(FINDER_PATH_COUNT_ALL,
                    FINDER_ARGS_EMPTY, count);
            } catch (Exception e) {
                FinderCacheUtil.removeResult(FINDER_PATH_COUNT_ALL,
                    FINDER_ARGS_EMPTY);

                throw processException(e);
            } finally {
                closeSession(session);
            }
        }

        return count.intValue();
    }

    /**
     * Returns all the employees associated with the bank.
     *
     * @param pk the primary key of the bank
     * @return the employees associated with the bank
     * @throws SystemException if a system exception occurred
     */
    @Override
    public List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk) throws SystemException {
        return getEmployees(pk, QueryUtil.ALL_POS, QueryUtil.ALL_POS);
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
    @Override
    public List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk, int start, int end) throws SystemException {
        return getEmployees(pk, start, end, null);
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
    @Override
    public List<com.liferay.EmployeeRegister.service.model.Employee> getEmployees(
        long pk, int start, int end, OrderByComparator orderByComparator)
        throws SystemException {
        return bankToEmployeeTableMapper.getRightBaseModels(pk, start, end,
            orderByComparator);
    }

    /**
     * Returns the number of employees associated with the bank.
     *
     * @param pk the primary key of the bank
     * @return the number of employees associated with the bank
     * @throws SystemException if a system exception occurred
     */
    @Override
    public int getEmployeesSize(long pk) throws SystemException {
        long[] pks = bankToEmployeeTableMapper.getRightPrimaryKeys(pk);

        return pks.length;
    }

    /**
     * Returns <code>true</code> if the employee is associated with the bank.
     *
     * @param pk the primary key of the bank
     * @param employeePK the primary key of the employee
     * @return <code>true</code> if the employee is associated with the bank; <code>false</code> otherwise
     * @throws SystemException if a system exception occurred
     */
    @Override
    public boolean containsEmployee(long pk, long employeePK)
        throws SystemException {
        return bankToEmployeeTableMapper.containsTableMapping(pk, employeePK);
    }

    /**
     * Returns <code>true</code> if the bank has any employees associated with it.
     *
     * @param pk the primary key of the bank to check for associations with employees
     * @return <code>true</code> if the bank has any employees associated with it; <code>false</code> otherwise
     * @throws SystemException if a system exception occurred
     */
    @Override
    public boolean containsEmployees(long pk) throws SystemException {
        if (getEmployeesSize(pk) > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Adds an association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employeePK the primary key of the employee
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void addEmployee(long pk, long employeePK) throws SystemException {
        bankToEmployeeTableMapper.addTableMapping(pk, employeePK);
    }

    /**
     * Adds an association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employee the employee
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void addEmployee(long pk,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws SystemException {
        bankToEmployeeTableMapper.addTableMapping(pk, employee.getPrimaryKey());
    }

    /**
     * Adds an association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employeePKs the primary keys of the employees
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void addEmployees(long pk, long[] employeePKs)
        throws SystemException {
        for (long employeePK : employeePKs) {
            bankToEmployeeTableMapper.addTableMapping(pk, employeePK);
        }
    }

    /**
     * Adds an association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employees the employees
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void addEmployees(long pk,
        List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws SystemException {
        for (com.liferay.EmployeeRegister.service.model.Employee employee : employees) {
            bankToEmployeeTableMapper.addTableMapping(pk,
                employee.getPrimaryKey());
        }
    }

    /**
     * Clears all associations between the bank and its employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank to clear the associated employees from
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void clearEmployees(long pk) throws SystemException {
        bankToEmployeeTableMapper.deleteLeftPrimaryKeyTableMappings(pk);
    }

    /**
     * Removes the association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employeePK the primary key of the employee
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeEmployee(long pk, long employeePK)
        throws SystemException {
        bankToEmployeeTableMapper.deleteTableMapping(pk, employeePK);
    }

    /**
     * Removes the association between the bank and the employee. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employee the employee
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeEmployee(long pk,
        com.liferay.EmployeeRegister.service.model.Employee employee)
        throws SystemException {
        bankToEmployeeTableMapper.deleteTableMapping(pk,
            employee.getPrimaryKey());
    }

    /**
     * Removes the association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employeePKs the primary keys of the employees
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeEmployees(long pk, long[] employeePKs)
        throws SystemException {
        for (long employeePK : employeePKs) {
            bankToEmployeeTableMapper.deleteTableMapping(pk, employeePK);
        }
    }

    /**
     * Removes the association between the bank and the employees. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employees the employees
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void removeEmployees(long pk,
        List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws SystemException {
        for (com.liferay.EmployeeRegister.service.model.Employee employee : employees) {
            bankToEmployeeTableMapper.deleteTableMapping(pk,
                employee.getPrimaryKey());
        }
    }

    /**
     * Sets the employees associated with the bank, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employeePKs the primary keys of the employees to be associated with the bank
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void setEmployees(long pk, long[] employeePKs)
        throws SystemException {
        Set<Long> newEmployeePKsSet = SetUtil.fromArray(employeePKs);
        Set<Long> oldEmployeePKsSet = SetUtil.fromArray(bankToEmployeeTableMapper.getRightPrimaryKeys(
                    pk));

        Set<Long> removeEmployeePKsSet = new HashSet<Long>(oldEmployeePKsSet);

        removeEmployeePKsSet.removeAll(newEmployeePKsSet);

        for (long removeEmployeePK : removeEmployeePKsSet) {
            bankToEmployeeTableMapper.deleteTableMapping(pk, removeEmployeePK);
        }

        newEmployeePKsSet.removeAll(oldEmployeePKsSet);

        for (long newEmployeePK : newEmployeePKsSet) {
            bankToEmployeeTableMapper.addTableMapping(pk, newEmployeePK);
        }
    }

    /**
     * Sets the employees associated with the bank, removing and adding associations as necessary. Also notifies the appropriate model listeners and clears the mapping table finder cache.
     *
     * @param pk the primary key of the bank
     * @param employees the employees to be associated with the bank
     * @throws SystemException if a system exception occurred
     */
    @Override
    public void setEmployees(long pk,
        List<com.liferay.EmployeeRegister.service.model.Employee> employees)
        throws SystemException {
        try {
            long[] employeePKs = new long[employees.size()];

            for (int i = 0; i < employees.size(); i++) {
                com.liferay.EmployeeRegister.service.model.Employee employee = employees.get(i);

                employeePKs[i] = employee.getPrimaryKey();
            }

            setEmployees(pk, employeePKs);
        } catch (Exception e) {
            throw processException(e);
        } finally {
            FinderCacheUtil.clearCache(BankModelImpl.MAPPING_TABLE_EMP_BANKS_EMPLOYEES_NAME);
        }
    }

    @Override
    protected Set<String> getBadColumnNames() {
        return _badColumnNames;
    }

    /**
     * Initializes the bank persistence.
     */
    public void afterPropertiesSet() {
        String[] listenerClassNames = StringUtil.split(GetterUtil.getString(
                    com.liferay.util.service.ServiceProps.get(
                        "value.object.listener.com.liferay.EmployeeRegister.service.model.Bank")));

        if (listenerClassNames.length > 0) {
            try {
                List<ModelListener<Bank>> listenersList = new ArrayList<ModelListener<Bank>>();

                for (String listenerClassName : listenerClassNames) {
                    listenersList.add((ModelListener<Bank>) InstanceFactory.newInstance(
                            getClassLoader(), listenerClassName));
                }

                listeners = listenersList.toArray(new ModelListener[listenersList.size()]);
            } catch (Exception e) {
                _log.error(e);
            }
        }

        bankToEmployeeTableMapper = TableMapperFactory.getTableMapper("Emp_Banks_Employees",
                "bank_id", "employee_id", this, employeePersistence);
    }

    public void destroy() {
        EntityCacheUtil.removeCache(BankImpl.class.getName());
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_ENTITY);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITH_PAGINATION);
        FinderCacheUtil.removeCache(FINDER_CLASS_NAME_LIST_WITHOUT_PAGINATION);

        TableMapperFactory.removeTableMapper("Emp_Banks_Employees");
    }
}
