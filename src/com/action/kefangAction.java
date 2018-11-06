package com.action;

import java.util.List;
import java.util.Map;


import org.apache.struts2.ServletActionContext;

import com.dao.TKefangDAO;
import com.model.TKefang;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class kefangAction extends ActionSupport
{
	private Integer id;
	private String kefangleixing;
	private String fangjianhao;
	private String area;
	
	private String jieshao;
	private String fujian;
	private Integer qianshu;
	private String zhuangtai;//空闲中，已预约，已入住
	
	private String del;
	
	private TKefangDAO kefangDAO;
	
	
	
	public String kefangAdd()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		TKefang kefang=new TKefang();
		
		kefang.setKefangleixing(kefangleixing);
		kefang.setFangjianhao(fangjianhao);
		kefang.setArea(area);
		kefang.setJieshao(jieshao);
		
		kefang.setFujian(fujian);
		kefang.setQianshu(qianshu);
		kefang.setZhuangtai("空闲中");
		kefang.setDel("no");
			
		kefangDAO.save(kefang);
		request.put("msg", "客房信息添加成功");
			
		return "msg";
	}
	
	public String kefangMana()
	{
		String sql="from TKefang where del='no'";
		List kefangList=kefangDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("kefangList", kefangList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	
	public String kefangDel()
	{
		
		TKefang kefang=kefangDAO.findById(id);
		kefang.setDel("yes");
		kefangDAO.attachDirty(kefang);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "客房信息删除成功");
		return "msg";
	}
	
	
	public String kefangSelect()
	{
		String sql="from TKefang where del='no' and zhuangtai='空闲中'";
		List kefangList=kefangDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("kefangList", kefangList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String kefangAll()
	{
		String sql="from TKefang where del='no'";
		List kefangList=kefangDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("kefangList", kefangList);
		return ActionSupport.SUCCESS;
	}
	

	public String getArea()
	{
		return area;
	}

	public void setArea(String area)
	{
		this.area = area;
	}

	public String getFangjianhao()
	{
		return fangjianhao;
	}

	public void setFangjianhao(String fangjianhao)
	{
		this.fangjianhao = fangjianhao;
	}

	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getJieshao()
	{
		return jieshao;
	}

	public void setJieshao(String jieshao)
	{
		this.jieshao = jieshao;
	}

	public TKefangDAO getKefangDAO()
	{
		return kefangDAO;
	}

	public void setKefangDAO(TKefangDAO kefangDAO)
	{
		this.kefangDAO = kefangDAO;
	}

	public int getQianshu()
	{
		return qianshu;
	}

	public void setQianshu(int qianshu)
	{
		this.qianshu = qianshu;
	}

	public String getKefangleixing()
	{
		return kefangleixing;
	}

	public void setKefangleixing(String kefangleixing)
	{
		this.kefangleixing = kefangleixing;
	}
	
}
