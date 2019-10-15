package com.henanhist.utils;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.commons.dbcp2.BasicDataSourceFactory;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.util.Properties;

public class DBCPUtils {
    public static BasicDataSource dataSource = new BasicDataSource();
    public static BasicDataSourceFactory factory = new BasicDataSourceFactory();
    private DBCPUtils(){

    }
    public static BasicDataSource getDatasource() {
        Properties pro = new Properties();
        //db.properties必须放在src目录下, 否则加载不到文件
        InputStream in = DBCPUtils.class.getClassLoader().getResourceAsStream("db.properties");
        try{
            pro.load(in);
        }catch (IOException e){
            e.printStackTrace();
        }
        try {
            dataSource = factory.createDataSource(pro);
        }catch (Exception e){
            e.printStackTrace();
        }
        return dataSource;
    }
    public static Connection getConnection(){
        return null;
    }
}
