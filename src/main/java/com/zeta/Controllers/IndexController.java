package com.zeta.Controllers;

import com.zeta.Data.UserInterface;
import com.zeta.Models.User;
import org.jasig.cas.client.authentication.AttributePrincipal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.cas.authentication.CasAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;


// Test function found in tutorial for setting up this project, can be discarded
@Controller
public class IndexController {

    @Autowired
    UserInterface userInterface;

    @RequestMapping(value = "/")
    public String getIndex(Model m) {
        return "index";
    }

    @RequestMapping(value = "/login")
    public String login() {
        return "dashboard";
    }

//    @RequestMapping(value = "/", method = RequestMethod.POST)
//    public String loginUser(HttpServletRequest request, @ModelAttribute("login") Login login, BindingResult bindingResult) {
//        User user = userInterface.getUserByLogin(login);
//
//        if (user != null) {
//            HttpSession session = request.getSession();
//            session.setAttribute("user", user);
//            return "dashboard";
//        }
//
//        return "index";
//    }

    @GetMapping("/dashboard")
    public String dashboard(HttpServletRequest request) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        HttpSession session = request.getSession();

        if (principal instanceof UserDetails) {
            if (session.getAttribute("user") == null) {
                User user = userInterface.getUser(((UserDetails) principal).getUsername());
                session.setAttribute("user", user);
            }
        }

        return "dashboard";
    }

    @GetMapping("/log")
    public String log(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "log";
    }

    @GetMapping("/payroll")
    public String payroll(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "payroll";
    }

    @GetMapping("/profile")
    public String profile(Model m) {
        List<User> users = userInterface.getAllUsers();
        m.addAttribute("users", users);

        return "profile";
    }

    @GetMapping("/schedule")
    public String schedule(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "schedule";
    }

    @GetMapping("/statistics")
    public String statistics(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "statistics";
    }

    @GetMapping("/statistics_info_lf")
    public String statistics_info_lf(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "statistics_info_lf";
    }

    @GetMapping("/statistics_public_contact")
    public String statistics_public_contact(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "statistics_public_contact";
    }

    @GetMapping("/temp_schedule")
    public String temp_schedule(Model m) {
        m.addAttribute("someAttribute", "someValue");
        return "temp_schedule";
    }

    @GetMapping("/logout")
    public String logout() {
        String casLogout = "https://cas.sfu.ca/cas/logout";
        return "redirect:" + casLogout;
    }
}