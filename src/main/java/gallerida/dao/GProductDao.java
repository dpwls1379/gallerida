package gallerida.dao;

import java.util.List;

import gallerida.model.GProduct;

public interface GProductDao {

	int getTotal(GProduct gproduct);

	List<GProduct> list(GProduct gproduct);

}
