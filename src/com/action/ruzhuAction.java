package com.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


import org.apache.struts2.ServletActionContext;

import com.dao.TKefangDAO;
import com.dao.TRuzhuDAO;
import com.dao.TYudingDAO;
import com.model.TKefang;
import com.model.TRuzhu;
import com.model.TYuding;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ruzhuAction extends ActionSupport
{
	private Integer id;
	private Integer kefangId;
	private String kehuming;
	private String dianhua;

	private String shenfenzheng;
	private String ruzhushi;
	private Integer yajin;
	private String shifoutui;//是-否
	
	private String tuifangshi;
	private Integer feiyong;
	private String beizhu;

	
	private TKefangDAO kefangDAO;
	private TRuzhuDAO ruzhuDAO;
	
	
	public String ruzhuAdd()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		TRuzhu ruzhu=new TRuzhu();
		
		ruzhu.setKefangId(kefangId);
		ruzhu.setKehuming(kehuming);
		ruzhu.setDianhua(dianhua);
		ruzhu.setShenfenzheng(shenfenzheng);
		
		ruzhu.setRuzhushi(ruzhushi);
		ruzhu.setYajin(yajin);
		ruzhu.setShifoutui("否");
		ruzhu.setTuifangshi("");
		ruzhu.setFeiyong(feiyong);
		
		ruzhu.setBeizhu(beizhu);
		
		ruzhu.setBeizhu(beizhu);
			
		ruzhuDAO.save(ruzhu);
		update_kefang_zhuangtai("已入住", kefangId);
		
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	public String ruzhuMana()
	{
		String sql="from TRuzhu";
		List ruzhuList=ruzhuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<ruzhuList.size();i++)
		{
			TRuzhu ruzhu=(TRuzhu)ruzhuList.get(i);
			ruzhu.setKefang(kefangDAO.findById(ruzhu.getKefangId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("ruzhuList", ruzhuList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String ruzhuDel()
	{
		
		TRuzhu ruzhu=ruzhuDAO.findById(id);
		ruzhuDAO.delete(ruzhu);
		
		update_kefang_zhuangtai("空闲中", ruzhu.getKefangId());
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息删除成功");
		return "msg";
	}
	
	
	
	public String ruzhu_weituifang()
	{
		String sql="from TRuzhu where shifoutui='否'";
		List ruzhuList=ruzhuDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<ruzhuList.size();i++)
		{
			TRuzhu ruzhu=(TRuzhu)ruzhuList.get(i);
			ruzhu.setKefang(kefangDAO.findById(ruzhu.getKefangId()));
		}
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("ruzhuList", ruzhuList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String ruzhu_tuifang()
	{
		
		TRuzhu ruzhu=ruzhuDAO.findById(id);
		
		ruzhu.setShifoutui("是");
		ruzhu.setTuifangshi(tuifangshi);
		ruzhu.setFeiyong(feiyong);
		ruzhu.setBeizhu(beizhu);
		
		ruzhuDAO.attachDirty(ruzhu);
		
		update_kefang_zhuangtai("空闲中", ruzhu.getKefangId());
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "退房退房成功");
		return "msg";
	}
	
	
	public String ruzhu_tongji()
	{
		HttpServletRequest request=ServletActionContext.getRequest();
		
		String shijian1=request.getParameter("shijian1");
		String shijian2=request.getParameter("shijian2");
		
		String sql="from TRuzhu where shifoutui='是' and tuifangshi>? and tuifangshi<?";
		Object[] c={shijian1,shijian2};
		List ruzhuList=ruzhuDAO.getHibernateTemplate().find(sql,c);
		for(int i=0;i<ruzhuList.size();i++)
		{
			TRuzhu ruzhu=(TRuzhu)ruzhuList.get(i);
			ruzhu.setKefang(kefangDAO.findById(ruzhu.getKefangId()));
		}
		
		request.setAttribute("ruzhuList", ruzhuList);
		return ActionSupport.SUCCESS;
	}
	
	public void update_kefang_zhuangtai(String zhuangtai,int id)
	{
		String sql="update TKefang set zhuangtai=? where id=?";
		Object[] c={zhuangtai,id};
		kefangDAO.getHibernateTemplate().bulkUpdate(sql,c);
	}

	public String getBeizhu()
	{
		return beizhu;
	}

	public void setBeizhu(String beizhu)
	{
		this.beizhu = beizhu;
	}

	public String getDianhua()
	{
		return dianhua;
	}

	public void setDianhua(String dianhua)
	{
		this.dianhua = dianhua;
	}

	public Integer getFeiyong()
	{
		return feiyong;
	}

	public void setFeiyong(Integer feiyong)
	{
		this.feiyong = feiyong;
	}

	public Integer getId()
	{
		return id;
	}

	public String getShifoutui()
	{
		return shifoutui;
	}

	public void setShifoutui(String shifoutui)
	{
		this.shifoutui = shifoutui;
	}

	public void setYajin(Integer yajin)
	{
		this.yajin = yajin;
	}

	public void setId(Integer id)
	{
		this.id = id;
	}

	public TKefangDAO getKefangDAO()
	{
		return kefangDAO;
	}

	public void setKefangDAO(TKefangDAO kefangDAO)
	{
		this.kefangDAO = kefangDAO;
	}

	public Integer getKefangId()
	{
		return kefangId;
	}

	public void setKefangId(Integer kefangId)
	{
		this.kefangId = kefangId;
	}

	public String getKehuming()
	{
		return kehuming;
	}

	public void setKehuming(String kehuming)
	{
		this.kehuming = kehuming;
	}

	public TRuzhuDAO getRuzhuDAO()
	{
		return ruzhuDAO;
	}

	public void setRuzhuDAO(TRuzhuDAO ruzhuDAO)
	{
		this.ruzhuDAO = ruzhuDAO;
	}

	public String getRuzhushi()
	{
		return ruzhushi;
	}

	public void setRuzhushi(String ruzhushi)
	{
		this.ruzhushi = ruzhushi;
	}

	public String getShenfenzheng()
	{
		return shenfenzheng;
	}

	public void setShenfenzheng(String shenfenzheng)
	{
		this.shenfenzheng = shenfenzheng;
	}

	public String getTuifangshi()
	{
		return tuifangshi;
	}

	public void setTuifangshi(String tuifangshi)
	{
		this.tuifangshi = tuifangshi;
	}

	public int getYajin()
	{
		return yajin;
	}

	public void setYajin(int yajin)
	{
		this.yajin = yajin;
	}

}
