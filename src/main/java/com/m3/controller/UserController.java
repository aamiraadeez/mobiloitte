package com.m3.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.m3.model.UserModel;
import com.m3.service.Userservice;

@Controller
public class UserController {

	@Autowired
	Userservice service;

	@GetMapping(value = "/login")
	public String login() {
		return "login";
	}
	

	@GetMapping(value = "/Dashboard")
	public String Dashboard(HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			return "Dashboard";
		}
	}

	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	@GetMapping("/forgetpassword")
	public String forget() {
		return "forgetpassword";
	}

	@PostMapping(value = "/addProfile")
	@ResponseBody
	public Map<String, Object> addProfile(@RequestBody UserModel user) throws IOException {
		System.out.println("user: " + user);
		return service.addProfile(user);
	}

	@PostMapping(value = "/loginValidation")
	public String loginValidation(UserModel user, Model model, RedirectAttributes r, HttpSession httpsession) {
		String confirm = service.trysessionLogin(user);
		if (confirm.equals("200")) {
			httpsession.setAttribute("sessionstatus", "true");
			httpsession.setAttribute("email", user.getEmail());
			return "redirect:/Dashboard";
		} else if (confirm.equals("201")) {
			model.addAttribute("ErrorForLogin", "Invalid_Password");
			return "login";
		} else {
			model.addAttribute("ErrorForLogin", "Email_not_Exist.");
			return "login";
		}
	}

	@PostMapping(value = "/registerValidation")
	public String registerValidation(UserModel user, RedirectAttributes rd) throws IOException {

		Integer emaildashId = Integer.parseInt(service.getEmailCount(user));
		if (emaildashId <= 0) {
			service.addProfile(user);
			return "login";
		} else {
			rd.addFlashAttribute("error", "Email allready Exist");
			return "redirect:/signup";
		}
	}
	
	
	@GetMapping(value = "/registerValidation")
	@ResponseBody
	public String registerValidation1(@RequestParam String email) throws IOException {

		Integer emaildashId = Integer.parseInt(service.getEmailCountAjax(email));
		if (emaildashId <= 0) {
			return "200";
		} else {
			return "201";
		}
	}

	@GetMapping(value = "/emplist")
	public String emplist(UserModel user, Model model, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("ProfileDetails", service.getallProfile());
			return "emplist";
		}
	}

	@GetMapping(value = "/emplist/delete")
	public String deleteProfilefromEmplist(@RequestParam Long id, Model model, UserModel user, RedirectAttributes rd) {
		service.deleteProfile(id);
		return "redirect:/emplist";
	}

	@GetMapping(value = "/table")
	public String table(UserModel user, Model model, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("ProfileDetails", service.getallProfile());
			return "table";
		}
	}

	@GetMapping(value = "/table/delete")
	public String deleteProfile(@RequestParam Long id, Model model, UserModel user, RedirectAttributes rd) {
		service.deleteProfile(id);
		return "redirect:/table";
	}

	@GetMapping(value = "/gridview/delete")
	public String deleteFromGridview(@RequestParam Long id, Model model, UserModel user, RedirectAttributes rd) {
		service.deleteProfile(id);
		return "redirect:/gridview/1";
	}

	@GetMapping(value = "/profile")
	public String profilepage(Model model, UserModel user, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("user", service.getProfileByEmail((String) session.getAttribute("email")));
			return "profile";
		}
	}

	@GetMapping(value = "/editProfile")
	public String editPage(Model model, UserModel user, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("user", service.getProfileByEmail((String) session.getAttribute("email")));
			return "editProfile";
		}
	}

	@GetMapping(value = "/editProfile1")
	public String editPage1(Model model, @RequestParam String email, UserModel user, HttpSession session) {
		if (session.getAttribute("email") != null) {
			model.addAttribute("user", service.getProfileByEmail(email));
			return "editProfile";
		} else {
			return "redirect:/login";
		}
	}

	@PostMapping(value = "/editProfile")
	public String showMyprofile(UserModel user, Long dashId, Model model, HttpSession session) throws IOException {
		if (session.getAttribute("email") != null) {
			service.updateProfile(user);
			return "redirect:/gridview/1";
		} else
			return "redirect:/login";
	}

	@GetMapping(value = "/gridview1")
	public String gridview1(UserModel user, Model model) {
		model.addAttribute("ProfileDetails", service.getalluser());
		System.out.println(service.getallProfile());
		return "gridview1";
	}

	@GetMapping("/gridview/{page_id}")
	public String listGrid2(Model model, UserModel user, HttpSession httpsession, @PathVariable int page_id) {
		try {
			if (httpsession.getAttribute("email") == null && httpsession.getAttribute("email").equals("")) {
				return "redirect:/login";
			} else {
				int total = 6;
				if (page_id == 1) {

				} else {
					page_id = (page_id - 1) * total + 1;
				}
				int totalCount = service.getProfileCount(user);
				int pageNumber = totalCount / total;
				if (totalCount % total != 0) {
					pageNumber++;
				}
				model.addAttribute("pageNumber", pageNumber);
				model.addAttribute("ProfileDetails", service.getallProfile());
				model.addAttribute("ProfileDetails", service.getProfileByPage(page_id, total));
				return "gridview";
			}
		} catch (Exception e) {
			return "redirect:/login";
		}
	}

	@GetMapping("/logout")
	public String logoutPage(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:/login";
	}

	@GetMapping("/mapview")
	public String map(HttpSession session, UserModel user, Model model) {
		try {
			if (session.getAttribute("email") == null && session.getAttribute("email").equals("")) {
				return "redirect:/login";
			} else {
				model.addAttribute("user", service.getProfileByEmail((String) session.getAttribute("email")));
				return "mapview";
			}
		} catch (Exception e) {
			return "redirect:/login";
		}
	}

	@GetMapping("/tabView")
	public String tabview(HttpSession session, UserModel user, Model model) {
		try {
			if (session.getAttribute("email") == null && session.getAttribute("email").equals("")) {
				return "redirect:/login";
			} else {
				model.addAttribute("user", service.getProfileByEmail((String) session.getAttribute("email")));
				return "tabView";
			}
		} catch (Exception e) {
			return "redirect:/login";
		}
	}

	@PostMapping("/forgetpassword")
	public String sendMail(UserModel user, HttpSession session, RedirectAttributes rd, Model model) {
		if (service.isProfileValid(user).equals("Error")) {
			rd.addFlashAttribute("notfound", "Enter the valid email");
			return "redirect:/forgetpassword";
		} else {
			session.setAttribute("session", user.getEmail());
			rd.addFlashAttribute("send", " Please Check Your Mail!");
			return "redirect:/login";
		}
	}
	
	@GetMapping("/chart")
	public String chart(Model model, HttpSession session) {
		try {
			if (session.getAttribute("email") == null && session.getAttribute("email").equals("")) {
				return "redirect:/login";
			} else {
				model.addAttribute("chartData", service.getChartData());
				model.addAttribute("userData", service.getProfileCount());
				return "chart";
			}
		} catch (Exception e) {
			return "redirect:/login";
		}
	}

	
	
	
}