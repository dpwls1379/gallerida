package gallerida.service;

import java.util.List;

import gallerida.model.GProduct;

public interface GProductService {

	int getTotal();//(GProduct gproduct);

	List<GProduct> list(GProduct gproduct);

}
