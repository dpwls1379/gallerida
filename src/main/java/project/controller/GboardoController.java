package project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import project.service.GboardoService;

import project.model.Gboardo;


@Controller
public class GboardoController {
	@Autowired
	private GboardoService go;
	
	@RequestMapping("firstindex")
	public String first(){
		
		return "first";
	}
	
	
	@RequestMapping("GboardoForm")
	public String GboardoForm(Model model, int pro_num) {
		model.addAttribute("pro_num",pro_num);
		return "Gboardo/GboardoForm";
	}
	@RequestMapping("Gboardo")
	public String Gboardo(Model model, Gboardo gboardo) {
		int result = go.insert(gboardo);
		model.addAttribute("pro_num",gboardo.getPro_num());
		model.addAttribute("result",result);
		return "Gboardo/Gboardo";
	}
	@RequestMapping("GboardoList")
	public String GboardoList(Model model, int pro_num) {
		List<Gboardo> list = go.list(pro_num);
		model.addAttribute("pro_num",pro_num);
		model.addAttribute("olist",list);
		return "Gboardo/GboardoList";
	}
	@RequestMapping("GboardoContent")
	public String GboardoContent(Model model, int bo_num) {
		go.readcount(bo_num);
		Gboardo gboardo = go.content(bo_num);
		model.addAttribute("content",gboardo);
		return "Gboardo/GboardoContent";
	}
	@RequestMapping("GboardoUpdateForm")
	public String GboardoUpdateForm(Model model, int bo_num, String id) {
		model.addAttribute("bo_num",bo_num);
		model.addAttribute("id",id);
		return "Gboardo/GboardoUpdateForm";
	}
	@RequestMapping("GboardoUpdate")
	public String GboardoUpdate(Model model, Gboardo gboardo) {
		int result = go.update(gboardo);
		model.addAttribute("result",result);
		model.addAttribute("bo_num",gboardo.getBo_num());
		return "Gboardo/GboardoUpdate";
	}
	@RequestMapping("GboardoDelete")
	public String GboardoDelete(Model model, int bo_num) {
		int result = go.delete(bo_num);
		model.addAttribute("result",result);
		return "Gboardo/GboardoDelete";
	}
}
