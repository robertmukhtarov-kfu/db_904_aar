{\rtf1\ansi\ansicpg1251\cocoartf2513
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww28600\viewh18000\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \'97 1) \uc0\u1074 \u1086 \u1079 \u1074 \u1088 \u1072 \u1097 \u1072 \u1077 \u1090  \u1074 \u1089 \u1077 \u1093  \u1091 \u1095 \u1080 \u1090 \u1077 \u1083 \u1077 \u1081  \u1082 \u1086 \u1090 \u1086 \u1088 \u1099 \u1077  \u1087 \u1088 \u1077 \u1087 \u1086 \u1076 \u1072 \u1102 \u1090  \u1074  4 \u1075 \u1088 \u1091 \u1087 \u1087 \u1077 : \
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf0 SELECT  teachers_id FROM teachers WHERE group_id= 4;\
\
\
\
\'97 2) \uc0\u1074 \u1086 \u1079 \u1074 \u1088 \u1072 \u1097 \u1072 \u1077 \u1090  \u1087 \u1077 \u1088 \u1074 \u1099 \u1093  5 \u1089 \u1090 \u1091 \u1076 \u1077 \u1085 \u1090 \u1086 \u1074  \u1074  \u1087 \u1086 \u1088 \u1103 \u1076 \u1082 \u1077  \u1091 \u1073 \u1099 \u1074 \u1072 \u1085 \u1080 \u1103  \u1089 \u1088 \u1077 \u1076 \u1085 \u1077 \u1075 \u1086  \u1073 \u1072 \u1083 \u1083 \u1072  \
\
SELECT * FROM users ORDER BY score LIMIT 5;\
\
\
\
\'97 3) \uc0\u1080 \u1079 \u1084 \u1077 \u1085 \u1080 \u1090 \u1100  \u1075 \u1088 \u1091 \u1087 \u1087 \u1091  \u1089 \u1090 \u1091 \u1076 \u1077 \u1085 \u1090 \u1072  \u1085 \u1072  1, \u1077 \u1089 \u1083 \u1080  \u1077 \u1075 \u1086  user_id == 5\
\
UPDATE students SET group_id=1 WHERE user_id=5;\
\
\
\
\'974) \uc0\u1059 \u1076 \u1072 \u1083 \u1080 \u1090 \u1100  \u1089 \u1090 \u1091 \u1076 \u1077 \u1085 \u1090 \u1086 \u1074  \u1089 \u1088 \u1077 \u1076 \u1085 \u1080 \u1081  \u1073 \u1072 \u1083  \u1082 \u1086 \u1090 \u1086 \u1088 \u1099 \u1081  \u1084 \u1077 \u1085 \u1100 \u1096 \u1077  100\
\
DELETE FROM students WHERE score <= 100 \
\
\
\
-- 5)  \uc0\u1044 \u1086 \u1073 \u1072 \u1074 \u1080 \u1090 \u1100  \u1075 \u1088 \u1091 \u1087 \u1087 \u1091  5 \u1089  \u1087 \u1088 \u1077 \u1087 \u1086 \u1076 \u1072 \u1074 \u1072 \u1090 \u1077 \u1083 \u1077 \u1084 , \u1095 \u1077 \u1081  id = 11\
\
INSERT INTO hw2.groups (name, teacher_id) VALUES (\'915\'92, 11);\
\
\
\
-- 6)  \uc0\u1083 \u1086 \u1075 \u1080 \u1085 \u1099  \u1087 \u1086 \u1083 \u1100 \u1079 \u1086 \u1074 \u1072 \u1090 \u1077 \u1083 \u1077 \u1081 , \u1082 \u1086 \u1090 \u1086 \u1088 \u1099 \u1077  \u1079 \u1072 \u1088 \u1077 \u1075 \u1077 \u1089 \u1090 \u1088 \u1080 \u1088 \u1086 \u1074 \u1072 \u1083 \u1080 \u1089 \u1100  \u1095 \u1077 \u1088 \u1077 \u1079  Mail\
\
SELECT username FROM users WHERE email LIKE '%mail.ru';\
\
\
\
-- 7) \uc0\u1059 \u1074 \u1077 \u1083 \u1080 \u1095 \u1080 \u1090 \u1100  \u1089 \u1088 \u1077 \u1076 \u1085 \u1080 \u1081  \u1073 \u1072 \u1083  \u1089 \u1090 \u1091 \u1076 \u1077 \u1085 \u1090 \u1072  \u1089  score >= 95 \u1085 \u1072  5\
\
UPDATE students SET rating=rating+5 WHERE score >= 95;\
\
\
-- 8) \uc0\u1048 \u1084 \u1103 , id-\u1075 \u1088 \u1091 \u1087 \u1087 \u1099 , \u1073 \u1072 \u1083 \u1083  \u1089 \u1090 \u1091 \u1076 \u1077 \u1085 \u1090 \u1086 \u1074 , \u1089 \u1088 \u1077 \u1076 \u1085 \u1080 \u1081  \u1073 \u1072 \u1083 \u1083  \u1082 \u1086 \u1090 \u1086 \u1088 \u1099 \u1093  \u1073 \u1086 \u1083 \u1100 \u1096 \u1077  56, \u1074  \u1087 \u1086 \u1088 \u1103 \u1076 \u1082 \u1077  \u1091 \u1073 \u1099 \u1074 \u1072 \u1085 \u1080 \u1103  \u1073 \u1072 \u1083 \u1083 \u1072 \
\
SELECT name, group_id, score FROM students WHERE score<56 ORDER BY score DESC;\
\
\
\
-- 9) \uc0\u1044 \u1086 \u1073 \u1072 \u1074 \u1080 \u1090 \u1100  \u1089 \u1090 \u1091 \u1076 \u1077 \u1085 \u1090 \u1072  \u1095 \u1077 \u1081  id = 5 \u1080  \u1089 \u1088 \u1077 \u1076 \u1085 \u1080 \u1081  \u1073 \u1072 \u1083  = 100\
\
INSERT INTO students (student_id, score) VALUES (5, 100);\
\
\
\
-- 10) \uc0\u1055 \u1088 \u1077 \u1087 \u1086 \u1076 \u1086 \u1074 \u1072 \u1090 \u1077 \u1083 \u1080 , id \u1082 \u1086 \u1090 \u1086 \u1088 \u1099 \u1093  < 5, \u1074  \u1087 \u1086 \u1088 \u1103 \u1076 \u1082 \u1077  \u1091 \u1073 \u1099 \u1074 \u1072 \u1085 \u1080 \u1103 \
\
SELECT * FROM teachers WHERE teachers_id<5 ORDER BY teachers_id DESC;\
\
\
\
\
\
\
\
\
}