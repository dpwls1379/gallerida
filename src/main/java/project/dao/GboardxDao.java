package project.dao;

import java.util.List;

import project.model.Gboardx;
import scala.collection.generic.BitOperations.Int;

public interface GboardxDao {

	int insert(Gboardx gboardx);

	List<Gboardx> list();

	Gboardx content(int bx_num);

	int update(Gboardx gboardx);

	int delete(int bx_num);

	Object readcount(int bx_num);

	List<Gboardx> search(String serct, String serc);

	Object bn_num();

	List<Gboardx> list2();

	List<Gboardx> search2(String serct, String serc);

	int insert2(Gboardx gboardx);

	List<Gboardx> listn();
	
	List<Gboardx> listq();




}
