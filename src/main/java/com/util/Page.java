package com.util;

/**
 * 分页
 * 
 * @author her
 * 
 */
public class  Page {

	public static int  getpage(Integer page,Integer limit) {
		Integer nextpage = 0;
		if (null == page && null == limit) {
			limit = 10; // 每页显示
		} else {
			nextpage = (page - 1) * limit; // 下一页
		}
		return nextpage;
	}
}
