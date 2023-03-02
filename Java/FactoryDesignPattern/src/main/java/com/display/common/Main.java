// https://digiconfactory.tistory.com/entry/%EC%9E%90%EB%B0%94-%EA%B2%8C%EC%9E%84-%EB%A7%8C%EB%93%A4%EA%B8%B0-File-2-Game-%ED%81%B4%EB%9E%98%EC%8A%A4-%EB%A7%8C%EB%93%A4%EA%B8%B0-Canvas-%EA%B0%9D%EC%B2%B4
package com.display.common;

import com.display.factory.DisplayFactory;
import com.display.manager.IDisplayManager;
import com.display.vo.DisplayVO;

public class Main {

	public static void main(String[] args) {
		
		IDisplayManager displayManager = DisplayFactory.getDisplayManager("wide");
		displayManager.showDisplay();
		
	}

}
