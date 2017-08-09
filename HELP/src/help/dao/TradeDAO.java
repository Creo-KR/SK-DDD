package help.dao;

import java.util.List;

import help.vo.TradeVO;

public interface TradeDAO {
	public List<TradeVO> getInProgressTrade(Integer r_no);
	public List<TradeVO> getCompletedTrade(Integer r_no);
}
