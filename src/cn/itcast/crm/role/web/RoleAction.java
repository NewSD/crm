package cn.itcast.crm.role.web;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.itcast.crm.dep.business.ebi.DepEbi;
import cn.itcast.crm.dep.vo.DepModel;
import cn.itcast.crm.role.business.ebi.RoleEbi;
import cn.itcast.crm.role.vo.RoleModel;

public class RoleAction extends ActionSupport{
	private static final long serialVersionUID = -4885956289944352299L;
	public RoleModel rm = new RoleModel();
	private RoleEbi roleEbi;
	private DepEbi depEbi;
	public void setRoleEbi(RoleEbi roleEbi) {
		this.roleEbi = roleEbi;
	}
	public void setDepEbi(DepEbi depEbi) {
		this.depEbi = depEbi;
	}
	
	//退回页面
	public String toBack(){
		return "toBack";
	}
	
	//跳转到列表
	public String list(){
		System.out.println("开始查询职务列表");
		List<RoleModel> roleList = roleEbi.getAll();
		System.out.println("查询职务列表结束");
		
		for (RoleModel roleModel : roleList) {
			System.out.println("输出每个职务的详细信息,含有所属部门");
			System.out.println(roleModel.getId()+"  "+ roleModel.getName()+ "  "+ roleModel.getDm().getName());
		}
		ActionContext.getContext().put("roleList", roleList);
		return "list";
	}
	
	//添加职务
	// 跳转到添加页
	public String toAdd() {
		//添加职务时要选择添加职务归属的部门是哪一个
		List<DepModel> depList = depEbi.getAll();
		ActionContext.getContext().put("depList",depList);
		return "toAdd";
	}

	// 保存部门
	public String save() {
		// 将数据传递到业务层
		System.out.println(rm.getId()+", "+rm.getName()+", "+ rm.getDm().getName());
		roleEbi.save(rm);
		return "toList";
	}
	//跳转至修改页面,要带有部门列表
	public String toUpdate(){
		//跳转到修改页，修改的信息中要加载部门信息
		List<DepModel> depList = depEbi.getAll();
		ActionContext.getContext().put("depList",depList);
		//加载被修改的职务信息
		rm = roleEbi.get(rm.getId());
		return "toUpdate";
	}
	
	public String update(){
		roleEbi.update(rm);
		return "toList";
	}
}
