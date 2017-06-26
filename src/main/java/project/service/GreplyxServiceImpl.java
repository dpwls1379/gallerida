package project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.GreplyxDao;
import project.model.Greplyx;

@Service
public class GreplyxServiceImpl implements GreplyxService{
	@Autowired
	private GreplyxDao gd;

	@Override
	public int insert(Greplyx greplyx) {
		return gd.insert(greplyx);
	}

	@Override
	public List<Greplyx> list(int bx_num) {
		return gd.list(bx_num);
	}

	@Override
	public int update(Greplyx greplyx) {
		return gd.update(greplyx);
	}

	@Override
	public int delete(int rex_num) {
		return gd.delete(rex_num);
	}
}
