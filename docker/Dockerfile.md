◆Dockerfileの書き方  
(参考)http://tatsyblog.sakura.ne.jp/wordpress/ci/1214/  

```
# Pull base image.
FROM ubuntu:14.04

# Install. 多分ここでgitとかコンテナのdockerとか
RUN \
```


# Samples

##### ・nginx
```
~$ mkdir nginx1
~$ cd nginx1
~/nginx1$ vim Dockerfile                   # 以下の内容でDockerfileを作成
FROM ubuntu
MAINTAINER takipone <xxxx@gmail.com>
RUN apt-get install -y nginx
ADD index.html /usr/share/nginx/html/
~/nginx1$ echo 'Hello!' > index.html
~/nginx1$ ls
Dockerfile  index.html
```
http://www.atmarkit.co.jp/ait/articles/1407/08/news031.html

##### ・Dockerfileの一例、nginxサーバーを作るためのDockerfile
```
FROM centos:6
MAINTAINER soushi <webservice@soushi.jp>
RUN rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm
RUN yum -y install nginx
ENTRYPOINT /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
RUN sed -i -e "/^http/a \ \ \ \ server \{\n\tlocation \/ \{\n\t\troot \/var\/www\;\n\t\}\n\n\ \ \ \ \}" /etc/nginx/nginx.conf

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/var/log/nginx", "/var/www"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
```
http://qiita.com/soushiy/items/0945bcbc7ecce4822985#dockerfile%E3%81%AE%E4%B8%80%E4%BE%8B
