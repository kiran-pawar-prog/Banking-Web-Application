package spring.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.mvc.model.User;

@Controller
@RequestMapping("/")
public class MyController {

	@RequestMapping("")
	public String home() {
		return "home";
	}

	@RequestMapping("login")
	public String loginPage() {
		return "login";
	}

	@RequestMapping("register")
	public String registerPage() {
		return "register";
	}

	@RequestMapping("forget-password")
	public String forgetPasswordPage() {
		return "forget-password";
	}

	@RequestMapping("new-password")
	public String newPasswordPage() {
		return "new-password";
	}

	@RequestMapping("main")
	public String mainPage() {
		return "main";
	}

	@RequestMapping("main-page")
	public String newMainPage(ModelMap model) {
		model.addAttribute("valid", "yes");
		return "forward:/main";
	}

	@RequestMapping("add-money")
	public String addMoneyPage() {
		return "add-money";
	}

	@RequestMapping("withdraw-money")
	public String withdrawMoneyPage() {
		return "withdraw-money";
	}

	@RequestMapping("info")
	public String infoPage(HttpServletRequest request, ModelMap model) {
		User user = (User) request.getSession().getAttribute("user");
		model.addAttribute("user", user);
		return "info";
	}

	@RequestMapping("update-info")
	public String updateInfoPage(HttpServletRequest request, ModelMap model) {
		User user = (User) request.getSession().getAttribute("user");
		model.addAttribute("user", user);
		return "update-info";
	}

	@RequestMapping("update-password")
	public String updatePassPage() {
		return "update-password";
	}

	@RequestMapping("deactivate")
	public String deactivatePage(ModelMap model, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		if (user.getAccountBal() > 0) {
			model.addAttribute("failed",
					"You have Rs." + user.getAccountBal() + " balance left in your account, Please withdraw it.");
			return "forward:/main";
		} else {
			return "deactivate";
		}
	}

}
