package project.dao;

import java.util.List;

import project.model.Greplyo;

public interface GreplyoDao {

	int insert(Greplyo greplyo);

	List<Greplyo> list(int bo_num);

	int update(Greplyo greplyo);

	int delete(int reo_num);

}
