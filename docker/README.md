◆20170417  

これに習ってマストドンコンテナ立てたい    
http://qiita.com/zembutsu/items/fd52a504321dd5d6f0b8    
↓    
CentOs7のイメージ作るところ→Dockerfileの作成    
↓    
http://tatsyblog.sakura.ne.jp/wordpress/ci/1214/    
Runで`yum install git`とかすればいいのかしら    
↓    
ここから一旦別ページ（https://github.com/junichiroid/pages/blob/master/docker/Dockerfile.md)


---
##### docker build
> 「Dockerfile」ファイルが作成できたら、「docker build」コマンドでDockerコンテナーの起動、構成、Dockerイメージの作成まで一気に実行します。

```
docker build [ -t ｛イメージ名｝ [ :｛タグ名｝ ] ] ｛Dockerfileのあるディレクトリ｝
ex) $ docker build -t takipone/nginx:1.0 .
```

##### ・全体像
```
①dockerfile書く
②docker buildする→イメージできる
③イメージからコンテナ起動
```
参考：http://www.atmarkit.co.jp/ait/articles/1407/08/news031.html

---

```
①まず、centOS7のコンテナ立てる。  
②gitコマンドない
> $ yum -y install git
```


```
[docker@5bec1a927e72 ~]$ docker version
Client:
 Version:      17.04.0-ce
 API version:  1.28
 Go version:   go1.7.5
 Git commit:   4845c56
 Built:        Mon Apr  3 18:01:50 2017
 OS/Arch:      linux/amd64
Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?
```
> Cannot connect to the Docker daemon at unix:///var/run/docker.sock. Is the docker daemon running?  
ここに`Server:`が出れば良い。

> Dockerで立ち上げたCentOSでsystemctlを使うとFailed to get D-Bus connection: Operation not permittedと出る
http://qiita.com/setouchi/items/6bfa116fc5a266856177#_reference-cfd351633ec09eb7859b
```
Privileged modeをONにした状態でDockerコンテナを初期化&起動する必要があることがわかりました。
つまり、コマンドで言うところの
$ docker run --privileged -d --name httpd centos:latest /sbin/init
http://grandbig.github.io/blog/2017/03/25/docker-for-mac-6/
```

結果：`Server:`が出ないのは、`systemctl start docker`でdocker clientが起動していないから。

---
##### 疑問その１
```
どこまでimageにしたらいいんだろう？
使える状態？
そしたらdockerfileの意味って？
あくまでイメージか。
それとも、全て環境実行環境が整っている状態を作った後に、そのコンテナをイメージ化した方がいいの？
```
