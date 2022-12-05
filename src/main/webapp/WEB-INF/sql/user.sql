CREATE TABLE user (
	userEmail VARCHAR(50),
	userPw VARCHAR(100) NOT NULL,
	adminCk INT NOT NULL,
	regDate DATE NOT NULL,
	point INT NOT NULL,
	PRIMARY KEY(userEmail)
);

