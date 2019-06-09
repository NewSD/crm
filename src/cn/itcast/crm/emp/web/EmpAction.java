package cn.itcast.crm.emp.web;

import cn.itcast.crm.emp.business.ebi.EmpEbi;
import cn.itcast.crm.emp.vo.EmpModel;

import com.opensymphony.xwork2.ActionSupport;

public class EmpAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	public EmpModel em = new EmpModel();
	private EmpEbi empEbi;// 注入业务接口

	public void setEmpEbi(EmpEbi empEbi) {
		this.empEbi = empEbi;
	}

	//登录
	public String login() {
		System.out.println(em.getUsername()+" "+ em.getPassword());
		
		return "loginSuccess";
	}

	// 跳转到注册页
	public String toRegister() {
		return "toRegister";
	}
	//注册功能
	public String zhuce(){
		System.out.println(em.getUsername()+" "+ em.getPassword());
		empEbi.register(em);
		return "toLogin";
	}
}
