package xyz.itwill.io;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

//원본파일에 저장된 값을 문자데이타로 읽어와 타겟파일에 전달하여 저장하는 프로그램 - 파일복사
// => 텍스트 형식의 원본파일만을 복사하여 타겟파일로 전달하여 저장 가능
// => 텍스트 형식의 파일을 제외한 원본파일(이진파일 - Binary File)은 값에 대한 가공이 발생되어 타겟파일이 변형되어 저장
public class FileCopyCharApp {
	public static void main(String[] args) throws IOException {
		//BufferedReader : Reader 객체를 전달받아 대량의 문자데이타를 읽기 위한 입력스트림을 생성하기 위한 클래스
		BufferedReader in=null;
		
		//BufferedWriter : Writer 객체를 전달받아 대량의 문자데이타를 전달하기 위한 출력스트림을 생성하기 위한 클래스  
		BufferedWriter out=null;
		
		try {
			in=new BufferedReader(new FileReader("c:/data/ban.exe"));
			out=new BufferedWriter(new FileWriter("c:/data/ban_char.exe"));
			
			int readByte;
			while(true) {
				readByte=in.read();
				if(readByte==-1) break;
				out.write(readByte);
			}
			
			System.out.println("[메세지]파일을 성공적으로 복사 하였습니다.");
		} catch (FileNotFoundException e) {
			System.out.println("[에러]원본파일을 찾을 수 없습니다.");
		} finally {
			in.close();
			out.close();
		}
	}
} 