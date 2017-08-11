package help.dao;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import help.vo.MemberVO;
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
		return session.selectList("tradeMapper.getInProgressTradeByGosu", m_no);
	}

	@Override
	public List<TradeVO> getCompletedTradeByGosu(Integer m_no) {
		return session.selectList("tradeMapper.getCompletedTradeByGosu", m_no);
	}
	
	@Override
	public void addTrade(TradeVO vo){
		session.insert("tradeMapper.addTrade", vo);
				
	}
	


}
