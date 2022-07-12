package com.bxb.books.controller;

import com.bxb.books.util.AjaxResult;
import com.bxb.books.pojo.Category;
import com.bxb.books.service.TypeService;
import org.activiti.engine.impl.util.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

@Controller
@RequestMapping("/type")
public class TypeController {


    @Autowired
    private TypeService typeService;

    //跳转到图书分类界面
    @RequestMapping("/bookType")
    public String bookType() {
        return "/book/bookType";
    }


    //图书分类异步请求
    @RequestMapping("/bookTypeList")
    @ResponseBody
    public String listCategory() {
        ArrayList<Category> categorylist= typeService.listCategory();
        JSONObject obj = new JSONObject();
        obj.put("code", 0);
        obj.put("msg", "");
        obj.put("count",categorylist.size());
        obj.put("data", categorylist);
        return obj.toString();
    }


    //修改图书类别
    @RequestMapping("/editBookType")
    @ResponseBody
    public AjaxResult editBookType(Category category) {
        AjaxResult ajaxResult = new AjaxResult();
        try{
            typeService.updateBookType(category);
            ajaxResult.setSuccess(true);
            ajaxResult.setMessage("修改成功");
        }catch (Exception e){
            e.printStackTrace();
            ajaxResult.setSuccess(false);
            ajaxResult.setMessage("修改失败");
        }
        return ajaxResult;
    }


    //删除图书类别
    @RequestMapping("/delBookType")
    @ResponseBody
    public AjaxResult delBookType(Integer cid) {
        AjaxResult ajaxResult = new AjaxResult();
        try{
            typeService.delBookType(cid);
            ajaxResult.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            ajaxResult.setSuccess(false);
            ajaxResult.setMessage("删除失败");
        }
        return ajaxResult;
    }


    //添加加图书类别
    @RequestMapping("/addBookType")
    @ResponseBody
    public AjaxResult addBookType(String cname) {
        AjaxResult ajaxResult = new AjaxResult();
        try{
            typeService.addBookType(cname);
            ajaxResult.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            ajaxResult.setSuccess(false);
            ajaxResult.setMessage("添加失败");
        }
        return ajaxResult;
    }
}
