package com.test.mybatis;

import com.test.mybatis.Member;

public class Member {
	private String _user;
	private String _title;
	private int _num;
	private String _date;
	private String _cnt;

	public Member(){
		_num = 0;
	}
	
	public String get_user() {
		return _user;
	}

	public void set_user(String _user) {
		this._user = _user;
	}

	public String get_title() {
		return _title;
	}

	public void set_title(String _title) {
		this._title = _title;
	}

	public String get_date() {
		return _date;
	}

	public void set_date(String _date) {
		this._date = _date;
	}
	public int get_num() {
		return _num;
	}

	public void set_num(int _num) {
		this._num=_num;
	}
	public String get_cnt() {
		return _cnt;
	}

	public void set_cnt(String _cnt) {
		this._cnt = _cnt;
	}

}
