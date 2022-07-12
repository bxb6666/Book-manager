package com.bxb.books.service;

import com.bxb.books.util.PageBean;
import com.bxb.books.pojo.Book;
import com.bxb.books.pojo.Category;

import java.util.List;
import java.util.Map;

public interface BookService {
    //书籍分页
    PageBean<Book> queryBookPage(Map<String, Object> paramMap);
    //列表种类
    List<Category> listCategory();

    void addBook(Book book);

    Book selectById(int book_id);

    void updateBook(Book book);

    void delBook(int book_id);
}
