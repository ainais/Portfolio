package aop1_xml;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;

public class LoggingAdvice {
	public void before(JoinPoint point) throws Throwable{
		String methodName = point.getSignature().getName(); // 메소드 이름을 받을 수 있음
		System.out.println("[********** 사전작업]   "+methodName);
		
	}
	
	// around = before + after
	public Object around(ProceedingJoinPoint point)throws Throwable{
		String methodName = point.getSignature().getName(); // 메소드 이름을 받을 수 있음
		System.out.println("[===========> 사전작업]   "+methodName);
		Object obj = point.proceed();
		System.out.println("[...........> 사후작업]   "+methodName);
		return obj;
	}
}
