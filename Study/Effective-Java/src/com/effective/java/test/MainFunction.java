package com.effective.java.test;

import java.util.ArrayList;
import java.util.stream.Stream;

import com.effective.java.chapter6.item34.Planet;
import com.effective.java.chapter6.item38.BasicOperation;
import com.effective.java.chapter6.item38.Operation;

public class MainFunction {
	public static void main(String[] args) {
		
//		System.out.println(Planet.EARTH.mass());;
//		System.out.println(1 << 0);
//		System.out.println(1 << 1);
		
//		System.out.println(BasicOperation.DIVIDE.apply(1, 2));
//		System.out.println(BasicOperation.DIVIDE.values());
//		System.out.println(BasicOperation.DIVIDE.values().toString());
//		System.out.println(BasicOperation.DIVIDE.values().length);
//		System.out.println(BasicOperation.DIVIDE.values());
//		
//		
//		System.out.println("=======================");
//		Operation plus = BasicOperation.PLUS;
//		System.out.println(plus.apply(1, 2));
		
		Stream<String> builderStream =
				Stream.<String>builder()
				.add("hello")
				.add("world")
				.add("Stream")
				.build();
		
		System.out.println(builderStream);
		System.out.println(builderStream.toString());
		
		builderStream.forEach(System.out::println);
		
		ArrayList<String> lst = new ArrayList<String>();
		
		lst.add("1"); lst.add("2"); lst.add("3"); lst.add("4");
		Stream<String> lstStream = lst.stream();
		lstStream.forEach(System.out::println);
		
	}
}
