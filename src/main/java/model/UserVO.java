package model;

public class UserVO {
    private String userId;

    private String userPw;

    private String userName;

    private String userMail;

    private String userZipCode;

    private String userAddress;

    private String userAddressDetail;

    private boolean isAdmin;

    private int regDate;

    private int userPoint;

    public String getUserId() {
        return userId;
    }

    public String getUserPw() {
        return userPw;
    }

    public String getUserName() {
        return userName;
    }

    public String getUserMail() {
        return userMail;
    }

    public String getUserZipCode() {
        return userZipCode;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public String getUserAddressDetail() {
        return userAddressDetail;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public int getRegDate() {
        return regDate;
    }

    public int getUserPoint() {
        return userPoint;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setUserMail(String userMail) {
        this.userMail = userMail;
    }

    public void setUserZipCode(String userZipCode) {
        this.userZipCode = userZipCode;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public void setUserAddressDetail(String userAddressDetail) {
        this.userAddressDetail = userAddressDetail;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public void setRegDate(int regDate) {
        this.regDate = regDate;
    }

    public void setUserPoint(int userPoint) {
        this.userPoint = userPoint;
    }


    @Override
    public String toString() {
        return "UserVO [userId: ]" + userId + ", userPw: " + userPw + ", userName: " + userName
                + ", userMail: " + userMail + ", userZipCode: " + userZipCode + ", userAddress: " + userAddress
                + ", userAddressDetail: " + userAddressDetail + ", isAdmin:" + isAdmin
                + ", regDate: " +  regDate + ", userPoint: " + userPoint;
    }

}
