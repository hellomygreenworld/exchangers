package controller;

import com.sun.org.slf4j.internal.Logger;
import com.sun.org.slf4j.internal.LoggerFactory;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
import lombok.extern.log4j.Log4j;
import model.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.UserService;

@Controller
@Log4j
@Service
@RequestMapping(value="/user")

public class UserController {
    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userservice;

    //회원가입 페이지 이동
    @RequestMapping(value = "/join", method = RequestMethod.GET)
    public void loginGET() {

        logger.debug("회원가입 페이지 진입");
    }

    // 회원가입
    @RequestMapping(value = "/join", method = RequestMethod.POST)
    public String joinPost(UserVO user) throws Exception {
        logger.debug("회원가입 진입");

        // 회원가입 서비스 진행
        userservice.userJoin(user);
        logger.debug("join service 성공");
        return "redirect:/main";
    }

    //로그인 페이지 이동
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public void joinGET() {

        logger.debug("로그인 페이지 진입");
    }
}
