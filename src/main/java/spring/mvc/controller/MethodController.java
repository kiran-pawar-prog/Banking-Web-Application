package spring.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import spring.mvc.dao.UserDaoImpl;
import spring.mvc.model.User;

@Controller
@RequestMapping("/")
public class MethodController {

	@Autowired
	UserDaoImpl dao;

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String createUser(@ModelAttribute("user") User user, ModelMap model) {
		dao.createUser(user);
		String accountNo = user.getAccountNo();
		String fName = user.getfName();
		String lName = user.getlName();
		System.out.println(accountNo);
		model.addAttribute("accountNo", accountNo);
		model.addAttribute("fName", fName);
		model.addAttribute("lName", lName);
		return "registered";
	}

	@RequestMapping(value = "logout", method = RequestMethod.POST)
	public String logout(HttpServletRequest req) {
		req.getSession().invalidate();
		return "redirect:/login";
	}

	@RequestMapping(value = "validate-forget", method = RequestMethod.POST)
	public String validateForget(@RequestParam("accNo") String accNo, @RequestParam("passRecQue") String passRecQue,
			@RequestParam("ans") String ans, ModelMap model, HttpServletRequest request) {
		User userByAccNo = dao.getUserByAccNo(accNo);
		if (userByAccNo == null) {
			model.addAttribute("status", "Invalid Credentials !!");
			return "forward:/forget-password";
		} else {
			if (userByAccNo.getPassRecoverQue().equals(passRecQue)) {
				if (userByAccNo.getAns().equals(ans)) {
					request.getSession().setAttribute("user", userByAccNo);
					return "new-password";
				} else {
					model.addAttribute("status", "Invalid Credentials !!");
					return "forward:/forget-password";
				}
			} else {
				model.addAttribute("status", "Invalid Credentials !!");
				return "forward:/forget-password";
			}
		}
	}

	@RequestMapping(value = "validate-new-password", method = RequestMethod.POST)
	public String validateNewPassword(@RequestParam("password") String password, ModelMap model,
			HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");

		if (user.getPassword().equals(password)) {
			model.addAttribute("already", "New Password must be different from Current Password !!");
			return "forward:/new-password";
		} else {
			user.setPassword(password);
			dao.updateInfo(user);
			request.getSession().invalidate();
			model.addAttribute("success", "Password Changed Successfully");
			return "forward:/login";
		}

	}

	@RequestMapping(value = "validate", method = RequestMethod.POST)
	public String validateUser(@RequestParam("accNo") String accNo, @RequestParam("password") String password,
			ModelMap model, HttpServletRequest request) {
		User userByAccNo = dao.getUserByAccNo(accNo);
		if (userByAccNo == null) {
			model.addAttribute("status", "Invalid Credentials !!");
			return "forward:/login";
		} else {
			if (userByAccNo.getPassword().equals(password)) {
				request.getSession().setAttribute("user", userByAccNo);
				return "forward:/main";
			} else {
				model.addAttribute("status", "Invalid Credentials !!");
				return "forward:/login";
			}
		}
	}

	@RequestMapping(value = "add-money-validate", method = RequestMethod.POST)
	public String addMoneyValidate(@RequestParam("amount") double amount, HttpServletRequest request, ModelMap model) {
		User user = (User) request.getSession().getAttribute("user");
		double newBalance = user.getAccountBal() + amount;
		user.setAccountBal(newBalance);
		dao.updateInfo(user);
		model.addAttribute("success", "Money Added Successfully");
		return "forward:/add-money";

	}

	@RequestMapping(value = "withdraw-money-validate", method = RequestMethod.POST)
	public String withdrawMoneyValidate(@RequestParam("amount") double amount, HttpServletRequest request,
			ModelMap model) {
		User user = (User) request.getSession().getAttribute("user");
		double newBalance = user.getAccountBal() - amount;
		if (newBalance < 0) {
			model.addAttribute("failed", "Insufficient Balance !!");
			return "forward:/withdraw-money";
		} else {
			user.setAccountBal(newBalance);
			dao.updateInfo(user);
			model.addAttribute("success", "Money Withdrawn Successfully");
			return "forward:/withdraw-money";
		}

	}

	@RequestMapping(value = "update-info-validate", method = RequestMethod.POST)
	public String updateInfoValidate(@ModelAttribute("user") User userVal, HttpServletRequest request, ModelMap model) {
		dao.updateInfo(userVal);
		request.getSession().setAttribute("user", userVal);
		model.addAttribute("success", "Profile Updated Successfully");
		return "forward:/main";
	}

	@RequestMapping(value = "update-pass-validate", method = RequestMethod.POST)
	public String updatePassValidate(@RequestParam("currentPass") String currentPass,
			@RequestParam("password") String password, ModelMap model, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");

		if (user.getPassword().equals(currentPass)) {
			user.setPassword(password);
			dao.updateInfo(user);
			request.getSession().setAttribute("user", user);
			model.addAttribute("success", "Password Changed Successfully");
			return "forward:/main";
		} else {
			model.addAttribute("failed", "Invalid Current Password !!");
			return "forward:/update-password";
		}
	}

	@RequestMapping(value = "deactivate-validate", method = RequestMethod.POST)
	public String deactivateValidate(ModelMap model, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");

		dao.deleteAccount(user.getAccountNo());
		model.addAttribute("success", "Account Deactivated Successfully.");
		return "forward:/login";

	}

}
