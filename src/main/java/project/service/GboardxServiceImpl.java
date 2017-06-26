package project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.GboardxDao;
import project.model.Gboardx;
import scala.collection.generic.BitOperations.Int;

@Service
public class GboardxServiceImpl implements GboardxService{
	@Autowired
	private GboardxDao gd;

	@Override
	public int insert(Gboardx gboardx) {
		return gd.insert(gboardx);
	}

	@Override
	public List<Gboardx> list() {
		return gd.list();
	}

	@Override
	public Gboardx content(int bx_num) {
		return gd.content(bx_num);
	}

	@Override
	public int update(Gboardx gboardx) {
		return gd.update(gboardx);
	}

	@Override
	public int delete(int bx_num) {
		return gd.delete(bx_num);
	}

	@Override
	public Object readcount(int bx_num) {
		return gd.readcount(bx_num);		
	}

	@Override
	public List<Gboardx> search(String serct, String serc) {
		return gd.search(serct, serc);
	}

	@Override
	public List<Gboardx> list2() {
		return gd.list2();
	}

	@Override
	public List<Gboardx> search2(String serct, String serc) {
		return gd.search2(serct,serc);
	}

	@Override
	public int insert2(Gboardx gboardx) {
		return gd.insert2(gboardx);
	}

	@Override
	public List<Gboardx> listn() {
		return gd.listn();
	}

	@Override
	public List<Gboardx> listq() {
		return gd.listq();
	}


}
