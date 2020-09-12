USE ad_list;

DROP TABLE IF EXISTS ads, ad_archive, category, users, user_auth, user_ad_history;
SET FOREIGN_KEY_CHECKS = 0;

#ID for individual ads, title, body, unused imgName (add date created, date modified)
CREATE TABLE ads(
    id       int UNSIGNED     NOT NULL AUTO_INCREMENT,
    title    CHAR(50)         NOT NULL,
    body     TEXT             NOT NULL,
    imgName  CHAR(25),
    category TINYINT UNSIGNED NOT NULL,
    created  CHAR(10)         NOT NULL,
    modified CHAR(10),
    PRIMARY KEY (id),
    FOREIGN KEY (category) REFERENCES category (cat_no),
    CONSTRAINT created UNIQUE (created)
);

#archived ads after x time
CREATE TABLE ad_archive(
    id      int UNSIGNED NOT NULL,
    created CHAR(10) NOT NULL,
    FOREIGN KEY (id) REFERENCES ads (id),
    FOREIGN KEY (created) REFERENCES ads (created)
);

#category number and name
CREATE TABLE category(
    cat_no   TINYINT UNSIGNED NOT NULL,
    cat_name CHAR(25),
    PRIMARY KEY (cat_no)
) ENGINE = InnoDB
  AUTO_INCREMENT = 10;


#ID for user, user name, email
CREATE TABLE users(
    id        int UNSIGNED NOT NULL AUTO_INCREMENT,
    user_name CHAR(25),
    email     CHAR(75),
    date      CHAR(10),
    PRIMARY KEY (id)
);

#user ads history (with date?)
CREATE TABLE user_ad_history(
    ad_id   INTEGER UNSIGNED NOT NULL,
    user_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

#password table
CREATE TABLE user_auth(
    user_id  int UNSIGNED NOT NULL,
    password CHAR(50),
    FOREIGN KEY (user_id) REFERENCES users (id)
);
