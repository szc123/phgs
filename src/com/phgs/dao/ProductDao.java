package com.phgs.dao;

import java.util.List;

import com.phgs.bean.Product;

public interface ProductDao {

	int findAllProductNum();

	List findPageProduct(int startIndex, int pageSize);

	void deleteById(int id);

	void add(Product p);

	Product findById(int id);

	void update(Product p);

	List<Product> findAllProduct();

	List<Product> findIndexProduct();

}
