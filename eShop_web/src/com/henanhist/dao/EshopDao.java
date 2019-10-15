package com.henanhist.dao;

import com.henanhist.domain.User;
import com.henanhist.utils.DBCPUtils;
import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import java.sql.SQLException;


public class EshopDao {
    static BasicDataSource dataSource = DBCPUtils.getDatasource();
    static QueryRunner runner = new QueryRunner(dataSource);
    public String login(String ID, String PASSWORD){
        String sql = "select * from user where uemail = ? and upassword = ?";
        User user = null;
        try{
            user = runner.query(sql, new BeanHandler<User>(User.class), ID, PASSWORD);
        }catch (SQLException e){
            e.printStackTrace();
        }
        if (user != null){
            return user.getUname();
        }else {
            return "1";
        }
    }
    public int register(User user) {
        String sql = "insert into user(uname, uemail, upassword, usex) values (?,?,?,?)";
        int state = 0;
        try {
            state = runner.execute(sql, user.getUname(), user.getUemail(), user.getUpassword(), user.getUsex());
        }catch (SQLException e){
            e.printStackTrace();
        }
        return state;
    }
}