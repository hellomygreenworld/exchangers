package service;

import model.UserVO;

public interface UserService {
    // 회원가입
    public void userJoin(UserVO user) throws Exception;
}
