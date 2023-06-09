package oop;

//static : 객체이 아닌 클래스로 접근하기 위한 기능을 제공하기 위한 제한자
//제한자(Modifier) : 기능을 제한하기 위한 키워드
// - Access Modifier(private, package, protected, public), static, final, abstract

//학생정보(학번,이름,국어,영어,총점)를 저장하기 위한 클래스 - VO 클래스
public class Student {
	//인스턴스 필드(Instance Field) : 객체 생성시 메모리(Heap 영역)에 만들어지는 필드 
	private int num;
	private String name;
	private int kor, eng, tot;
	
	//정적 필드(Static Field) : 클래스 생성시 메모리(Static 영역)에 만들어지는 필드
	// => 객체가 생성되기 전에 메모리에 하나만 생성되는 필드
	// => 생성자에서 초기화 처리하지 않고 직접 초기화 설정
	// => 모든 객체에서 정적 필드 사용 가능 - 공유값 : 메모리 절약 및 필드값 변경 용이
	// => 클래스 외부에서는 클래스 이름을 사용하여 접근
	private static int total=0;//기본값 사용시 초기값 설정 생략
	
	//생성자(Constructor) - 객체 생성시 인스턴스 필드에 원하는 초기값을 저장하기 위해 작성
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(int num, String name, int kor, int eng) {
		super();
		this.num = num;
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		
		//총점을 계산하여 필드에 저장하는 명령 작성 - 메소드 호출
		// => 코드의 중복성을 최소화하여 프로그램의 생산성 및 유집보수의 효율성 증가
		//tot=kor+eng;
		calcTot();
	}

	//인스턴스 메소드 : this 매개변수가 존재하는 메소드
	// => 인스턴스 필드 및 정적 필드 접근 가능
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
		//tot=kor+eng;
		calcTot();
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
		calcTot();
	}

	public int getTot() {
		return tot;
	}

	public void setTot(int tot) {
		this.tot = tot;
	}

	/*
	public void calcTot() {//총점을 계산하는 메소드
		tot=kor+eng;
	}
	*/
	
	//은닉화 선언된 메소드 - 클래스 내부에서만 사용하는 메소드 : 시스템 메소드
	// => 코드의 중복성을 최소화하기 위한 기능을 제공
	private void calcTot() {
		tot=kor+eng;
	}
	
	public void display() {//필드값을 출력하는 메소드
		System.out.print(name+"["+num+"]님의 성적 >> ");
		System.out.println("국어 = "+kor+", 영어 = "+eng+", 총점 = "+tot);
	}

	//정적 메소드(Static Method) : this 매개변수가 없는 메소드
	// => this 매개변수가 없으므로 인스턴스 필드에 접근 불가능
	// => 정적 필드만 접근하여 사용 가능
	// => 객체 생성 전에 클래스 이름을 사용하여 호출 가능 - 메소드 호출의 용이성 
	public static int getTotal() {
		return total;
	}

	public static void setTotal(int total) {
		Student.total = total;
	}
}
	
	
	
	
	
	
	
	
	
	
	
	
	

