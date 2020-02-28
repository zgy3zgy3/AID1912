"""
数据库的修改
"""
#使用book表
1.将书名老舍价格改为45元
update book set 价格 = 45 where 书名 = "老舍";

2.增加个字段：出版日期 类型为date 放在价格后面
alter table book add 出版日期 date after 价格;

3.所有老舍的出版日期都为2016-10-1
update book set 出版日期 = "2016-10-1" where 作者="老舍";

4.所有机械工业出版社出版社的出版日期修改为2018-1-1，但是老舍的不改
update book set 出版日期 = "2018-1-1" where 出版社 ="机械工业出版社" and 作者 !="老舍";

5.删除所有160元以上的书
delete from book where 价格>160;

6.修改价格字段的数据类型decimal(5,2)
alter table book modify 价格 decimal(5,2);

7.查找鲁迅2017年以后的书
select * from book where 作者="鲁迅" and 出版日期 >"2017-1-1";






