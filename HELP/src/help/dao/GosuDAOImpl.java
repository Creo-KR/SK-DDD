package help.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class GosuDAOImpl implements GosuDAO {
	@Resource
	SqlSession session;
	
	@Override
	public List<Integer> getMyAllCategoryNo(Integer m_no) {
		return session.selectList("gosuMapper.getMyAllCategoryNo", m_no);
	}

}
