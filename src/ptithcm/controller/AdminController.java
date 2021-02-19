package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.entity.*;

@Controller
@Transactional
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	SessionFactory sessionFactory;
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("login", new Users());
		return "admin/login";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(ModelMap model, @Validated @ModelAttribute("login") Users login, BindingResult errors,@RequestParam("username") String id,
			@RequestParam("password") String password) {
		if (errors.hasErrors()) {
			model.addAttribute("message", "");
			return "admin/login";
		} else {
			model.addAttribute("login", new Users());

			Session session = sessionFactory.getCurrentSession();

			String sql = "FROM Users WHERE username = :username AND password = :password";
			Query query = session.createQuery(sql);

			query.setParameter("username", login.getUsername());
			query.setParameter("password", login.getPassword());
			List<Users> list = query.list();
			model.addAttribute("login1", list);

			if (list.isEmpty()) {
				model.addAttribute("message", "Tên đăng nhập hoặc mật khẩu chưa chính xác");
				return "admin/login";

			} else {
				model.addAttribute("message", "Đăng nhập thành công với tên" + id);
				model.addAttribute("message1", "Đăng nhập thành công với password" + password);
			}
			return "admin/abc";
		}
	}
}
