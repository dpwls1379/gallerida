package project.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import project.model.Gboardx;
import scala.collection.generic.BitOperations.Int;

@Repository
public class GboardxDaoImpl implements GboardxDao{
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public int insert(Gboardx gboardx) {
		return sst.insert("gboardx.insert", gboardx);
	}

	@Override
	public List<Gboardx> list() {
		return sst.selectList("gboardx.list");
	}

	@Override
	public Gboardx content(int bx_num) {
		return sst.selectOne("gboardx.content",bx_num);
	}

	@Override
	public int update(Gboardx gboardx) {
		return sst.update("gboardx.update",gboardx);
	}

	@Override
	public int delete(int bx_num) {
		return sst.update("gboardx.delete",bx_num);
	}

	@Override
	public Object readcount(int bx_num) {
		return sst.update("gboardx.readcount",bx_num);
	}

	@Override
	public List<Gboardx> search(String serct, String serc) {
		HashMap<String, String> ser = new HashMap<String, String>();
		ser.put("serct", serct);
		ser.put("serc", serc);
		return sst.selectList("gboardx.search",ser);
	}

	@Override
	public Object bn_num() {
		return sst.update("gboardx.bn_num");
	}

	@Override
	public List<Gboardx> list2() {
		return sst.selectList("gboardx.list2");
	}

	@Override
	public List<Gboardx> search2(String serct, String serc) {
		HashMap<String, String> hm2 = new HashMap<String, String>();
		hm2.put("serct", serct);
		hm2.put("serc", serc);
		return sst.selectList("gboardx.search2", hm2);
	}

	@Override
	public int insert2(Gboardx gboardx) {
		return sst.insert("gboardx.insert2",gboardx);
	}

	@Override
	public List<Gboardx> listn() {
		return sst.selectList("gboardx.listn");
	}

	@Override
	public List<Gboardx> listq() {
		return sst.selectList("gboardx.listq");
	}



}
