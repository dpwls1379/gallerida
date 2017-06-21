package gallerida.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import gallerida.model.PagingPgm;
import gallerida.model.GProduct;
import gallerida.service.GProductService;

@Controller
public class GProductController {
	
	@Autowired
	private GProductService gps;
	

	@RequestMapping("productList")
	public String productList(String pageNum, GProduct gproduct, Model model) {

		final int rowPerPage = 10;// 한페이지당 나오는 게시글

		if (pageNum == null || pageNum.equals("")) {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);

		// int total=bs.getTotal();
		int total = gps.getTotal();//(gproduct);

		int startRow = (currentPage - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;

		PagingPgm pp = new PagingPgm(total, rowPerPage, currentPage);

		gproduct.setStartRow(startRow);
		gproduct.setEndRow(endRow);
		int number = total - startRow + 1;
		// List<Board> list = bs.list(startRow,endRow);
		// 를 하는 대신 프로덕트에 start와 endRow를 추가하면 더 쉽

		List<GProduct> list = gps.list(gproduct);

		model.addAttribute("pp", pp);
		model.addAttribute("number", number);// page 넘어갈때마다 처음 시작번호
		model.addAttribute("list", list);

		// // 검색한 후 select의 값
		// model.addAttribute("search", board.getSearch());
		// // 검색한 후 페이징
		// model.addAttribute("keyword", board.getKeyword());

		return "gproduct/gproductList";
	}
	
	
}
