package xyz.itwill.lang;

import java.util.Scanner;

//Java API(Application Programming Interface) : 프로그램 개발에 필요한 기능을 제공하기 위한 도구
// => 라이브러리를 이용하여 배포된 클래스, 인터페이스, 열거형

//java.lang 패키지 : Java 프로그램 개발에 필요한 기본 클래스를 제공하는 패키지
// => java.lang 패키지의 클래스 또는 인터페이스는 import 처리하지 않아도 사용 가능

//Object 클래스 : 모든 Java 클래스가 반드시 상속받는 부모클래스
//System 클래스 : 표준 입출력 객체 및 시스템 관련 기능을 메소드로 제공하는 클래스
//Class 클래스 : 메모리에 저장된 클래스를 저장하고 클래스 관련 기능을 메소드로 제공하는 클래스
// => Class.forName(String className) : 문자열로 클래스를 전달받아 메모리에 저장하는 메소드 - Class 객체(Clazz) 반환
// => Class.getName() : Class 객체에 저장된 클래스의 이름을 반환하는 메소드
//Math 클래스 : 수학 관련 기능을 메소드로 제공하는 클래스
//String 클래스 : 문자열을 저장하고 문자열 관련 기능을 메소드로 재공하는 클래스
//StringBuffer 클래스 : 문자열을 저장하고 문자열의 문자 관련 기능을 메소드로 재공하는 클래스
//Wrapper 클래스 : 원시형을 클래스로 선언한 참조형을 일괄적으로 표현하는 클래스
// => Byte, Short, Integer, Long, Float, Double, Character, Boolean
//Thread : 스레드 정보를 저장하고 스레드 관련 기능을 메소드로 제공하는 클래스

public class SystemApp {
	public static void main(String[] args) {
		//System.in : Java에서 제공되는 표준 입력장치(키보드)에 대한 입력스트림이 저장된 객체
		Scanner scanner=new Scanner(System.in);	
		
		//System.out : Java에서 제공되는 표준 출력장치(모니터)에 대한 출력스트림이 저장된 객체
		System.out.print("정수값 입력 >> ");
		int num=scanner.nextInt();
		
		if(num==0) {
			System.out.println("[메세지]프로그램를 강제로 종료합니다.");
			//System.exit(int status) : 프로그램을 강제로 종료하는 메소드
			System.exit(0);
		}

		//System.currentTimeMillis() : 시스템의 현재 타임스템프(TimeStamp)를 반환하는 메소드
		//타임스템프(TimeStamp) : 날짜와 시간을 정수값으로 표현하기 위해 만들어진 시간값
		// => 1970년 1월 1일을 기준으로 1/1000초당 1씩 증가된 long 타입의 정수값
		long startTime=System.currentTimeMillis();
		
		for(int i=1;i<=num;i++) {
			System.out.println("반복 실행되는 명령");
		}
		
		long endTime=System.currentTimeMillis();
		
		System.out.println("실행시간 = "+(endTime-startTime)+"ms");

		//System.gc() : 쓰레기 수집기(Garbage Collector - 메모리 청소 프로그램)을 실행하는 메소드
		System.gc();
		
		scanner.close();
	}
}
