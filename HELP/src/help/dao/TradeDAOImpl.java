package help.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import help.vo.TradeVO;

@Repository
public class TradeDAOImpl implements TradeDAO {
	@Resource
	SqlSession session;
	
	@Override
	public List<TradeVO> getInProgressTrade(Integer r_no) {
		return session.selectList("tradeMapper.selectInProgressTrade", r_no);
	}

	@Override
	public List<TradeVO> getCompletedTrade(Integer r_no) {
		return session.selectList("tradeMapper.selectCompletedTrade", r_no);
	}

	@Override
	public List<TradeVO> getInProgressTradeByGosu(Integer m_no) {
		return session.selectList("tradeMapper.selectInProgressTradeByGosu", m_no);
	}

	@Override
	public List<TradeVO> getCompletedTradeByGosu(Integer m_no) {
		return session.selectList("tradeMapper.selectCompletedTradeByGosu", m_no);
	}

}
