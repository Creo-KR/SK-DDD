package help.dao;

import java.util.HashMap;
import java.util.List;

import help.vo.TradeVO;

public interface TradeDAO {
	public List<TradeVO> getInProgressTrade(Integer m_no);
	public List<TradeVO> getCompletedTrade(Integer r_no);
	public List<TradeVO> getInProgressTradeByGosu(HashMap<String, Object> progressTradeMap);
	public Integer getInProgressTradeByGosuCount(Integer m_no);
	public List<TradeVO> getCompletedTradeByGosu(HashMap<String, Object> completedTradeMap);
	public int getCompletedTradeByGosuCount(Integer m_no);
	public void addTrade(TradeVO vo);
	public int updateTradeToBeCompleted(Integer r_no);
	
}
