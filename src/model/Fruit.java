package model;

public class Fruit {
	
	private String[] fruit;
	private String[] color;
	private int[] fruit_index;
	
	public String[] getFruit() {
		return fruit;
	}
	public void setFruit(String[] fruit) {
		this.fruit = fruit;
	}
	public String[] getColor() {
		return color;
	}
	public void setColor(String[] color) {
		this.color = color;
	}
	public int[] getFruit_index() {
		return fruit_index;
	}
	public void setFruit_index(int[] fruit_index) {
		this.fruit_index = fruit_index;
	}
	
	
	
	public Fruit() {
		super();
	}
	public Fruit(String[] fruit, String[] color, int[] fruit_index) {
		super();
		this.fruit = fruit;
		this.color = color;
		this.fruit_index = fruit_index;
	}
	
	

}
