package com.bxb.books.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartSystemListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        //1.将项目上下文路径放入application
        ServletContext application = servletContextEvent.getServletContext();
        String contextPath = application.getContextPath();
        //把applicationContext.xml文件路径存在APP_PATH;
        application.setAttribute("APP_PATH",contextPath);
    }


    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
