[お値段](https://firebase.google.com/pricing/)
```
とりあえず、firebase initすればいいみたい。
*project settingには気をつけて（invalid projectIdとか言われる）

そのあと、よくわからんけど、5000だと10秒に1回リダイレクトが走るので、5001とかで起動するのが良さげ
```
---
##### 参考
[FirebaseのGoogleアカウントOAuth認証を試したのでメモ](http://qiita.com/cyokodog@github/items/eeedc5c94477602ec9f3)


##### Firebase Storageにおけるセキュリティルール
[Firebase Storage セキュリティ ルールについて](https://firebase.google.com/docs/storage/security/)
通常アップロードする際に懸念されるファイルサイズの制限やデータ検証も出来るみたい。
