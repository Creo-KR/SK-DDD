package help.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import help.vo.RequestVO;

public class RequestDAO {
	@Autowired
	SqlSession session;

	public RequestVO getRequestByRequestor(String requestorId) {
		return null;
	}

	public RequestVO getRequestByGosu(Integer cNo) {
		return null;
	}
}
