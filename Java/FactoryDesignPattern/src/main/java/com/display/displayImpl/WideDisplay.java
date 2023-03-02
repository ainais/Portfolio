package com.display.displayImpl;

import com.display.manager.AbstractDisplayManager;
import com.display.vo.DisplayVO;

public class WideDisplay extends AbstractDisplayManager {

	public DisplayVO getDisplayVO() {
		DisplayVO displayVO = new DisplayVO("Wide Display", 1000, 500);
		return displayVO;
	}
}
