React Native  
◆参考↓  
http://amagitakayosi.hatenablog.com/entry/2017/04/18/120000

```
下準備
$ npm i -g create-react-native-app
```

```
# 雛形を作る
$ create-react-native-app myapp
```

の前に怒られた。  
`You are currently running Node v4.2.1 but create-react-native-app requires >=6. Please use a supported version of Node.`  

なので
`nodebrew`入れる
```
# nodebrewのインストール
$ curl -L git.io/nodebrew | perl - setup

# .bash_profileに追加
export PATH=$HOME/.nodebrew/current/bin:$PATH

# 最新版入れる
$ nodebrew install-binary latest

# 今入っているバージョンの確認
$ nodebrew ls

# 使うもの選択
$ nodebrew use latest
```

```
Tips
インストールの方法2種類ある。
1.nodebrew install        (nodebrew installはソースからコンパイルを行うので時間がかかります。)
2.nodebrew install-binary (特に理由がなければnodebrew install-binaryを使えば良いと思います。)
```


からの、再度雛形実行。  
正常に終わるとこんな感じ
```
Success! Created myapp at /Users/a12653/Desktop/react native/app/myapp
Inside that directory, you can run several commands:

  npm start
    Starts the development server so you can open your app in the Expo
    app on your phone.

  npm run ios
    (Mac only, requires Xcode)
    Starts the development server and loads your app in an iOS simulator.

  npm run android
    (Requires Android build tools)
    Starts the development server and loads your app on a connected Android
    device or emulator.

  npm test
    Starts the test runner.

  npm run eject
    Removes this tool and copies build dependencies, configuration files
    and scripts into the app directory. If you do this, you can’t go back!

We suggest that you begin by typing:

  cd myapp
  npm start
```

あとは、XDEでプロジェクトを開いて、publishボタンを押せばリンクが生成されて、
そのリンクをアプリで開けば見れる。

◆未確認
```
◆便利コンポーネントがついてくる
create-react-native-app で作ったアプリには、最初から expo がインストールされている。
わかりやすいところだと、画像を選択するImagePickerや、地図を表示する MapView、OpenGLの描画を行なうGLViewなどがある。

◆XDE上で作ったプロジェクトの確認方法がよくわからん。
◆あとはReact
◆ドキュメント読んでね
https://docs.expo.io/versions/v15.0.0/index.html
```
