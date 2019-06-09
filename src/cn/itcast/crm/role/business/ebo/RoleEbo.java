package cn.itcast.crm.role.business.ebo;

import java.util.List;

import cn.itcast.crm.role.business.ebi.RoleEbi;
import cn.itcast.crm.role.dao.dao.RoleDao;
import cn.itcast.crm.role.vo.RoleModel;

public class RoleEbo implements RoleEbi{
	private RoleDao roleDao;
	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}
	public List<RoleModel> getAll() {
		return roleDao.getAll();
	}
	@Override
	public void save(RoleModel rm) {
		roleDao.save(rm);
	}
	@Override
	public RoleModel get(Long id) {
		return roleDao.get(id);
	}
	@Override
	public void update(RoleModel rm) {
		roleDao.update(rm);
	}
	
}
