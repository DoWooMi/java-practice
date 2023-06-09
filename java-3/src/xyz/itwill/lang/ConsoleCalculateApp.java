package xyz.itwill.lang;

import java.util.Scanner;

//키보드로 사칙 연산식을 입력받아 연산결과를 계산하여 출력하는 프로그램 작성
//ex) 연산식 입력 >> 20 + 10
//    [결과]30
// => 입력 연산식에서 사용 가능한 연산자는 사칙 연산자(*,/,+,-)만 허용
// => 형식에 맞지 않는 연산식이 입력된 경우 에러 메세지 출력 후 프로그램 종료
// => 입력 연산식에 공백 입력이 가능하도록 처리
public class ConsoleCalculateApp {
	public static void main(String[] args) {
		Scanner scanner=new Scanner(System.in);
		
		System.out.print("연산식 입력 >> ");
		//입력 연산식에 존재하는 모든 공백을 제거하여 저장
		String operation=scanner.nextLine().replace(" ", "");
		
		scanner.close();
		
		//연산식에서 검색할 연산자가 저장된 String 배열 선언
		String[] operatorArray={"*","/","+","-"};
		
		//연산식에서 연산자를 검색하여 연산자의 시작위치값(Index)을 반환받아 저장
		int index=-1;
		for(String str:operatorArray) {
			//String.lastIndexOf(String str) : String 객체에 저장된 문자열에서 매개변수에
			//저장된 문자열을 뒤쪽부터 검색하여 문자열의 시작위치값을 반환하는 메소드
			index=operation.lastIndexOf(str);
			
			//연산식에서 연산자가 검색된 경우 반복문 종료  
			if(index!=-1) break;
		}
		
		//연산식에서 연산자가 없거나 연산자의 위치가 잘못된 경우 프로그램 종료
		if(index<=0 || index>operation.length()-1) {
			System.out.println("[에러]연산식을 잘못 입력하였습니다.");
			System.exit(0);
		}
		
		try {
			//연산자의 시작위치값을 이용해 연산식에서 연산자와 피연산자를 분리하여 저장
			// => 연산자 앞부분의 피연산자를 분리하여 정수값으로 변환해 변수에 저장
			int num1=Integer.parseInt(operation.substring(0, index));
			// => 연산자를 분리하여 변수에 저장
			String operator=operation.substring(index, index+1);
			// => 연산자 뒷부분의 피연산자를 분리하여 정수값으로 변환해 변수에 저장
			int num2=Integer.parseInt(operation.substring(index+1));
			
			//연산자를 비교하여 피연산자의 연산 결과값을 저장
			int result=0;
			switch (operator) {
			case "*": result=num1*num2;	break;
			case "/": result=num1/num2;	break;
			case "+": result=num1+num2;	break;
			case "-": result=num1-num2;	break;
			}
			
			//연산 결과값 출력
			System.out.println("[결과]"+result);
		} catch (NumberFormatException e) {
			System.out.println("[에러]연산식에 숫자가 아닌 문자가 입력 되었습니다.");
		} catch (ArithmeticException e) {
			System.out.println("[에러]0으로 나눌 수 없습니다.");
		} catch (Exception e) {
			System.out.println("[에러]프로그램 실행에 예기치 못한 오류가 발생 하였습니다.");
		}
	}
}