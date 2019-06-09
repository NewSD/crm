package cn.itcast.crm.emp.business.ebi;

import org.springframework.transaction.annotation.Transactional;

import cn.itcast.crm.emp.vo.EmpModel;

@Transactional
public interface EmpEbi {

	void register(EmpModel em);

}
