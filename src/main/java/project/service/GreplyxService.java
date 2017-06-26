package project.service;

import java.util.List;

import project.model.Greplyx;

public interface GreplyxService {

	int insert(Greplyx greplyx);

	List<Greplyx> list(int bx_num);

	int update(Greplyx greplyx);

	int delete(int rex_num);
}
