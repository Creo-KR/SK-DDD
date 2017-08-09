package help.dao;

import java.util.List;

import help.vo.RequestVO;


public interface RequestDAO {
	public int insertRequest(RequestVO req);
	
	public int removeRequest(Integer r_no);
	
	public List<RequestVO> getAllActiveRequestsByWriter(Integer r_writer);
	
	public List<Integer> getAllInactiveRequestsByWriter(Integer r_writer);
	
	//public List<RequestVO> getAllInactiveRequestsByWriter(Integer r_writer);
	
	public List<RequestVO> getAllRequestsByCategory(Integer c_no);
	
	public RequestVO getRequestDetail(Integer r_no);
}
