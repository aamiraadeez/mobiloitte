package com.m3.controller;

import java.io.IOException;
import java.util.List;
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



/**
 * @author Mohammad aamir
 *
 */
@Controller
public class UserController {

	@Autowired
	Userservice service;

	/**
	 * @return login page
	 */
	@GetMapping(value = "/login")
	public String login() {
		return "login";
	}
	

	/**
	 * @return signup page
	 */
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	/**
	 * @return forgetpassword page
	 */
	@GetMapping("/forgetpassword")
	public String forget() {
		return "forgetpassword";
	}
	/**
	 * @param session
	 * @param model
	 * @return Dashboard page 
	 */
	@GetMapping(value = "/Dashboard")
	public String Dashboard(HttpSession session , Model model ) {
		try {
			if (session.getAttribute("email") == null && session.getAttribute("email").equals("")) {
				return "redirect:/login";
			} else {
				model.addAttribute("chartData", service.getChartData());
				model.addAttribute("userData", service.getProfileCount());
				return "Dashboard";
			}
		} catch (Exception e) {
			return "redirect:/login";
		}

	}

	/**
	 * @param user
	 * @return addprofile to serviceImpl
	 * @throws IOException
	 */
	@PostMapping(value = "/addProfile")
	@ResponseBody
	public Map<String, Object> addProfile(@RequestBody UserModel user) throws IOException {
		//		System.out.println("user: " + user);
		return service.addProfile(user);
	}

	/**
	 * @param user
	 * @param model
	 * @param r
	 * @param httpsession
	 * @return trysessionLogin page to serviceImpl
	 */
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

	/**
	 * @param user
	 * @param rd
	 * @return addprofile to serivce Impl
	 * @throws IOException
	 */
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
	
	
	/**
	 * @param email
	 * @return  getemailcountAjax via email  
	 * @throws IOException
	 */
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

	/**
	 * @param user
	 * @param model
	 * @param session
	 * @return get all employee list 
	 */
	@GetMapping(value = "/emplist")
	public String emplist(UserModel user, Model model, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("ProfileDetails", service.getallProfile());
			return "emplist";
		}
	}

	/**
	 * @param id
	 * @param model
	 * @param user
	 * @param rd
	 * @return delete profile by id 
	 */
	@GetMapping(value = "/emplist/delete")
	public String deleteProfilefromEmplist(@RequestParam Long id, Model model, UserModel user, RedirectAttributes rd) {
		service.deleteProfile(id);
		return "redirect:/emplist";
	}

	/**
	 * @param user
	 * @param model
	 * @param session
	 * @return  get all profile 
	 */
	@GetMapping(value = "/table")
	public String table(UserModel user, Model model, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("ProfileDetails", service.getallProfile());
			return "table";
		}
	}

	/**
	 * @param id
	 * @param model
	 * @param user
	 * @param rd
	 * @return table view
	 */
	@GetMapping(value = "/table/delete")
	public String deleteProfile(@RequestParam Long id, Model model, UserModel user, RedirectAttributes rd) {
		service.deleteProfile(id);
		return "redirect:/table";
	}

	/**
	 * @param id
	 * @param model
	 * @param user
	 * @param rd
	 * @return gridview/delete
	 */
	@GetMapping(value = "/gridview/delete")
	public String deleteFromGridview(@RequestParam Long id, Model model, UserModel user, RedirectAttributes rd) {
		service.deleteProfile(id);
		return "redirect:/gridview/1";
	}

	/**
	 * @param model
	 * @param user
	 * @param session
	 * @return profile page 
	 */
	@GetMapping(value = "/profile")
	public String profilepage(Model model, UserModel user, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("user", service.getProfileByEmail((String) session.getAttribute("email")));
			return "profile";
		}
	}

	/**
	 * @param model
	 * @param user
	 * @param session
	 * @return edit  page 
	 */
	@GetMapping(value = "/editProfile")
	public String editPage(Model model, UserModel user, HttpSession session) {
		if (session.getAttribute("email") == null || session.getAttribute("email").equals("")) {
			return "redirect:/login";
		} else {
			model.addAttribute("user", service.getProfileByEmail((String) session.getAttribute("email")));
			return "editProfile";
		}
	}

	/**
	 * @param model
	 * @param email
	 * @param user
	 * @param session
	 * @return edit page 1
	 */
	@GetMapping(value = "/editProfile1")
	public String editPage1(Model model, @RequestParam String email, UserModel user, HttpSession session) {
		if (session.getAttribute("email") != null) {
			model.addAttribute("user", service.getProfileByEmail(email));
			return "editProfile";
		} else {
			return "redirect:/login";
		}
	}

	/**
	 * @param user
	 * @param dashId
	 * @param model
	 * @param session
	 * @return updtae profile to service impl
	 * @throws IOException
	 */
	@PostMapping(value = "/editProfile")
	public String showMyprofile(UserModel user, Long dashId, Model model, HttpSession session) throws IOException {
		if (session.getAttribute("email") != null) {
			service.updateProfile(user);
			return "redirect:/gridview/1";
		} else
			return "redirect:/login";
	}

	/**
	 * @param user
	 * @param model
	 * @return gridview page 
	 */
	@GetMapping(value = "/gridview1")
	public String gridview1(UserModel user, Model model) {
		model.addAttribute("ProfileDetails", service.getalluser());
		System.out.println(service.getallProfile());
		return "gridview1";
	}

	/**
	 * @param model
	 * @param user
	 * @param httpsession
	 * @param page_id
	 * @return gridview woth pagination page 
	 */
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

	/**
	 * @param httpSession
	 * @return logout 
	 */
	@GetMapping("/logout")
	public String logoutPage(HttpSession httpSession) {
		httpSession.invalidate();
		return "redirect:/login";
	}

	/**
	 * @param session
	 * @param user
	 * @param model
	 * @return mapview page 
	 */
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

	/**
	 * @param session
	 * @param user
	 * @param model
	 * @return tabview page 
	 */
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

	/**
	 * @param user
	 * @param session
	 * @param rd
	 * @param model
	 * @return  check profile valid for forget password 
	 */
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
	
	
	/**
	 * @return graph view page 
	 */
	@GetMapping("/graph-view")
	public String graph1() {
		return "graph-view";
	}

	
//	@GetMapping("/graph-view")
//	@ResponseBody
//	public List<String> graph(Model model, UserModel user) {
//		return service.getProfileName();
//	}
//	@GetMapping("graphs")
//	public String graphPage(HttpSession session) {
//		try {
//			if (session.getAttribute("email") == null && session.getAttribute("email").equals("")) {
//				return "redirect:/login";
//			} else {
//				return "graph-view";
//			}
//		} catch (Exception e) {
//			return "redirect:/login";
//		}
//	}
//	
	
	
}