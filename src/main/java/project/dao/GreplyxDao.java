package project.dao;

import java.util.List;

import project.model.Greplyx;

public interface GreplyxDao {

	int insert(Greplyx greplyx);

	List<Greplyx> list(int bx_num);

	int update(Greplyx greplyx);

	int delete(int rex_num);

}
