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

import ptithcm.entity.Bill;

@Transactional
@Controller
public class BillController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("bill")
	public String bill(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Bill";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Bill> list = query.list();
		model.addAttribute("Bill", list);
		return "bill";
	}
}
