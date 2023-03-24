package example;

public class OperatorExample {
	public static void main(String[] args) {
		//245678초를 일시분초 형식으로 변환하여 출력하세요.
		int s=245678;
		int day=s/(24*60*60); //하루는 24시간*60분*60초=86400초
		s%=86400; //s=s%86400
		int hour=s/(60*60);
		s%=3600;
		int min=s/60;
		int sec=s%60;
		System.out.println(day+"일"+hour+"시"+min+"분"+sec+"초");

		System.out.println("===============================================");
		//한대의 가격이 1억 5천원만인 비행기를 20대 구매할 경우 지불해야될 금액을 계산하여 출력하세요. 
		//단, 15대 이상 구매할 경우 1대당 25%의 할인율을 적용하여 계산하세요.

		int price=150_000_000, n=20;
		long sum=(long)(n>15?price*0.75:price)*n;
		System.out.println("지불금액="+sum);

		System.out.println("===============================================");
	}
}








