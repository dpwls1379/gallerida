package gallerida.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import gallerida.model.GProduct;

@Repository
public class GProductDaoImpl implements GProductDao {

	private SqlSessionTemplate st;

	@Override
	public int getTotal(GProduct gproduct) {
		// TODO Auto-generated method stub
		return st.selectOne("gproductns.getTotal");
	}

	@Override
	public List<GProduct> list(GProduct gproduct) {
		// TODO Auto-generated method stub
		return st.selectList("gproductns.list", gproduct);
	}
	
}
