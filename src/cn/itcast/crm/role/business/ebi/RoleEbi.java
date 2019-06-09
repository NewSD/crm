package cn.itcast.crm.role.business.ebi;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.crm.role.vo.RoleModel;

@Transactional
public interface RoleEbi {

	List<RoleModel> getAll();

	void save(RoleModel rm);

	RoleModel get(Long id);

	void update(RoleModel rm);

}
