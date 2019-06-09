package cn.itcast.crm.role.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.crm.role.dao.dao.RoleDao;
import cn.itcast.crm.role.vo.RoleModel;

public class RoleImpl extends HibernateDaoSupport implements RoleDao{

	@SuppressWarnings("unchecked")
	public List<RoleModel> getAll() {
		DetachedCriteria dc = DetachedCriteria.forClass(RoleModel.class);
		return this.getHibernateTemplate().findByCriteria(dc);
	}

	@Override
	public void save(RoleModel rm) {
		this.getHibernateTemplate().save(rm);
	}

	@Override
	public RoleModel get(Long id) {
		return this.getHibernateTemplate().get(RoleModel.class, id);
	}

	@Override
	public void update(RoleModel rm) {
		this.getHibernateTemplate().update(rm);
	}

}
