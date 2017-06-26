package project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.GreplyoDao;
import project.model.Greplyo;

@Service
public class GreplyoServiceImpl implements GreplyoService{
	@Autowired
	private GreplyoDao gd;

	@Override
	public int insert(Greplyo greplyo) {
		return gd.insert(greplyo);
	}

	@Override
	public List<Greplyo> list(int bo_num) {
		return gd.list(bo_num);
	}

	@Override
	public int update(Greplyo greplyo) {
		return gd.update(greplyo);
	}

	@Override
	public int delete(int reo_num) {
		return gd.delete(reo_num);
	}
	
}
