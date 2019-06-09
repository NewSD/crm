package cn.itcast.crm.role.vo;

import cn.itcast.crm.dep.vo.DepModel;

//职务类
public class RoleModel {
	private Long id;//职务id
	
	private String name;//职务名字
	//一个职务对应一个部门
	private DepModel dm;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public DepModel getDm() {
		return dm;
	}
	public void setDm(DepModel dm) {
		this.dm = dm;
	}
	
}
