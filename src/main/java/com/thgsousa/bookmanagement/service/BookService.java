package com.thgsousa.bookmanagement.service;

import java.util.List;

import com.thgsousa.bookmanagement.model.Book;

public interface BookService {
	void save(Book book);
	Book get(int id);
	void delete(int id);
	List<Book> get();
}
