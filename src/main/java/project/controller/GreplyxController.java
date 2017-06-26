package project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project.service.GreplyxService;
import project.model.Greplyx;

@Controller
public class GreplyxController {
	@Autowired
	private GreplyxService gs;
	
	@RequestMapping("GreplyxForm")
	public String GreplyxForm(Model model, int bx_num) {
		model.addAttribute("bx_num",bx_num);
		return "Greplyx/GreplyxForm";
	}
	@RequestMapping("Greplyx")
	public String Greplyx(Model model, Greplyx greplyx) {
		int result = gs.insert(greplyx);
		model.addAttribute("result",result);
		model.addAttribute("bx_num",greplyx.getBx_num());
		return "Greplyx/Greplyx";
	}
	@RequestMapping("GreplyxList")
	public String GreplyxList(Model model, int bx_num) {
		List<Greplyx> list = gs.list(bx_num);
		model.addAttribute("list",list);
		return "Greplyx/GreplyxList";
	}
	@RequestMapping("GreplyxUpdateForm")
	public String GreplyxUpdateForm(Model model, int rex_num, int bx_num) {
		model.addAttribute("rex_num",rex_num);
		model.addAttribute("bx_num",bx_num);
		return "Greplyx/GreplyxUpdateForm";
	}
	@RequestMapping("GreplyxUpdate")
	public String GreplyxUpdate(Model model, Greplyx greplyx) {
		int result = gs.update(greplyx);
		model.addAttribute("bx_num",greplyx.getBx_num());
		model.addAttribute("result",result);
		return "Greplyx/GreplyxUpdate";
	}
	@RequestMapping("GreplyxDelete")
	public String GreplyxDelete(Model model, int rex_num, int bx_num) {
		int result = gs.delete(rex_num);
		model.addAttribute("result",result);
		model.addAttribute("bx_num",bx_num);
		return "Greplyx/GreplyxDelete";
	}
}
