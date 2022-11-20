package swe.assign.student.service;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import swe.assign.student.dao.UserDao;
import swe.assign.student.model.UserInfo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Configuration
public class UserService {

    @Autowired
    UserDao userDao;

    //Method to save the user info into the database.
    public void saveUserInfo(UserInfo userInfo){
        try {

            userDao.save(userInfo);

        }   catch(Exception e){

            e.printStackTrace();

        }
    }


    //Method to get all the users from the database.
    public String listUser(){
        List<UserInfo> userList = new ArrayList<>();
        try {
            Iterable<UserInfo> allUsers = userDao.findAll();
            Iterator<UserInfo> itr = allUsers.iterator();
            while(itr.hasNext()){
                userList.add(itr.next());
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return userListToJson(userList);

    }

    static String userListToJson(List<UserInfo> userList){

        Gson gson = new GsonBuilder().setPrettyPrinting().create();
        String json = gson.toJson(userList);
        System.out.println(json);
        return json;

    }

}
