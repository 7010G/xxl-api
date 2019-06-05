package com.xxl.api.admin.service;


import com.xxl.api.admin.core.model.XxlApiDataType;

/**
 * @author xuxueli
 */
public interface IXxlApiDataTypeService {
	/**
	 * 根据数据类型ID查询数据类型
	 * @param dataTypeId 数据类型ID
	 * @return 数据类型对象
	 */
	public XxlApiDataType loadDataType(String dataTypeId);

}
