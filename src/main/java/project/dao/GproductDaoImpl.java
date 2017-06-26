package project.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.model.Gproduct;

@Repository
public class GproductDaoImpl implements GproductDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Gproduct gproduct) {
		return sst.insert("gproduct.insert",gproduct);
	}

	@Override
	public List<Gproduct> list() {
		return sst.selectList("gproduct.list");
	}

	@Override
	public int delete(int pro_num) {
		return sst.delete("gproduct.delete",pro_num);
	}

	@Override
	public int update(Gproduct gproduct) {
		return sst.update("gproduct.update",gproduct);
	}

	@Override
	public List<Gproduct> pdList() {
		return sst.selectList("gproduct.pdList");
	}

	@Override
	public Gproduct pdContent(int pro_num) {
		return sst.selectOne("gproduct.pdContent",pro_num);
	}

	@Override
	public Object readcount(int pro_num) {
		return sst.update("gproduct.readcount",pro_num);
	}

	@Override
	public List<Gproduct> pdList2() {
		return sst.selectList("gproduct.pdList2");
	}

	@Override
	public List<Gproduct> pdList3() {
		return sst.selectList("gproduct.pdList3");
	}

	@Override
	public List<Gproduct> search(String search) {
		return sst.selectList("gproduct.search",search);
	}
}
