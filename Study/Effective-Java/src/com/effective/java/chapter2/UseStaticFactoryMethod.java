package com.effective.java.chapter2;

public class UseStaticFactoryMethod {

	
	public static void main(String[] args) {
		/* 아이템1 : 생성자 대신 정적 패터리 메서드를 고려하라
		 
		 [정적 팩터리의 메서드가 생성자보다 좋은 장점 5가지]
		 1. 이름을 가질 수 있다. 즉 반환될 객체의 특성을 쉽게 묘사할 수 있다.
		 2. 호출될 때마다 인스턴스를 새로 생성하지는 않아도 된다. 반복되는 요청에 같은 객체를 반환하는 식으로 정적팩터리 방식의 클래스는 언제 어느 인스턴스를 살아 있게 할지를 철저히 통제할 수 있다.
		 3. 반환 타입의 하위 타입 객체를 반환할 수 있는 능력이 있다. API를 만들 때 이 유연성을 이용하면 구현 클래스를 공개하지 않고도 객체를 반환할 수 있어 API를 작게 유지할 수 있다.
		 4. 입력 매개변수에 따라 매번 다른 클래스의 객체를 반환할 수 있다. 반환 타입의 하위 타입이기만 하면 어떤 클래스의 객체를 반환하든 상관 없다. 그래서 클라이언트는 하위 클래스가 어떻게 구성되어 있는지 몰라도 동적으로 설계가 되어지는 효과를 본다.
		 5. 정적 팩터리 메서드를 작성하는 시점에는 반환할 객체의 클래스가 존재하지 않아도 된다. 클라이언트는 서비스 접근 API를 사용할 때 원하는 구현체의 조건을 명시할 수 있다. 조건을 명시하지 않으면 기본 구현체를 반환하거나 지원하는 구현체들을 하나씩 돌아가며 반환한다.
		 
		 [단점]
		 1. 상속을 하려면 public이나 protected 생성자가 필요하니 정적 팩터리 메서드만 제공하면 하위 클래스를 만들 수 없다. 이 제약은 상속보다 컴포지션을 사용하도록 유도하고 불변타입으로 만들려면 이 제약을 지켜야 한다는 점에서 오히려 장점으로 받아들일 수도 있다.
		 2. 정적 팩터리 메서드는 프로그래머가 찾기 어렵다. 생성자처럼 API설명에 명확히 드러나지 않으니 사용자는 정적 팩터리 메서드 방식 클래스를 인스턴스화 할 방법을 알아내야 한다.
		 	ex)
		 	(1) from : 매개변수를 하나 받아서 해당 타입의 인스턴스를 반환하는 형변환 메서드 ==> Date d = Date.from(instant);
		 	(2) of : 여러 매개변수를 받아 적합한 타입의 인스턴스를 반환하는 집계 메서드 ==> Set<Rank> faceCards = EnumSet.of(JACK, QUEEN, KING);
		 	(3) valueOf : from과 of의 더 자세한 버전 ==> BigInteger prime = BigInteger.valueOf(Integer.MAX_VALUE);
		 	(4) instance | getInstance : 매개변수로 명시한 인스턴스를 반환하지만, 같은 인스턴스임을 보장하지는 않는다. ==> StackWalker luke = StackWalker.getInstance(options);
		 	(5) create | newInstance : instance 혹은 getInstance와 같지만, 매번 새로운 인스턴스를 생성해 반환함을 보장한다. ==> Object newArray = Array.newInstance(classObject, arrayLen);
		 	(6) getType : getInstance와 같으나, 생성할 클래스가 아닌 다른 클래스에 팩터리 메서드를 정의할 떄 쓴다. "Type"은 팩터리 메서드가 반환할 객체의 타입이다. ==> FileStore fs = Files.getFileStore(path)
		 	(7) newType : newInstance와 같으나, 생성할 클래스가 아닌 다른 클래스에 팩터리 메서드를 정의할 떄 쓴다. "Type"은 팩터리 메서드가 반환할 객체의 타입이다. ==> BufferedReader br = Files.newBufferedReader(path);
		 	(8) type : getType과 newType의 간결한 버전 ==> List<Complaint> litany = Collections.list(legacyLitany);
 
		 */


	}

}
