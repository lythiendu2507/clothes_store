package ptithcm.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;

import ptithcm.entity.Bill;
import ptithcm.entity.Cart;


@Transactional
@Controller
public class Check_outController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value = "check_out", method = RequestMethod.GET)
	public String check_out(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Cart";		
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Cart> list = query.list();
		model.addAttribute("Cart", list);
		
		String hql1 = "FROM Bill";		
		Query query1 = session.createQuery(hql1);
		@SuppressWarnings("unchecked")
		List<Bill> list1 = query1.list();
		model.addAttribute("bill1", list1);
		model.addAttribute("bill", new Bill());
		
	return "check_out";
	}
	
	@RequestMapping(value = "check_out", method = RequestMethod.POST)
	public String check_out(ModelMap model, @Validated @ModelAttribute("bill") Bill bill, BindingResult errors) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "Vui lòng sửa các lỗi sau :");
			return "check_out";
		}else {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.save(bill);
			t.commit();
			model.addAttribute("message", "Đặt hàng thành công !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Đặt hàng thất bại !");
		} finally {
			session.close();
		}
		return "a";
	}
//	public String b(ModelMap model) {
//		Session session = factory.getCurrentSession();
//		String hql = "FROM Bill";
//		Query query = session.createQuery(hql);
//		@SuppressWarnings("unchecked")
//		List<Bill> list = query.list();
//		model.addAttribute("Bill", list);
//		return "b";
//}
}
	}
