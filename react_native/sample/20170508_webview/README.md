# webviewの表示してみたい。
### 0.initする
```
$ react-native init AwesomeProject
```
> [Getting Started](https://facebook.github.io/react-native/docs/getting-started.html)

### 1.チュートリの中身に変える
```
import React, { Component } from 'react';
import { AppRegistry, Text } from 'react-native';

class HelloWorldApp extends Component {
  render() {
    return (
      <Text>Hello world!</Text>
    );
  }
}

AppRegistry.registerComponent('HelloWorldApp', () => HelloWorldApp);
```
> この時、class名の変更をお忘れなく。  
> [Tutorial](https://facebook.github.io/react-native/docs/tutorial.html)

### 2.renderの中身をwebViewの中身に変える
```
import React, { Component } from 'react';
import { WebView } from 'react-native';

class MyWeb extends Component {
  render() {
    return (
      <WebView
        source={{uri: 'https://github.com/facebook/react-native'}}
        style={{marginTop: 20}}
      />
    );
  }
}
```
> この際に、importをするのをお忘れなく。  
> [WebView](https://facebook.github.io/react-native/docs/webview.html)

### 番外編
`https`以外だとATSで弾かれるので、その際はinfo.plistを直接変えて`react-native run-ios`
> [ATS(App Transfer Security)でローカルホスト接続許可](http://matagotch.hatenablog.com/entry/2016/05/16/222101)
