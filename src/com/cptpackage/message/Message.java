package com.cptpackage.message;

import java.time.LocalDate;
import java.time.LocalTime;

import com.cptpackage.account.User;

public final class Message {

	private String text;
	private LocalDate date;
	private LocalTime time;
	private User sender;
	private User receiver;

	public Message(String text, LocalDate date, LocalTime time) {
		this.text = text;
		this.time = time;
		this.date = date;
	}

	public String getText() {
		return text;
	}

	public User getSender() {
		return sender;
	}

	public User getReceiver() {
		return receiver;
	}

	public LocalTime getTime() {
		return time;
	}

	public LocalDate getDate() {
		return date;
	}
	
}
