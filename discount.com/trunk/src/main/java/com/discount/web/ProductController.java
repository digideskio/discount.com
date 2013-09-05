package com.discount.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.discount.service.ProductCategoryService;
import com.discount.service.ProductService;

@Controller
@RequestMapping(UrlConstants.PRODUCTS)
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private ProductCategoryService categoryService;

	@RequestMapping(UrlConstants.PRODUCTS)
	public String getProducts(Map<String, Object> map) {

		map.put("products", productService.findAll());

		return "products";
	}

	@RequestMapping(UrlConstants.GET_PRODUCT_BY_CATEGORY)
	public String getProductsByCategoryId(
			@PathVariable("categoryId") Integer categoryId,
			Map<String, Object> map) {

		map.put("category", categoryService.findById(categoryId));
		map.put("productsByCategory",
				productService.findByCategoryId(categoryId));

		return "products-by-category";
	}

	@RequestMapping(UrlConstants.GET_PRODUCT)
	public String getProductById(@PathVariable("productId") Integer productId,
			Map<String, Object> map) {

		map.put("product", productService.findById(productId));

		return "product";
	}

}
