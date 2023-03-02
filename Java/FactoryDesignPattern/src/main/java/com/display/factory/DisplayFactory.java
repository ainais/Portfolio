package com.display.factory;

import com.display.displayImpl.CommonDisplay;
import com.display.displayImpl.WideDisplay;
import com.display.manager.IDisplayManager;

public class DisplayFactory {
	
	public static IDisplayManager getDisplayManager(String mode) {
		IDisplayManager displayManager = null;
		
		switch(mode) {
		
		case "common":
			displayManager = new CommonDisplay();
			break;
		case "wide":
			displayManager = new WideDisplay();
			break;
			
		default:
			throw new RuntimeException("No Type Mode");
		}
		return displayManager;
	}
}
