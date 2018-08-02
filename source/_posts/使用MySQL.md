---
title: 使用MySQL
date: 2018-08-02 21:31:12
tags:
categories:
    - MySQL必知必会
---
# 1、连接
为了连接到MySQL，需要以下信息：
+ 主机名（计算机名）-- 如果连接到本地MySQL服务器，为localhost；
+ 端口（如果使用默认端口3306之外的端口）
+ 一个合法的用户名；
+ 用户口令

<!-- more -->
示例：
```
mysql -u ben -p -h myserver -P 9999
```

# 2、选择数据库
在你最初连接到MySQL时，没有任何数据库打开供你使用。在你能执行任意数据库操作之前，需要选择一个数据库。为此，可使用 **USE** 关键字
>关键字（key word）作为MySQL语言组成部分的一个保留字。绝不要用关键字命名一个表或列

示例：
```
USE crashcourse;
```

# 3、了解数据库和表
&nbsp;&nbsp;&nbsp;&nbsp;数据库、表、列、用户、权限等的信息被存储在数据库和表中。如果不知道可以使用的数据库名时，可以使用 MySQL的 **SHOW** 命令来显示这些信息。

示例：
```
SHOW DATABASES;
```

为了获取一个数据库内的表的列表，使用 **SHOW TABLES;**
示例：
```
SHOW TABLES;
```

SHOW 也可以用来显示表列 `SHOW COLUMNS FROM customers;`
DESCRIBE 语句 MySQL支持功DESCRIBE作为SHOW COLUMNS FROM的一种快捷方式。换句话说，DESCRIBE customers; 是SHOW COLUMNS FROM customers;的一种快捷方式。

所支持的其他 SHOW 语句还有：
+ SHOW STATUS; 用于显示广泛的服务器状态信息；
+ SHOW CREATE DATABASE 和 SHOW CREATE TABLE，分别用来显示创建特定数据库或表的MySQL语句；
+ SHOW ERRORS 和 SHOW WARNINGS 用来显示服务错误或警告消息。