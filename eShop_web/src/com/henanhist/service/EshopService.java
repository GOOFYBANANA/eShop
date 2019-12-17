package com.henanhist.service;

import com.henanhist.dao.EshopDao;
import com.henanhist.domain.Product;
import com.henanhist.domain.User;

import java.util.List;

public class EshopService {
    static EshopDao dao = new EshopDao();
    public String login(String ID, String PASSWORD){
        return dao.login(ID, PASSWORD);
    }
    public int register(User user) {
        return dao.register(user);
    }
    public List findAllproducts(){
        EshopDao dao = new EshopDao();
        return dao.findAllproducts();
    }
}
