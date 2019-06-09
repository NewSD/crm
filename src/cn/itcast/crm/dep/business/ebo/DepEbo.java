package cn.itcast.crm.dep.business.ebo;

import java.util.List;

import cn.itcast.crm.dep.business.ebi.DepEbi;
import cn.itcast.crm.dep.dao.dao.DepDao;
import cn.itcast.crm.dep.vo.DepModel;

public class DepEbo implements DepEbi {
	private DepDao depDao;
	public void setDepDao(DepDao depDao) {
		this.depDao = depDao;
	}
	@Override
	public void save(DepModel dm) {
		depDao.save(dm);
	}
	@Override
	public List<DepModel> getAll() {
		return depDao.getAll();
	}
	@Override
	public void update(DepModel dm) {
		depDao.update(dm);
	}
	@Override
	public DepModel get(Long id) {
		return depDao.get(id);
	}
	
}
