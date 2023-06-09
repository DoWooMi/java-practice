package xyz.itwill10.service;

import java.util.List;
import java.util.Map;

import xyz.itwill10.dto.RestBoard;

public interface RestBoardService {
	void addRestBoard(RestBoard restBoard);
	void modifyRestBoard(RestBoard restBoard);
	void removeRestBoard(int num);
	int getRestBoardCount();
	RestBoard getRestBoard(int num);
	List<RestBoard> getRestBoardList(Map<String, Object> map);
}