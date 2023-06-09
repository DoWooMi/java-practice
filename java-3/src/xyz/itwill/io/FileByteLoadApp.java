package xyz.itwill.io;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

//파일에 저장된 값을 원시데이타를 읽어와 모니터에 전달하여 출력하는 프로그램
public class FileByteLoadApp {
	public static void main(String[] args) throws IOException {
		//FileInputStream : 파일에 저장된 값을 원시데이타로 읽기 위한 입력스트림을 생성하기 위한 클래스
		FileInputStream in=null;
		try {
			//FileInputStream(String filename) : 파일경로를 전달받아 파일 입력스트림을 생성하는 생성자
			// => 전달받은 파일경로에 파일이 없는 경우 FileNotFoundException 발생 - 예외처리
			// => 파일이 없는 경우 파일 입력스트림을 생성하지 못하므로 반드시 예외처리
			in=new FileInputStream("c:/data/byte.txt");
			
			System.out.println("[메세지]c:\\data\\byte.txt 파일에 저장된 내용입니다.");
			int readByte;
			while(true) {
				//파일 입력스트림을 이용하여 파일값을 원시데이타로 반환받아 저장 - LOAD
				readByte=in.read();

				//파일의 마지막에는 무조건 EOF 존재
				if(readByte==-1) break;//파일의 모든 값을 얻어온 경우 반복문 종료
				
				//모니터 출력스트림에 원시데이타를 전달하여 출력
				System.out.write(readByte);
			}
		} catch (FileNotFoundException e) {
			System.out.println("[에러]대상 파일을 찾을 수 없습니다.");
		} finally {
			//FileInputStream.close() : 파일 입력스트림을 제거하는 메소드
			// => 예외 발생과 상관없이 무조건 제거를 위해 try 블럭이 아닌 finally 블럭에서 처리
			//if 구문을 사용하여 참조변수에 NULL이 저장되어 있지 않을 경우에만 메소드 호출
			// => NullPointerException 발생 방지
			if(in!=null) in.close();
		}
	}
}