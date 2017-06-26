package project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.GproductDao;
import project.model.Gproduct;

@Service
public class GproductServiceImpl implements GproductService{
	@Autowired
	private GproductDao gpd;

	@Override
	public int insert(Gproduct gproduct) {
		return gpd.insert(gproduct);
	}

	@Override
	public List<Gproduct> list() {
		return gpd.list();
	}

	@Override
	public int delete(int pro_num) {
		return gpd.delete(pro_num);
	}

	@Override
	public int update(Gproduct gproduct) {
		return gpd.update(gproduct);
	}

	@Override
	public List<Gproduct> pdList() {
		return gpd.pdList();
	}

	@Override
	public Gproduct pdContent(int pro_num) {
		return gpd.pdContent(pro_num);
	}

	@Override
	public Object readcount(int pro_num) {
		return gpd.readcount(pro_num);
	}

	@Override
	public List<Gproduct> pdList2() {
		return gpd.pdList2();
	}

	@Override
	public List<Gproduct> pdList3() {
		return gpd.pdList3();
	}

	@Override
	public List<Gproduct> search(String search) {
		return gpd.search(search);
	}
}
