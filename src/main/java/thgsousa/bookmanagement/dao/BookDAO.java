package thgsousa.bookmanagement.dao;

import java.util.List;

import thgsousa.bookmanagement.model.Book;

public interface BookDAO {
	
	void save(Book book);
	Book get(int id);
	void delete(int id);
	List<Book> get();
}
