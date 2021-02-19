package ptithcm.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.Cart;
import ptithcm.entity.List_page;
import ptithcm.entity.Product;


@Transactional
@Controller
public class HomeController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("index")
		public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = query.list();
		model.addAttribute("product", list);
		
		String hql1 = "SELECT product FROM Product product WHERE product.loai_sp like '%nu%'";
		Query query1 = session.createQuery(hql1);
		@SuppressWarnings("unchecked")
		List<Product> list1 = query1.list();
		model.addAttribute("hot_product", list1);
		
		String hql2 = "SELECT product FROM Product product WHERE product.loai_sp like '%nam%'";
		Query query2 = session.createQuery(hql2);
		@SuppressWarnings("unchecked")
		List<Product> list2 = query2.list();
		model.addAttribute("selling_product", list2);
		
		String hql3 = "FROM Cart";
		Query query3 = session.createQuery(hql3);
		@SuppressWarnings("unchecked")
		List<Cart> list3 = query3.list();
		model.addAttribute("Cart", list3);
		
		String hql4 = "FROM List_page";
		Query query4 = session.createQuery(hql4);
		@SuppressWarnings("unchecked")
		List<List_page> list4 = query4.list();
		model.addAttribute("List_page", list4);
			return "index";
	}		
}
