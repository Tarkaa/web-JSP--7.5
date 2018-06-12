package com.study.service;

import com.study.dao.XmlUserDao;
import com.study.do.User;
import com.study.exception.MsgException;

public class UserService {
    private  XmlUserDao dao=new XmlUserDao();
    /**
     * ����û�
     * @param user
     * @throws MsgException 
     */
    public void registUser(User user) throws MsgException{
        if(dao.findUserByUserName(user.getUsername())!=null){
            throw new MsgException("�û����Ѿ�����");
        }
        dao.addUser(user);
    }
    /**
     * ����û����Ƿ���ȷ
     * @param username
     * @param password
     */
    public User isUser(String username,String password){
        return dao.findUserByUNAndPWD(username, password);
        
    }
}