package com.bosic.school.repository;

import java.util.List;

public interface GenericRepository<T, PK> {
	// 新增
	void save(T t);

	// 修改
	void update(T t);

	// 删除
	void delete(PK id);

	// 批量删除
	void delete(PK[] ids);

	// 根据id查询
	T findOne(PK id);

	// 根据条件查询一条记录
	T findOne(String where, Object[] params);

	// 根据条件查询数量
	Long totalCount(String where, Object[] params);

	// 根据条件查询分页数据
	List<T> findPage(int pageIndex, int pageSize, String where, Object[] params);

	// 根据条件查询多条记录
	List<T> findList(String where, Object[] params);
}
