package com.intothemobile.ifa.sample.entity;

import com.intothemobile.fwk.ancestors.ItmValue;

public class User extends ItmValue {
	private static final long serialVersionUID = 774783128549472458L;

	private Integer id;
	private String name;
	private String nickname;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}
