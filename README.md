# docker-lnmp
用docker-compose制作的fastadmin后台模版的lnmp环境。
因为初学docker，好多php扩展没有完善，请进入php容器中安装
```
docker exec -it f458ada176c1 bash
docker-php-ext-install 对应的扩展名称
```
如果安装未找到，请更新
```
apt-get update
```
fastadmin后台安装插件，需要用到zip扩展，请先安装libzip-dev，再安装扩展
```
apt-get install -y  libzip-dev
docker-php-ext-install 对应的扩展名称
```
关于fastadmin，直接去官网下载完整版即可。
安装的时候，要修改数据库的配置文件，是application/database.php，服务器地址改为db（与docker-compose.yaml中名称一致）。密码也改成docker-compose.yaml中设置的密码。
修改完成，安装的时候，数据库地址也要写成db。
