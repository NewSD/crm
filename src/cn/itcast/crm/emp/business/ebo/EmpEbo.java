package cn.itcast.crm.emp.business.ebo;

import cn.itcast.crm.emp.business.ebi.EmpEbi;
import cn.itcast.crm.emp.dao.dao.EmpDao;
import cn.itcast.crm.emp.vo.EmpModel;

public class EmpEbo implements EmpEbi{
	private EmpDao empDao;
	public void setEmpDao(EmpDao empDao) {
		this.empDao = empDao;
	}
	@Override
	public void register(EmpModel em) {
		empDao.save(em);
	}
	
}
