package cn.itcast.crm.dep.web;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import cn.itcast.crm.dep.business.ebi.DepEbi;
import cn.itcast.crm.dep.vo.DepModel;

public class DepAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	public DepModel dm = new DepModel();
	private DepEbi depEbi;

	public void setDepEbi(DepEbi depEbi) {
		this.depEbi = depEbi;
	}
	//退回页面
	public String toBack(){
		return "toBack";
	}
	
	// 跳转到列表
	public String list() {
		// 读取数据，放置在指定位置，页面从指定位置获取，完成数据展示
		List<DepModel> depList = depEbi.getAll();
		// request
		ActionContext.getContext().put("depList", depList);
		return "list";
	}

	// 跳转到添加页
	public String toAdd() {
		return "toAdd";
	}

	// 保存部门
	public String save() {
		// 将数据传递到业务层
		depEbi.save(dm);
		return "toList";
	}
	 
	//跳转至编辑页面
	public String toUpdate(){
		//将页面传递过来的uuid属性作为查询条件，查询将被修改的数据
		dm = depEbi.get(dm.getId());
		return "toUpdate";
	}
	// 修改部门
	public String update(){
		depEbi.update(dm);
		return "toList";
	}
	
	
	
	
}
