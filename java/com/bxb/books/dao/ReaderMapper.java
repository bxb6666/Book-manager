package com.bxb.books.dao;


import com.bxb.books.pojo.Reader;

import java.util.List;
import java.util.Map;

public interface ReaderMapper {
    int checkReader(Integer reader_id);

    void addReader(Reader reader);
    //查找所有
    Reader select(Reader rd);
    //查找列表
    List<Reader> queryList(Map<String, Object> paramMap);
    //查找数量
    Integer queryCount(Map<String, Object> paramMap);

    Reader selectById(Integer id);

    void updateReader(Reader reader);

    void delReader(Integer id);

    void alterpwd(Reader reader);
}
