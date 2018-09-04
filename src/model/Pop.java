package model;

public class Pop {
	private String[] pop;
	private int pop_index;
	private String[] color;
	
	public String[] getPop() {
		return pop;
	}
	public void setPop(String[] pop) {
		this.pop = pop;
	}
	public int getPop_index() {
		return pop_index;
	}
	public void setPop_index(int pop_index) {
		this.pop_index = pop_index;
	}
	
	
	public String[] getColor() {
		return color;
	}
	public void setColor(String[] color) {
		this.color = color;
	}
	public Pop() {
		super();
	}
	public Pop(String[] pop, int pop_index) {
		super();
		this.pop = pop;
		this.pop_index = pop_index;
	}
	public Pop(String[] pop, int pop_index, String[] color) {
		super();
		this.pop = pop;
		this.pop_index = pop_index;
		this.color = color;
	}
	
	
	
}
