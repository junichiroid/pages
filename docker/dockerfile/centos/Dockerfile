# Pull base image.
FROM centos:latest

# Install.
RUN yum -y install git && \
curl -sSL https://get.docker.com/ | sh

# ユーザー名の追加だったりは、また別スクリプトとか用意して実行した方がいいのかな？
# CMDっていうコマンドがあるそう
# CMD：完成したイメージからコンテナを作成するときに実行される
# RUNの時に実行されなかったのは、そういうこと
# http://qiita.com/YusukeHigaki/items/044164837daa5e845d50
#CMD systemctl enable docker
# ちなみに、CMDを複数書くと、一番最後のだけが実行されるらしい。https://7me.oji.0j0.jp/2016/dockerfile-cmd.html
# ので、以下の書き方で繋げる
#CMD bash -c "systemctl enable docker && systemctl start docker && /usr/sbin/adduser -g docker docker"
#これ使えませんでした...
