package gallerida.service;

import java.util.List;

import org.springframework.stereotype.Service;

import gallerida.dao.GProductDao;
import gallerida.model.GProduct;

@Service
public class GProductServiceImpl implements GProductService {
	
	private GProductDao gpd;

	@Override
	public int getTotal() { //GProduct gproduct
		// TODO Auto-generated method stub
		return gpd.getTotal();
	}

	@Override
	public List<GProduct> list(GProduct gproduct) {
		// TODO Auto-generated method stub
		return gpd.list(gproduct);
	}
	
}
