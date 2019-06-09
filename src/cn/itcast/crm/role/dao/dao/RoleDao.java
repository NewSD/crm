package cn.itcast.crm.role.dao.dao;

import java.util.List;

import cn.itcast.crm.role.vo.RoleModel;

public interface RoleDao {

	List<RoleModel> getAll();

	void save(RoleModel rm);

	RoleModel get(Long id);

	void update(RoleModel rm);

}
