package ex2_annotation;

import org.springframework.stereotype.Component;

@Component
public class MemberBean {
	private String name;
	private int age;
	private String message;
	
	public void output() {
		System.out.println(name+"["+age+"]"+message);
	}
	
	public MemberBean() {
		this.name="아무개";
		this.age=25;
		this.message="화이팅";
	}

	public MemberBean(String name, int age, String message) {
		super();
		this.name = name;
		this.age = age;
		this.message = message;
	}


	public void setName(String name) {
		this.name = name;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public void setMessage(String message) {
		this.message = message;
	}

}
