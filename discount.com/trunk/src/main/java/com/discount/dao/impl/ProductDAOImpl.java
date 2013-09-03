package com.discount.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.discount.dao.ProductDAO;
import com.discount.domain.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void save(Product object) {
		sessionFactory.getCurrentSession().save(object);
	}

	@Override
	@Transactional
	public void update(Product object) {
		sessionFactory.getCurrentSession().update(object);
	}

	@Override
	@Transactional
	public void delete(Product object) {
		// TODO: input parameter Integer id
		// get object by id and delete it.
		sessionFactory.getCurrentSession().delete(object);
	}

	@Override
	@Transactional
	public Product findById(Integer id) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class,
				id);
	}

	@SuppressWarnings("unchecked")
	@Override
	@Transactional
	public List<Product> findAll() {
		return sessionFactory.getCurrentSession().createQuery("from Product")
				.list();
	}

	@Override
	@Transactional
	public Product findByName(String name) {
		// List<Product> list = getHibernateTemplate().find(
		// "from Product where name=?", name);
		// return list.get(0);
		// TODO: body
		return null;
	}

	@Override
	@Transactional
	public List<Product> findByCategoryId(Integer productCategoryId) {
		// List<Product> list = getHibernateTemplate().find(
		// "from Product where productCategoryId=?", productCategoryId);
		// return list;

		return sessionFactory.getCurrentSession().createQuery("from Product")
				.list();
	}

}
