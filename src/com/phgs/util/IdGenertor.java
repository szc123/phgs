package com.phgs.util;

import java.math.BigInteger;
import java.util.Random;
import java.util.UUID;

public class IdGenertor {
	 public static String getGUID(){
		// return new BigInteger(165,new Random()).toString(36).toUpperCase();
		 return UUID.randomUUID().toString().replace("-","").toUpperCase();
	 }
	 public static void main(String[] args) {
		System.out.println(IdGenertor.getGUID());
	}

}
