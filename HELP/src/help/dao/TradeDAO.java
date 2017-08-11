package help.dao;

import java.util.HashMap;
import java.util.List;

import help.vo.TradeVO;

public interface TradeDAO {
	public List<TradeVO> getInProgressTrade(HashMap<String, Object> ProgressTradeMap);
	public List<TradeVO> getCompletedTrade(Integer r_no);
	public List<TradeVO> getInProgressTradeByGosu(Integer m_no);
	public List<TradeVO> getCompletedTradeByGosu(Integer m_no);
	public void addTrade(TradeVO vo);
	public int updateTradeToBeCompleted(Integer r_no);
}
