package com.bxb.books.service.impl;

import com.bxb.books.service.TypeService;
import com.bxb.books.dao.TypeMapper;
import com.bxb.books.pojo.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeMapper typeMapper;


    public ArrayList<Category> listCategory() {
        return typeMapper.listCategory();
    }


    public void updateBookType(Category category) {
        typeMapper.updateBookType(category);
    }


    public void delBookType(Integer cid) {
        typeMapper.delBookType(cid);
    }


    public void addBookType(String cname) {
        typeMapper.addBookType(cname);
    }
}
