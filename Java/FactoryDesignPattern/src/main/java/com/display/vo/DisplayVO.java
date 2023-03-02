package com.display.vo;

import java.awt.Canvas;

import javax.swing.JFrame;

public class DisplayVO {

	private JFrame frame;
	private Canvas canvas;
	
	private String title;
	private int width;
	private int height;
	
	public DisplayVO() {
		
	}
	
	public DisplayVO(String title, int width, int height) {
		super();
		this.title = title;
		this.width = width;
		this.height = height;
	}
	
	public Canvas getCanvas() {
		return canvas;
	}
	public void setCanvas(Canvas canvas) {
		this.canvas = canvas;
	}
	
	public JFrame getFrame() {
		return frame;
	}
	public void setFrame(JFrame frame) {
		this.frame = frame;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	
	
}
