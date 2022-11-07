package com.kh.pillipop.common;

import java.util.Scanner;

public class Util {
	// 파일처리, 날짜, format 관련 기타 기능들 모으는 곳

	static private Scanner sc = new Scanner(System.in);

	public static int readIntForConsol() { // 완벽하게 콘솔에서 입력값을 받아올꺼 책임.
		int value = 0;
		sc.reset(); // sc를 초기화. 새로 연는 것과 같은 효과.

		while (true) {
			String str = sc.nextLine(); // 한줄 읽어온다.
			if (str == null || str.length() < 1) { // 둘다 제대로 입력받지 못한 경우.
				System.out.println("다시 숫자를 입력해주세요.");
				continue;
			}

			try {
				value = Integer.parseInt(str); // 숫자가 아님요.
			} catch (Exception e) {
				System.out.println("다시 숫자를 입력해주세요.");
				continue;
			}
			break;
		}
		return value;
	}

	public static double readDoubleForConsol() { // 완벽하게 콘솔에서 입력값을 받아올께 책임.
		double value = 0;
		sc.reset(); // sc를 초기화. 새로 연는 것과 같은 효과.

		while (true) {
			String str = sc.nextLine(); // 한줄 읽어온다.
			if (str == null || str.length() < 1) { // 둘다 제대로 입력받지 못한 경우.
				System.out.println("다시 숫자를 입력해주세요.");
				continue;
			}

			try {
				value = Double.parseDouble(str); // 숫자가 아님요.
			} catch (Exception e) {
				System.out.println("다시 숫자를 입력해주세요.");
				continue;
			}
			break;
		}
		return value;
	}

	public static String readStrForConsol() { // 완벽하게 콘솔에서 입력값을 받아올꺼 책임.
		String str = null;
		sc.reset(); // sc를 초기화. 새로 여는 것과 같은 효과.

		while (true) {
			str = sc.nextLine(); // 한줄 읽어온다.
			if (str == null || str.length() < 1) { // 둘다 제대로 입력받지 못한 경우.
				System.out.println("다시 문자를 입력해주세요.");
				continue;
			}
			break;
		}
		return str;
	}

}
