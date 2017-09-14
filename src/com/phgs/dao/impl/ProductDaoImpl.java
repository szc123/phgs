package com.phgs.dao.impl;

import java.util.List;

import com.bw.dbassist.BeanHandler;
import com.bw.dbassist.BeanListHandler;
import com.bw.dbassist.DBAssist;
import com.phgs.bean.Product;
import com.phgs.dao.ProductDao;
import com.phgs.util.DBCPUtil;

public class ProductDaoImpl implements ProductDao {
	private DBAssist db=new DBAssist(DBCPUtil.getDataSource());
	public int findAllProductNum() {
		List list=(List) db.query("select * from product", new BeanListHandler(Product.class));
		return list.size();
	}
	public List findPageProduct(int startIndex, int pageSize) {
		return (List) db.query("select * from product order by productID desc limit ?,? ", new BeanListHandler(Product.class), startIndex,pageSize);
	}
	public void deleteById(int id) {
		db.update("delete from product where productID=?", id);
	}
	public void add(Product p) {
		db.update("insert into product(serialNumber,name,brand,model,price,picture,description) values(?,?,?,?,?,?,?)", p.getSerialNumber(),p.getName(),
				p.getBrand(),p.getModel(),p.getPrice(),p.getPicture(),p.getDescription());
	}
	public Product findById(int id) {
		return (Product) db.query("select * from product where productID=?", new BeanHandler(Product.class), id);
	}
	public void update(Product p) {
		db.update("update product set serialNumber=?,name=?,brand=?,model=?,price=?,picture=?,description=? where productID=?", p.getSerialNumber(),p.getName(),p.getBrand()
				,p.getModel(),p.getPrice(),p.getPicture(),p.getDescription(),p.getProductID());
	}
	public List<Product> findAllProduct() {
		return (List<Product>) db.query("select * from product", new BeanListHandler(Product.class));
	}
	public List<Product> findIndexProduct() {
		return (List<Product>) db.query("select * from product order by productID desc limit 0,8", new BeanListHandler(Product.class));
	}

}
