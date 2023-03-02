package com.effective.java.test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class DoubleListFlatMap {

	public static void main(String[] args) {
		List<List<String>> list =
			Arrays.asList(Arrays.asList("A"),
						  Arrays.asList("B"));
		
		System.out.println(list);
		System.out.println("====================");
		
		List<String> flatList = 
				  list.stream()
				  .flatMap(Collection::stream)
				  .collect(Collectors.toList());
		
		System.out.println(flatList);
		System.out.println("====================");
		
		List<String> productList =
				Arrays.asList("Item1","Item2","Item3","Item4","Item5","Item6","Item7","Item8","Item9","Item10");
		String listToString = productList.stream()
				.collect(Collectors.joining());
		
		System.out.println(listToString);
		System.out.println("====================");
		
		List<String> prefixProductList =
				Arrays.asList("Item1","Item2","Item3","Item4","Item5","Item6","Item7","Item8","Item9","Item10");
		String prefixListToString = prefixProductList.stream()
				.collect(Collectors.joining(", ","<",">"));
		
		System.out.println(prefixListToString);
		System.out.println("====================");
		
		OptionalInt reduced = IntStream.range(1, 4)
				.reduce((a,b) -> {
					return Integer.sum(a, b);
				});
				
		System.out.println(reduced);
		System.out.println(reduced.getAsInt()+1);
		System.out.println("====================");
		
		int reducedTwoParams =
				IntStream.range(1, 4)
				.reduce(10, Integer::sum);
		
		System.out.println(reducedTwoParams);
		System.out.println("====================");
		
		Integer reducedParams = Stream.of(1,2,3)
				.reduce(10, 
						Integer::sum,
						(a,b) -> {
							System.out.println("combiner was called"); // 여기선 이게 실행되지 않는다 : comibner는 병렬처리에서만 작동
							return a+b;
						});
		System.out.println(reducedParams);
		System.out.println("====================");
		
		Integer reducedParallel = Arrays.asList(1,2,3)
				.parallelStream()
				.reduce(10, 
						Integer::sum,
						(a,b) -> {
							System.out.println("combiner was called");
							return a+b;
						});
		System.out.println(reducedParallel); // parallel하게 3개의 연산이 추가됨 그리고 combiner때문에 마지막에만 call됨. 10+1 , 10+2, 10+3
		System.out.println("====================");
		
		List<String> exam1 =
				Stream.of("Eria", "Selena", "Java")
				.filter(name -> name.contains("a"))
				.collect(Collectors.toList());
		
		Optional<String> firstElement = exam1.stream().findFirst();
		Optional<String> anyElement1 = exam1.stream().findAny();
		Optional<String> anyElement2 = exam1.stream().findAny();
		Optional<String> anyElement3 = exam1.stream().findAny();
		Optional<String> anyElement4 = exam1.stream().findAny();
		Optional<String> anyElement5 = exam1.stream().findAny();
		
		System.out.println(firstElement);
		System.out.println(anyElement1);
		System.out.println(anyElement2);
		System.out.println(anyElement3);
		System.out.println(anyElement4);
		System.out.println(anyElement5);
		System.out.println("====================");
		
		// 빈객체 생성하기
		Optional<String> optional = Optional.empty();
		System.out.println(optional);	
		System.out.println(optional.isPresent());
		System.out.println("====================");
		
		Optional<String> optional2 = Optional.ofNullable(null);
		String result = optional.orElse("other"); // 값이 없다면 "other" 를 리턴
		System.out.println("====================");
		
		List<String> examList1 = null;
		List<String> examOptList1 = examList1 != null ? examList1 : new ArrayList<>();
		
//		List<String> listOpt = Optional.ofNullable(getList()).orElseGet(() -> new ArrayList<>());
		
		class User{
			private String address;
			private String street;
			
			public String getAddress() {
				return this.address;
			}
			
			public String getStreet() {
				return this.street;
			}
			
		}; // end of class User
		
		public<U> Optional<U> map(Function<? super T, ? extends U> mapper);
		
		
		
	} 

}
