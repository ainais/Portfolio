package com.display.manager;

import java.awt.Canvas;
import java.awt.Dimension;

import javax.swing.JFrame;

import com.display.vo.DisplayVO;

public abstract class AbstractDisplayManager implements IDisplayManager{

	public void showDisplay() {
		DisplayVO displayVO = getDisplayVO();
		
		JFrame frame = displayVO.getFrame();
		
		// default frame
		frame = new JFrame(displayVO.getTitle());
		frame.setSize(displayVO.getWidth(),displayVO.getHeight());
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setResizable(false);
		frame.setLocationRelativeTo(null);
		frame.setVisible(true);
		
		// canvas instance
		Canvas canvas = displayVO.getCanvas();
		canvas = new Canvas();
		canvas.setPreferredSize(new Dimension(displayVO.getWidth(),displayVO.getHeight()));
		canvas.setMaximumSize(new Dimension(displayVO.getWidth(),displayVO.getHeight()));
		canvas.setMinimumSize(new Dimension(displayVO.getWidth(),displayVO.getHeight()));
		
		frame.add(canvas);
		frame.pack();
		
	} // end of showDisplay()
	
	// 추상 메서드
	public abstract DisplayVO getDisplayVO();
}
