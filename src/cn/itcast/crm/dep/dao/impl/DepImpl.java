package cn.itcast.crm.dep.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.crm.dep.dao.dao.DepDao;
import cn.itcast.crm.dep.vo.DepModel;

public class DepImpl extends HibernateDaoSupport implements DepDao {

	@Override
	public void save(DepModel dm) {
		this.getHibernateTemplate().save(dm);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<DepModel> getAll() {
		DetachedCriteria dc = DetachedCriteria.forClass(DepModel.class);
		return this.getHibernateTemplate().findByCriteria(dc);
	}

	@Override
	public DepModel get(Long id) {
		return this.getHibernateTemplate().get(DepModel.class, id);
	}

	@Override
	public void update(DepModel dm) {
		this.getHibernateTemplate().update(dm);
	}

}
