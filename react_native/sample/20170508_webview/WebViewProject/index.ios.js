import React, { Component } from 'react';
import { AppRegistry, WebView } from 'react-native';

class WebViewProject extends Component {
  render() {
    return (
      <WebView
        source={{uri: 'https://github.com/facebook/react-native'}}
        style={{marginTop: 20}}
      />
    );
  }
}

AppRegistry.registerComponent('WebViewProject', () => WebViewProject);
