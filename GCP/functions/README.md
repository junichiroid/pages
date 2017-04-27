# [Google Cloud Functions Emulator](https://github.com/GoogleCloudPlatform/cloud-functions-emulator)

nodeのバージョンサポートがまだ最新じゃないっぽい
```
Warning: You're using Node.js v7.9.0 but Google Cloud Functions only supports v6.9.1.
```
>  functions deploy helloWorld --trigger-http

ここでの `functions deploy` は、 `ローカルでのデプロイ` になる様子。  
*実際deployコマンドを使用した後にcloud functionに関数が作られてるか確かめたところソースは上がっていなかった。
