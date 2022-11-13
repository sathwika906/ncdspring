package com.ncdweb.entity;

public class Searchpagedata {
	private String dropdownselect;
	private String inp;
	public Searchpagedata(String dropdownselect, String inp) {
		super();
		this.dropdownselect = dropdownselect;
		this.inp = inp;
	}
	public Searchpagedata() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getDropdownselect() {
		return dropdownselect;
	}
	public void setDropdownselect(String dropdownselect) {
		this.dropdownselect = dropdownselect;
	}
	public String getInp() {
		return inp;
	}
	public void setInp(String inp) {
		this.inp = inp;
	}
	@Override
	public String toString() {
		return "Searchpagedata [dropdownselect=" + dropdownselect + ", inp=" + inp + "]";
	}
}
