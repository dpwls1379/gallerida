package project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project.model.Greplyo;
import project.service.GreplyoService;

@Controller
public class GreplyoController {
	@Autowired
	private GreplyoService gs;
	
	@RequestMapping("GreplyoForm")
	public String GreplyoForm(Model model, int bo_num) {
		model.addAttribute("bo_num",bo_num);
		return "Greplyo/GreplyoForm";
	}
	@RequestMapping("Greplyo")
	public String Greplyo(Model model, Greplyo greplyo) {
		int result = gs.insert(greplyo);
		model.addAttribute("result",result);
		model.addAttribute("bo_num",greplyo.getBo_num());
		return "Greplyo/Greplyo";
	}
	@RequestMapping("GreplyoList")
	public String GreplyoList(Model model, int bo_num) {
		List<Greplyo> list = gs.list(bo_num);
		model.addAttribute("list",list);
		return "Greplyo/GreplyoList";
	}
	@RequestMapping("GreplyoUpdateForm")
	public String GreplyoUpdateForm(Model model, int reo_num, int bo_num) {
		model.addAttribute("reo_num",reo_num);
		model.addAttribute("bo_num",bo_num);
		return "Greplyo/GreplyoUpdateForm";
	}
	@RequestMapping("GreplyoUpdate")
	public String GreplyoUpdate(Model model, Greplyo greplyo) {
		int result = gs.update(greplyo);
		model.addAttribute("result",result);
		model.addAttribute("bo_num",greplyo.getBo_num());
		return "Greplyo/GreplyoUpdate";
	}
	@RequestMapping("GreplyoDelete")
	public String GreplyoDelete(Model model, int reo_num, int bo_num) {
		int result = gs.delete(reo_num);
		model.addAttribute("result",result);
		model.addAttribute("bo_num",bo_num);
		return "Greplyo/GreplyoDelete";
	}
	
}
