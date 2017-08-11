package help.dao;

import java.util.HashMap;
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
	public List<TradeVO> getInProgressTrade(Integer m_no) {
		return session.selectList("tradeMapper.selectInProgressTrade", m_no);
	}

	@Override
	public List<TradeVO> getCompletedTrade(Integer r_no) {
		return session.selectList("tradeMapper.selectCompletedTrade", r_no);
	}

	@Override
	public List<TradeVO> getInProgressTradeByGosu(HashMap<String, Object> progressTradeMap) {
		return session.selectList("tradeMapper.getInProgressTradeByGosu", progressTradeMap);
	}

	@Override
	public List<TradeVO> getCompletedTradeByGosu(HashMap<String, Object> completedTradeMap) {
		return session.selectList("tradeMapper.getCompletedTradeByGosu", completedTradeMap);
	}
	
	@Override
	public void addTrade(TradeVO vo){
		session.insert("tradeMapper.addTrade", vo);
				
	}
	


	@Override
	public int updateTradeToBeCompleted(Integer r_no) {
		return session.delete("tradeMapper.updateTradeToBeCompleted", r_no);
	}

	@Override
	public Integer getInProgressTradeByGosuCount(Integer m_no) {
		return session.selectOne("tradeMapper.getInProgressTradeByGosuCount", m_no);
	}

	@Override
	public int getCompletedTradeByGosuCount(Integer m_no) {
		return session.selectOne("tradeMapper.getCompletedTradeByGosuCount", m_no);
	}

}
