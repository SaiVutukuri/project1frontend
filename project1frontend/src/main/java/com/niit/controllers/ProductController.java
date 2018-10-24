package com.niit.controllers;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.configuration.DBConfiguration;
import com.niit.daoimpl.ProductDaoImpl;
import com.niit.models.Product;
import com.niit.services.ProductService;
import com.niit.servicesimpl.ProductServiceImpl;

@Controller
public class ProductController {
@Autowired
private ProductService productservice;
ApplicationContext ac = new AnnotationConfigApplicationContext(DBConfiguration.class, ProductDaoImpl.class, ProductServiceImpl.class);
ProductService pds = (ProductService)ac.getBean("productServiceImpl");
public ProductController(){
		System.out.println("ProductController Bean Is Created...!");
	}
@RequestMapping(value="/all/getallproducts/")
public String getAllProducts(Model m){
	List<Product> products = productservice.getAllProducts();
	m.addAttribute("product",products);
	return "listofproducts";
}
@RequestMapping(value="/all/getproducts")
public String getProduct(@RequestParam int id,Model m)
{
	Product products = productservice.selectProducts(id);
	m.addAttribute("productAttr",products);
	return "viewproduct";
}
@RequestMapping(value="/all/deleteproduct")
public String deleteProduct(@RequestParam int id,Model m)
{
    productservice.deleteProducts(id);
	return "listofproducts";
}
@RequestMapping(value="/all/addproduct")
public String insertPage()
{
  return "addproduct";
}
@RequestMapping(value="/all/productinsert")
public String addProduct(Model m, HttpServletRequest req)
{
String pname = req.getParameter("name");
String pdesc = req.getParameter("description");
int pqty = Integer.parseInt(req.getParameter("quantity"));
double price = Double.parseDouble(req.getParameter("price"));
/*ApplicationContext ac = new AnnotationConfigApplicationContext(new Class[] { H2Configuration.class, ProductDaoImpl.class, ProductServiceImpl.class });
ProductService pds = (ProductService)ac.getBean("productServiceImpl");*/
Product p1 = new Product();
p1.setProductname(pname);
p1.setProductdesc(pdesc);
p1.setQuantity(pqty);
p1.setPrice(price);

pds.addProduct(p1);
return "listofproducts";
}
}
