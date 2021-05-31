package com.liferay.EmployeeRegister.service.service.impl;

import com.liferay.EmployeeRegister.service.model.Employee;
import com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil;
import com.liferay.EmployeeRegister.service.service.base.EmployeeLocalServiceBaseImpl;
import com.liferay.portal.kernel.dao.orm.DynamicQuery;
import com.liferay.portal.kernel.dao.orm.DynamicQueryFactoryUtil;
import com.liferay.portal.kernel.dao.orm.PropertyFactoryUtil;
import com.liferay.portal.kernel.exception.SystemException;
import com.liferay.portal.kernel.portlet.PortletClassLoaderUtil;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.SortedMap;
import java.util.TreeMap;

/**
 * The implementation of the employee local service.
 *
 * <p>
 * All custom service methods should be put in this class. Whenever methods are added, rerun ServiceBuilder to copy their definitions into the {@link com.liferay.EmployeeRegister.service.service.EmployeeLocalService} interface.
 *
 * <p>
 * This is a local service. Methods of this service will not have security checks based on the propagated JAAS credentials because this service can only be accessed from within the same VM.
 * </p>
 *
 * @author Brian Wing Shun Chan
 * @see com.liferay.EmployeeRegister.service.service.base.EmployeeLocalServiceBaseImpl
 * @see com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil
 */
public class EmployeeLocalServiceImpl extends EmployeeLocalServiceBaseImpl {
    /*
     * NOTE FOR DEVELOPERS:
     *
     * Never reference this interface directly. Always use {@link com.liferay.EmployeeRegister.service.service.EmployeeLocalServiceUtil} to access the employee local service.
     */
	
	public List<Employee> getEmployeeByName (String name, Date startDate, Date finishDate) {
		if (startDate == null) {
			try {
				startDate = new SimpleDateFormat("dd.MM.yyyy").parse("01.01.1900");
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		if (finishDate == null) {
			finishDate = new Date();
		}
		
		List<Employee> employeeList = new ArrayList<>();
		
		try {
			DynamicQuery query = DynamicQueryFactoryUtil
					.forClass(Employee.class, "employee", PortletClassLoaderUtil.getClassLoader());
			query.add(PropertyFactoryUtil.forName("employee.birthDate").between(startDate, finishDate));
			employeeList.addAll(EmployeeLocalServiceUtil.dynamicQuery(query));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (name.isEmpty()) {
			return employeeList;
		}
		
		String[] strName = name.split(" ");
		List<Employee> result = new ArrayList<>();
		SortedMap<Integer, List<Employee>> resultMap = new TreeMap<>(new Comparator<Integer>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				// TODO Auto-generated method stub
				return o1 - o2;
			}
		});
		
		for (Employee employee : employeeList) {
		    boolean compite = false;
		    String[] empName = { employee.getSurname(), employee.getName(), employee.getPatronymic() };
		    for (int iEmpName = 0; iEmpName < empName.length; iEmpName++) {
		        for (int iStrName = 0; iStrName < strName.length; iStrName++) {
		            if (empName[iEmpName].equals(strName[iStrName])) {
		                for (int jEmpName = 0; jEmpName < empName.length; jEmpName++) {
		                    if (jEmpName == iEmpName) {
		                        continue;
		                    }
		                    for (int jStrName = 0; jStrName < strName.length; jStrName++) {
		                        if (jStrName == iStrName) {
		                            continue;
		                        }
		                        if (empName[jEmpName].equals(strName[jStrName])) {
		                            for (int kEmpName = 0; kEmpName < empName.length; kEmpName++) {
        		                        if (kEmpName == jEmpName || kEmpName == iEmpName) {
        		                            continue;
        		                        }
        		                        for (int kStrName = 0; kStrName < strName.length; kStrName++) {
            		                        if (kStrName == jStrName || kStrName == iStrName) {
            		                            continue;
            		                        }
            		                        if (empName[kEmpName].equals(strName[kStrName])) {
            		                        	List<Employee> resultList = new ArrayList<>();
            		                            try {
            		                                resultList.addAll(resultMap.get(1));
            		                            }
            		                            catch (Exception e) {               
            		                            }
            		                            resultList.add(employee);
            		                            resultMap.put(1, resultList);
            		                            compite = true;
            		                        }
            		                        if (compite) {
		                                        break;
            		                        }
        		                        }
		                                if (compite) {
		                                    break;
            		                    }
		                            }
		                            if(!compite) {
            		                    List<Employee> resultList = new ArrayList<>();
            		                    try {
            		                        resultList.addAll(resultMap.get(2));
            		                    }
            		                    catch (Exception e) {
            		                    }
            		                    resultList.add(employee);
            		                    resultMap.put(2, resultList);
            		                    compite = true;
		                            }           
		                        }
		                        if (compite) {
		                            break;
            		            }
		                    }
		                    if (compite) {
		                        break;
                            }
		                }
		                if(!compite) {
            		        List<Employee> resultList = new ArrayList<>();
            		        try {
            		            resultList.addAll(resultMap.get(3));
                            }
            		        catch (Exception e) {
            		        }
            		        resultList.add(employee);
            		        resultMap.put(3, resultList);
            		        compite = true;
		                }   
		            }
		            if (compite) {
		                break;
		            }
		        }
		        if (compite) {
		            break;
		        }
		    }
		}
		
		for (Integer key : resultMap.keySet()) {
			try {
				result.addAll(resultMap.get(key));
			}
			catch (Exception e) {
				
			}
		}
		
		return result;
	}
	
	public List<Employee> getAllEmployee () {
		DynamicQuery query = DynamicQueryFactoryUtil
				.forClass(Employee.class, "employee", PortletClassLoaderUtil.getClassLoader());
		List<Employee> result = new ArrayList<>();
		try {
			result.addAll(EmployeeLocalServiceUtil.dynamicQuery(query));
		}
		catch (SystemException e) {
		}
		return result;
	}
}
