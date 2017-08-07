package help.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import help.vo.RequestVO;

@Repository
public class RequestDAOImpl implements RequestDAO {

	@Resource
	SqlSession session;
	
	@Override
	public int insertRequest(RequestVO req) {
		return session.insert("requestMapper.insertRequest", req);
	}

	@Override
	public int removeRequest(Integer r_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<RequestVO> getAllRequestsByWriter(Integer r_writer) {
		return session.selectList("requestMapper.getAllRequestsByWriter", r_writer);
	}

	@Override
	public List<RequestVO> getAllRequestsByCategory(Integer c_no) {
		return session.selectList("requestMapper.getAllRequestsByCategory", c_no);
	}

	@Override
	public RequestVO getRequestDetail(Integer r_no) {
		return session.selectOne("requestMapper.getRequestDetail", r_no);
	}

}
