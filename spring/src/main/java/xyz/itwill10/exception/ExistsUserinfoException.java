package xyz.itwill10.exception;

import lombok.Getter;
import lombok.Setter;
import xyz.itwill10.dto.Userinfo;

//회원정보에 대한 등록 명령이 실행될때 사용자로부터 입력받아 전달된 회원정보의 아이디가 이미
//회원정보의 아이디로 존재하는 경우 발생되어 처리하기 위한 예외 클래스
@Getter
@Setter
public class ExistsUserinfoException extends Exception {
	private static final long serialVersionUID = 1L;

	//예외처리에 필요한 값을 저장하기 위한 필드
	// => 사용자로부터 입력되어 전달된 회원정보를 저장하기 위한 필드
	private Userinfo userinfo;
	
	public ExistsUserinfoException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsUserinfoException(String message, Userinfo userinfo) {
		super(message);
		this.userinfo=userinfo;
	}
}