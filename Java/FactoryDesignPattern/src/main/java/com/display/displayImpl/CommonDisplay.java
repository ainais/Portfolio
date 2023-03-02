package com.display.displayImpl;

import com.display.manager.AbstractDisplayManager;
import com.display.vo.DisplayVO;

public class CommonDisplay extends AbstractDisplayManager {
	public DisplayVO getDisplayVO() {
		DisplayVO displayVO = new DisplayVO("Common Display", 500, 500);
		return displayVO;
	}
}
