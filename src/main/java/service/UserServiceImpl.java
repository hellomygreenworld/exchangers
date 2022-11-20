package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.UserMapper;
import model.UserVO;

@Service
public class UserServiceImpl implements UserService{
    @Autowired
    UserMapper usermapper;

    @Override
    public void userJoin(UserVO user) throws Exception {
        usermapper.userJoin(user);
    }
}
