package cn.itcast.crm.dep.dao.dao;

import java.util.List;

import cn.itcast.crm.dep.vo.DepModel;

public interface DepDao {

	void save(DepModel dm);

	List<DepModel> getAll();

	DepModel get(Long id);

	void update(DepModel dm);

}
