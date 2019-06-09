package cn.itcast.crm.dep.business.ebi;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.crm.dep.vo.DepModel;

@Transactional
public interface DepEbi {

	void save(DepModel dm);

	List<DepModel> getAll();

	void update(DepModel dm);

	DepModel get(Long id);

}
