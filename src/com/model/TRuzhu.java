package com.model;

/**
 * TRuzhu generated by MyEclipse Persistence Tools
 */

public class TRuzhu implements java.io.Serializable
{

	private Integer id;
	private Integer kefangId;
	private String kehuming;
	private String dianhua;

	private String shenfenzheng;
	private String ruzhushi;
	private Integer yajin;
	private String shifoutui;//��-��
	
	private String tuifangshi;
	private Integer feiyong;
	private String beizhu;

	private TKefang kefang;

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

	public String getShifoutui()
	{
		return shifoutui;
	}

	public void setShifoutui(String shifoutui)
	{
		this.shifoutui = shifoutui;
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

	public void setId(Integer id)
	{
		this.id = id;
	}

	public TKefang getKefang()
	{
		return kefang;
	}

	public void setKefang(TKefang kefang)
	{
		this.kefang = kefang;
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

	public Integer getYajin()
	{
		return yajin;
	}

	public void setYajin(Integer yajin)
	{
		this.yajin = yajin;
	}
	
}