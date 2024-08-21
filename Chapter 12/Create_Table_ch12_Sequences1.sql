CREATE TABLE ch12_Sequences1 (
GRP enum ('grp1','grp2','grp3'),
SEQ_ID mediumint AUTO_INCREMENT,
VAL1 varchar(50),
VAL2 varchar(50),
PRIMARY KEY (grp, SEQ_ID)
) ENGINE=MyISAM;