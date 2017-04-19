### docker exec
http://qiita.com/RyoMa_0923/items/9b5d2c4a97205692a560


### docker build
```
$ docker build -t hoge:1.0 .
*hogeがrepositry名になる。
*1.0がtagになる。
*総じてタグ指定としている

そしてrunする時は、
docker run -d --privileged --name mycon hoge:1.0 /sbin/init
*repo:tag を総じた指定の仕方になる。
```

### docker run
```
ポートフォワードつきDockerコンテナの初期化
さて、せっかくなのでポートフォワードの設定もコマンドベースで書いていきます。
$ docker run -p 8888:80 --name httpd centos:latest /sbin/init
これで、 http://localhost:8888でアクセスしたときにDockerコンテナの80ポートにアクセスすることができるようになります。
Kitematicでポートフォワードの設定はできるのですが、Privileged modeも必要なら下記コマンドのように初めに同時に設定してしまえば良いでしょう。
（参考：http://grandbig.github.io/blog/2017/03/25/docker-for-mac-6/）
```
