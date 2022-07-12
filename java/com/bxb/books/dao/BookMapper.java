package com.bxb.books.dao;

import com.bxb.books.pojo.Book;
import com.bxb.books.pojo.Category;

import java.util.List;
import java.util.Map;

public interface BookMapper {
    //查询操作
    List<Book> queryList(Map<String, Object> paramMap);
    //查询数量
    Integer queryCount(Map<String, Object> paramMap);

    List<Category> listCategory();

    void addBook(Book book);
    //根据id查询
    Book selectById(int book_id);

    void updateBook(Book book);

    void delBook(int book_id);

    void reduceStock(Integer book_id);
}
