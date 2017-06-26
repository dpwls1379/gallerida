package project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.model.Greplyo;

@Repository
public class GreplyoDaoImpl implements GreplyoDao{
	@Autowired
	private SqlSessionTemplate sst;

	public int insert(Greplyo greplyo) {
		return sst.insert("greplyo.insert",greplyo);
	}

	@Override
	public List<Greplyo> list(int bo_num) {
		return sst.selectList("greplyo.list",bo_num);
	}

	@Override
	public int update(Greplyo greplyo) {
		return sst.update("greplyo.update",greplyo);
	}

	@Override
	public int delete(int reo_num) {
		return sst.update("greplyo.delete",reo_num);
	}
	
	
}
