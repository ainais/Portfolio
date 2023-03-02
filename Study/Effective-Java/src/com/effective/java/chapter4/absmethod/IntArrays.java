package com.effective.java.chapter4.absmethod;

import java.util.*;

public class IntArrays {

	static List<Integer> intArrayAsList(int[] a){
		Objects.requireNonNull(a);
		
		return new AbstractList<>(){
			
			@Override
			public Integer get(int i) {
				return a[i]; // 오토 박싱
			}
			
			@Override
			public Integer set(int i, Integer val) {
				int oldVal = a[i];
				a[i] = val; // 오토 언박싱
				return oldVal; // 오토 박싱
			}
			
			@Override
			public int size() {
				return a.length;
			}
		}; // end of AbstractList<>
	} // end of intArrayAsList
	
	public static void main(String[] args) {
		int[] a = new int[10];
		for(int i=0; i<a.length; i++) {
			a[i] = i;
		} // end of for
		
		List<Integer> list = intArrayAsList(a);
		System.out.println(list);
		Collections.shuffle(list);
		System.out.println(list);
	} // end of main
	
} // end of class IntArrays
