package com.spring.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.entity.DoctorEntity;
import com.spring.service.IDoctorManagementService;
import com.spring.vo.DoctorVO;

import jakarta.servlet.http.HttpSession;

@Controller
public class DoctorManagementController {
	
	@Autowired
	private IDoctorManagementService doctorService;

	@GetMapping("/")
	public String showHomePage() {
		 System.out.println("HOME HIT");
		return "welcome";
	}
	
	@GetMapping("/showReport")
	public String showReport(@ModelAttribute DoctorVO doctorVO, Map<String, Object> map) {
		List<DoctorVO> listVO = doctorService.findAllDoctors();
		map.put("listDoctors", listVO);
	    return "show-report";
	}
	
	@GetMapping("/register")
	public String showRegistrationPage(@ModelAttribute DoctorVO doctorVO) {
	    return "register-page";
	}
	
//	@PostMapping("/register")
//	public String registerDoctor(@ModelAttribute("doctor") DoctorVO doctorVO, Map<String,Object> map, RedirectAttributes ra) {
//	   String msg = doctorService.registerDoctor(doctorVO);
//	  
////	   List<DoctorVO> listVO = doctorService.findAllDoctors();
//	   
////	   map.put("listDoctors", listVO);
////	   map.put("resultMsg", msg);
////       ra.addFlashAttribute("listDoctors", listVO);
//	   
//       ra.addFlashAttribute("resultMsg",msg);
//	   return "redirect:showReport";
//	}
	
	@PostMapping("/register")
	public String registerDoctor(@ModelAttribute("doctor") DoctorVO doctorVO, Map<String,Object> map, HttpSession session) {
	   String msg = doctorService.registerDoctor(doctorVO);
       session.setAttribute("resultMsg",msg);
	   return "redirect:showReport";
	}
	
	@GetMapping("/update")
	public String updateDoctor(@ModelAttribute DoctorVO doctorVO,@RequestParam Integer id) {
	    DoctorEntity doctorEntity = doctorService.findDoctorById(id);
	   BeanUtils.copyProperties(doctorEntity, doctorVO);
	   return "edit-doctor";
	}
	
	@PostMapping("/update")
	public String addUpdatedDoctor(@ModelAttribute DoctorVO doctorVO,@RequestParam Integer id,RedirectAttributes atts) {
		String msg = doctorService.updateDoctor(doctorVO,id);
		atts.addFlashAttribute("updateMsg", msg);
		return "redirect:showReport";
	}
	
	@GetMapping("/delete")
	public String removeDoctor(@RequestParam Integer id, RedirectAttributes atts) {
		String msg = doctorService.removeDoctor(id);
		atts.addFlashAttribute("deleteMsg", msg);
		return "redirect:showReport";
	}
	@GetMapping("/page")
	public String showDoctorsByPagination(@PageableDefault(page=0,size=2,sort="doctorName",direction=Direction.ASC)
	                                      Pageable pageable, Map<String, Object> map) {
		
		Page<DoctorVO> listVO = doctorService.showDoctorByPagination(pageable);
		map.put("pageData", listVO);
		
		return "page-report";
		
	}

}
