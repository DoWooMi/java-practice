package xyz.itwill.util;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

//자료구조 관련 클래스 - 데이타 수집 클래스(Collection Class)
// => 다수의 객체를 효율적으로 저장하고 관리하기 위한 기능을 제공하는 클래스
// => Set 인터페이스, List 인터페이스, Map 인터페이스를 중 하나를 상속받아 작성된 자식클래스

//Set 인터페이스를 상속받은 자료구조 클래스 - HashSet, TreeSet 등
// => 객체의 저장 순서가 없으며 메모리 주소와 객체에 저장된 값이 같은 중복된 객체 저장 불가능
public class SetApp {
	public static void main(String[] args) {
		//제네릭을 사용하지 않고 HashSet 객체 생성 - 비권장 
		// => HashSet 객체에 모든 클래스의 객체가 Object 타입으로 저장 가능
		// => HashSet 객체에 저장된 객체를 반환받아 사용할 경우 반드시 명시적 객체 형변환 후 사용
		//HashSet set=new HashSet();
		
		//제네릭을 사용하여 HashSet 객체 생성
		// => HashSet 객체에는 제네릭 대신 설정된 클래스의 객체만 저장 가능
		// => HashSet 객체에 저장된 객체를 명시적 객체 형변환 없이 반환받아 사용 가능
		//HashSet<String> set=new HashSet<String>();
		
		//참조변수는 인터페이스(부모)를 이용하여 생성하는 것을 권장
		// => 참조변수에는 인터페이스를 상속받은 모든 자식클래스의 객체 저장 가능
		// => 클래스 간의 결합도를 낮추어 유지보수의 효율성 증가
		Set<String> set=new HashSet<String>();

		//Set.add(E element) : Set 객체에 요소를 추가하는 메소드
		//요소(Element) : 자료구조 클래스의 객체에 저장된 제네릭으로 설정된 클래스의 객체
		set.add("홍길동");
		//set.add(100);//제네릭으로 설정된 클래스의 객체가 아닌 경우 에러 발생
		set.add("임꺽정");
		set.add("전우치");
		
		//Set.toString() : Set 객체에 저장된 모든 요소(객체)를 문자열로 반환하는 메소드
		//System.out.println("set.toString() = "+set.toString());
		System.out.println("set = "+set);
		System.out.println("==============================================================");
		//Set 객체에는 동일한 값이 저장된 중복 객체 저장 불가
		set.add("홍길동");
		System.out.println("set = "+set);
		System.out.println("==============================================================");
		//Set.size() : Set 객체에 저장된 요소의 갯수를 반환받아 메소드
		System.out.println("요소의 갯수 = "+set.size());
		System.out.println("==============================================================");
		//Set.remove(E element) : Set 객체에 저장된 요소를 제거하는 메소드
		set.remove("임꺽정");
		System.out.println("set = "+set);
		System.out.println("==============================================================");
		//Set.iterator() : Set 객체에 저장된 요소를 반복 처리할 수 있는 Iterator 객체를 반환하는 메소드
		//Iterator 객체 : 자료구조 클래스의 객체 요소를 반복 처리하기 위한 기능을 제공하는 객체
		// => 반복지시자 : 커서를 사용하여 자료구조 클래스의 객체 요소를 반복 처리
		Iterator<String> iterator=set.iterator();
		
		//Iterator 객체를 이용하여 Set 객체에 저장된 모든 요소에 대한 일괄처리
		//Iterator.hasNext() : Iterator 객체로 처리 가능한 요소의 존재 유무를 판단하여 결과를 반환하는 메소드
		// => false : 처리 요소 미존재, true : 처리 요소 존재
		while(iterator.hasNext()) {
			//Iterator.next() : 커서 위치의 요소(객체)를 읽어와 반환하는 메소드
			// => 현재 요소를 읽어 반환하고 커서는 다음 요소 위치로 자동으로 이동
			String str=iterator.next();
			System.out.print(str+" ");			
		}
		System.out.println();
		System.out.println("==============================================================");
		//향상된 for 구문을 사용하여 Set 객체에 저장된 요소에 대한 일괄처리
		// => 향상된 for 구문은 내부적으로 Iterator 객체를 사용하여 반복 처리
		for(String str:set) {
			System.out.print(str+" ");			
		}
		System.out.println();
		System.out.println("==============================================================");
	}
}
