package mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import model.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/applicationContext.xml")

@Service
public class UserMapperTest {
    @Autowired
    private UserMapper usermapper;

    @Test
    public void userJoin() throws Exception {
        UserVO user = new UserVO();

        user.setUserId("spring_test");
        user.setUserPw("spring_test");
        user.setUserMail("sprint_test");
        user.setUserZipCode("spring_test");
        user.setUserAddress("spring_test");
        user.setUserAddressDetail("spring_test");

        usermapper.userJoin(user);
    }

}
