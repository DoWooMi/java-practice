package xyz.itwill09.mvc;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//컨트롤러(Controller) : 클라이언트의 모든 요청을 받아 URL 주소를 분석하여 요청 처리 클래스
//(Model)의 메소드를 호출하여 데이타 처리 후 JSP 문서(View)로 스레드를 이동하여 응답되도록 
//프로그램의 흐름 제어하는 기능을 제공하는 서블릿

//컨트롤러 역활을 제공하기 위한 클래스
// => 클라이언트의 모든 요청을 받아 처리하는 단일 진입점의 역활을 수행하는 서블릿 - Front Controller Pattern
// => [web.xml] 파일에서 클래스를 서블릿(웹프로그램)으로 등록하고 클라이언트의 모든 요청을 처리
//할 수 있도록 URL 주소의 패턴을 설정
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//클라이언트의 요청을 처리하기 위해 자동 호출되는 메소드를 오버라이드 선언
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.클라이언트의 요청 URL 주소를 분석하여 요구사항을 반환받아 저장
		String requestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=requestURI.substring(contextPath.length());
		
		//2.클라이언트의 요구사항을 이용하여 요청 처리 클래스(Model)의 객체를 제공받아 객체의
		//메소드를 호출하여 클라이언트 요청에 대한 처리 작업
		/*
		//인터페이스를 참조변수로 선언하면 인터페이스를 상속받아 모든 자식클래스의 객체 저장 가능
		Controller controller=null;
		//클라이언트의 요구사항을 비교하여 요청 처리 클래스를 객체로 생성
		if(command.equals("/list.itwill")) {
			controller=new ListController();
		} else if(command.equals("/view.itwill")) {
			controller=new ViewController();
		}
		*/
		
		//HandlerMapping 클래스로 객체 생성
		// => 클라이언트의 요구사항과 요청 처리 클래스의 객체가 엔트리로 저장된 Map 객체 사용 가능
		HandlerMapping handlerMapping=new HandlerMapping();
		//HandlerMapping 객체의 메소드를 호출하여 클라이언트의 요구사항을 처리하기 위한
		//요청 처리 클래스의 객체를 반환받아 저장
		Controller controller=handlerMapping.getController(command);
		
		//요청 처리 클래스의 메소드를 호출하여 클라이언트의 요청을 처리하고 JSP 문서의 
		//이름(ViewName)을 반환받아 저장
		String viewName=controller.handleRequest(request, response);
		
		//3.JSP 문서로 포워드 이동하여 클라이언트에게 처리결과가 응답되도록 처리
		// => 요청 처리 메소드의 반환값(ViewName)을 이용하여 JSP 문서의 경로를 완성하여 포워드 이동
		//ViewResolver 클래스로 객체 생성
		ViewResolver viewResolver=new ViewResolver();
		String view=viewResolver.getView(viewName);//응답할 JSP 문서의 경로 완성
		request.getRequestDispatcher(view).forward(request, response);		
	}
}