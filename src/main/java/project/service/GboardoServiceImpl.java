package project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import project.dao.GboardoDao;
import project.model.Gboardo;
@Service
public class GboardoServiceImpl implements GboardoService{
	@Autowired
	private GboardoDao gbd;
	
	@Override
	public int insert(Gboardo gboardo) {
		return gbd.insert(gboardo);
	}

	@Override
	public List<Gboardo> list(int pro_num) {
		return gbd.list(pro_num);
	}

	@Override
	public Gboardo content(int bo_num) {
		return gbd.content(bo_num);
	}

	@Override
	public Object readcount(int bo_num) {
		return gbd.readcount(bo_num);
	}

	@Override
	public int update(Gboardo gboardo) {
		return gbd.update(gboardo);
	}

	@Override
	public int delete(int bo_num) {
		return gbd.delete(bo_num);
	}

}
