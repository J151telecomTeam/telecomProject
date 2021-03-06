package com.telecom.project.changelogmag.queryServerService;

import java.util.Map;

import com.telecom.project.beans.PageBean;

/**
 * 操作日志查询业务接口
 * @author 
 *
 */
public interface IQueryChangeService {
	/**
	 * 查所有操作日志
	 * @param page
	 * @return
	 */
	public PageBean findAllChangePage(PageBean page);
	
	/**
	 * 多参数，完成分页查询
	 * @param page 分页对象
	 * @param params 参数对象
	 * @return
	 */
	public PageBean findByParams2PageBean(PageBean page,Map params);
	
	
	
}
