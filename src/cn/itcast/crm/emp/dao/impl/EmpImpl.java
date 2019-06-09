package cn.itcast.crm.emp.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.crm.emp.dao.dao.EmpDao;
import cn.itcast.crm.emp.vo.EmpModel;

public class EmpImpl extends HibernateDaoSupport implements EmpDao {

	@Override
	public void save(EmpModel em) {
		this.getHibernateTemplate().save(em);
	}

}
