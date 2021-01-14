## MariaDB/MySQL数据库注意事项：

### 1. MariaDB数据库安装
- `sudo zypper in mariadb mariadb-client`, 安装数据库；
- `systemctl start/stop/enable mariadb.service`, 管理服务；
- `systemctl status mariadb.service`, 查看服务；

### 2. MariaDB数据库使用逻辑梳理
- 安装和初次运行后，可以无密码进入数据库，但root密码未设置，无法进行管理操作；
- 使用临时数据库mysql或test，更新root用户密码，并刷新所有权限；
- 创建新的数据库；
- 创建新的用户，用户可操作数据库；
- 关键操作需要用root用户完成；

### 3. MariaDB数据库root用户密码重置
- 使用Linux的root用户，`su`；
- 由于root密码未知，使用安全启动方式跳过授权，`mysqld_safe --skip-grant-tables &`；
- 进入MariaDB/MySQL，`mariadb`；
- 使用临时数据库，`use mysql`；
- 尝试用UPDATE命令更新密码，`UPDATE user SET password=password('root') WHERE user='root'`，失败(会引起E1348错误)；
- 需要使用ALTER命令更新密码，`ALTER USER'root'@'localhost' IDENTIFIED BY 'root'`，成功；
- 刷新权限，`flush privileges`；
- 关键操作用root用户；
