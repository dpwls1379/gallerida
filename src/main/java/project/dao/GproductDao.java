package project.dao;

import java.util.List;

import project.model.Gproduct;

public interface GproductDao {

	int insert(Gproduct gproduct);

	List<Gproduct> list();

	int delete(int pro_num);

	int update(Gproduct gproduct);

	List<Gproduct> pdList();

	Gproduct pdContent(int pro_num);

	Object readcount(int pro_num);

	List<Gproduct> pdList2();

	List<Gproduct> pdList3();

	List<Gproduct> search(String search);

}
