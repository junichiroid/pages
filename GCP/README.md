
# gcloud

```
アカウントログイン
$ gcloud auth login

認証済みアカウント一覧
$ gcloud auth list

アカウント切り替え
$ gcloud config set account アカウント名
```

https://cloud.google.com/container-engine/docs/before-you-begin


http://qiita.com/zum/items/1904ccd280879ca481c5

レジストリpushのドキュメント  
https://cloud.google.com/container-registry/docs/pushing?hl=ja&_ga=1.128657484.1985031178.1493106018

既存のタグの名前変更
##### gcloudのレジストリにpushできるイメージを作る
```
既存イメージから新たにタグを作り直す
$ docker tag ${イメージID} タグ名
> gcr.ioをタグ名に付ける


```

```
大枠流れ
http://otiai10.hatenablog.com/entry/2016/04/09/054008


コンテナクラスタ
https://cloud-ja.googleblog.com/2015/02/gcp_4.html
```



クバネツ概要
https://access.redhat.com/ja/node/1273583
http://knowledge.sakura.ad.jp/tech/3681/

インストール
https://kubernetes.io/docs/tasks/kubectl/install/


```

kubectl run mattermost --image=gcr.io/mattermost-165707/mattermost --port=8080
The connection to the server localhost:8080 was refused - did you specify the right host or port?

なんか設定しないといけないっぽい
PC-10428:~ a12653$ gcloud config set compute/zone asia-east1-a
Updated property [compute/zone].
PC-10428:~ a12653$ gcloud container clusters get-credentials cluster-1
Fetching cluster endpoint and auth data.
kubeconfig entry generated for cluster-1.

PC-10428:~ a12653$ kubectl run mattermost --image=gcr.io/mattermost-165707/mattermost --port=8080
deployment "mattermost" created
i

PC-10428:~ a12653$ kubectl get deployments
NAME         DESIRED   CURRENT   UP-TO-DATE   AVAILABLE   AGE
mattermost   1         1         1            1           1m

PC-10428:~ a12653$ kubectl get pods
NAME                          READY     STATUS    RESTARTS   AGE
mattermost-3518875913-7x604   1/1       Running   0          1m

PC-10428:~ a12653$ kubectl expose deployment mattermost --type="LoadBalancer"
service "mattermost" exposed

PC-10428:~ a12653$ kubectl get services
NAME         CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
kubernetes   10.123.240.1     <none>        443/TCP          1h
mattermost   10.123.251.124   <pending>     8080:32691/TCP   17s
↓IP付与される
PC-10428:~ a12653$ kubectl get services
NAME         CLUSTER-IP       EXTERNAL-IP       PORT(S)          AGE
kubernetes   10.123.240.1     <none>            443/TCP          1h
mattermost   10.123.251.124   130.211.241.121   8080:32691/TCP   52s
```

まとめると
```
イメージからdevelopment作る。（ちなみにmattermostの場合、8065ポートでの公開だったので、それに合わせたポートにしないといけなかった。 kubectl run mattermost --image=gcr.io/mattermost-165707/mattermost --port=8065）
developmentを元にサービスを作る。

PC-10428:~ a12653$ kubectl get service
NAME         CLUSTER-IP       EXTERNAL-IP       PORT(S)          AGE
kubernetes   10.123.240.1     <none>            443/TCP          17h
mattermost   10.123.250.123   130.211.241.121   8065:32350/TCP   1m
```

