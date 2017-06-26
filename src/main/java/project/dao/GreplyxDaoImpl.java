package project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.model.Greplyx;

@Repository
public class GreplyxDaoImpl implements GreplyxDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Greplyx greplyx) {
		return sst.insert("greplyx.insert",greplyx);
	}

	@Override
	public List<Greplyx> list(int bx_num) {
		return sst.selectList("greplyx.list",bx_num);
	}

	@Override
	public int update(Greplyx greplyx) {
		return sst.update("greplyx.update",greplyx);
	}

	@Override
	public int delete(int rex_num) {
		return sst.update("greplyx.delete",rex_num);
	}
}
