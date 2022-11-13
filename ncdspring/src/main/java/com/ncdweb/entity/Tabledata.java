package com.ncdweb.entity;

public class Tabledata {
	private int pp1;
	private int pp2;
	private int pp3;
	private int pp4;
	private int pp5;
	private int pp6;
	public Tabledata(int pp1, int pp2, int pp3, int pp4, int pp5, int pp6) {
		super();
		this.pp1 = pp1;
		this.pp2 = pp2;
		this.pp3 = pp3;
		this.pp4 = pp4;
		this.pp5 = pp5;
		this.pp6 = pp6;
	}
	public int getPp1() {
		return pp1;
	}
	public void setPp1(int pp1) {
		this.pp1 = pp1;
	}
	public int getPp2() {
		return pp2;
	}
	public void setPp2(int pp2) {
		this.pp2 = pp2;
	}
	public int getPp3() {
		return pp3;
	}
	public void setPp3(int pp3) {
		this.pp3 = pp3;
	}
	public int getPp4() {
		return pp4;
	}
	public void setPp4(int pp4) {
		this.pp4 = pp4;
	}
	public int getPp5() {
		return pp5;
	}
	public void setPp5(int pp5) {
		this.pp5 = pp5;
	}
	public int getPp6() {
		return pp6;
	}
	public void setPp6(int pp6) {
		this.pp6 = pp6;
	}
	@Override
	public String toString() {
		return "tabledata [pp1=" + pp1 + ", pp2=" + pp2 + ", pp3=" + pp3 + ", pp4=" + pp4 + ", pp5=" + pp5 + ", pp6="
				+ pp6 + "]";
	}					
}