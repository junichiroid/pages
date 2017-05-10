# iosで使っているFirebaseのweb版を使ってみる

##### 0.導入
![](https://github.com/junichiroid/pages/blob/master/GCP/Firebase/sample/20170510_web/images/screen1.png)  
コンソールから新規プロジェクトの追加を行う

##### 1.htmlコードの追加
普通に追加

##### 2.開発用ローカル ウェブサーバーの実行
最初にfirebase projectをinitしないといけないみたい
```
$ firebase init
> そうするとfirebase.jsonが作成される(中身特に何もないんだけど)
```

##### 3.firebase serve
トラブル発生
```
Error: An unexpected error has occurred.
```
`firebase-debug.log`を見ると
```
[debug] TypeError: Cannot read property 'public' of undefined
    at Server.<anonymous> (/Users/a12653/.nodebrew/node/v6.9.1/lib/node_modules/firebase-tools/commands/serve.js:37:17)
    at Server.g (events.js:291:16)
    at emitNone (events.js:86:13)
    at Server.emit (events.js:185:7)
    at emitListeningNT (net.js:1283:10)
    at _combinedTickCallback (internal/process/next_tick.js:71:11)
    at process._tickCallback (internal/process/next_tick.js:98:9)
[error]
[error] Error: An unexpected error has occurred.
```
とある。。

手順的には
```
$ firebase login
$ firebase init
$ firebase serve
```
みたい。

で、ディレクトに
```
./database.rules.json
./firebase.json
./public/index.html
```
こいつらが作られるらしい。

とりあえず、色々作り直してみる。
```
$ firebase init
=== Project Setup

First, let's associate this project directory with a Firebase project.
You can create multiple project aliases by running firebase use --add,
but for now we'll just set up a default project.

? Select a default Firebase project for this directory: プロジェクト名 (プロジェクトID)

i  Writing configuration info to firebase.json...
i  Writing project information to .firebaserc...

✔  Firebase initialization complete!
```
やはりできない。

おもむろに
```
$ firebase use --add
? Which project do you want to add? プロジェクトID
? What alias do you want to use for this project? (e.g. staging) staging

Created alias staging for プロジェクトID.
Now using alias staging (プロジェクトID)
```
しかし、`firebase serve`しても変わらず。

解決

`firebase init`する際
```
? Which Firebase CLI features do you want to setup for this folder? Press Space to select features, then Enter to confirm your choices. (Press <spa
ce> to select)
❯◯ Database: Deploy Firebase Realtime Database Rules
 ◯ Functions: Configure and deploy Cloud Functions
 ◯ Hosting: Configure and deploy Firebase Hosting sites
```
スペースボタンでどの機能使うかどうか選択しないとダメだった。

そうすると
```
=== Project Setup

First, let's associate this project directory with a Firebase project.
You can create multiple project aliases by running firebase use --add,
but for now we'll just set up a default project.

i  .firebaserc already has a default project, skipping

=== Hosting Setup

Your public directory is the folder (relative to your project directory) that
will contain Hosting assets to be uploaded with firebase deploy. If you
have a build process for your assets, use your build's output directory.

? What do you want to use as your public directory? public
? Configure as a single-page app (rewrite all urls to /index.html)? No
✔  Wrote public/404.html
✔  Wrote public/index.html

i  Writing configuration info to firebase.json...
i  Writing project information to .firebaserc...

✔  Firebase initialization complete!
```
全部つくれたっぽい。そして、`firebase serve` 起動しました。

##### 認証
簡単にログインフォームをhtml作る。

##### Analytics?
![](https://github.com/junichiroid/pages/blob/master/GCP/Firebase/sample/20170510_web/images/screen1.png)  
なんでここに出てこないのか？Analyticsをwebで導入していないから？  
→入れてみる

![](https://github.com/junichiroid/pages/blob/master/GCP/Firebase/sample/20170510_web/images/screen2.png)  
→そもそもfirebaseのAnalyticsを提供してないっぽい    

##### webが提供してるもの
 - [ ] Cloud Massasing
 - [x] Authentication
 - [ ] Realtime database
 - [ ] Storage
 - [x] Hosting
 
### 別件だけど、Google Analytics導入してみてもいいかも
