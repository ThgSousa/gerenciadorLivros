package com.thgsousa.bookmanagement.dao;

import java.util.List;

import com.thgsousa.bookmanagement.model.Book;

public interface BookDAO {
	
	void save(Book book);
	Book get(int id);
	void delete(int id);
	List<Book> get();
}
