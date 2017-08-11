package help.dao;

import java.util.HashMap;
import java.util.List;

import help.vo.ApplyVO;
import help.vo.MemberVO;
import help.vo.RequestVO;


public interface RequestDAO {
	public int insertRequest(RequestVO req);
	
	public int removeRequest(Integer r_no);
	
	public List<RequestVO> getAllActiveRequestsByWriter(Integer r_writer);
	
	public List<Integer> getAllInactiveRequestsByWriter(Integer r_writer);
	
	public List<RequestVO> getAllRequestsByCategory(HashMap<String, Object> map);
	
	public int getAllRequestsByCategoryCount(Integer g_no);
	
	public RequestVO getRequestDetail(Integer r_no);
	
	public List<RequestVO> getRequestWaitingHire(Integer r_writer);
	
	public Integer countRequest(Integer c_no);
	
	public List<RequestVO> pageReqList(HashMap<String, Object> map);
	
	public int insertApply(ApplyVO vo);
	
	public void updateRequestForInactive(Integer r_no);
	
	public int getAllActiveRequestsByWriterCount(Integer r_writer);
	
	public List<MemberVO> getApplyMember(Integer r_no);
}
