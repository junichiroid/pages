import React, { Component } from 'react';
import { AppRegistry, WebView } from 'react-native';

class WebViewProject extends Component {
  render() {
    return (
      <WebView
        source={{uri: 'https://s.amebame.com/#minigame'}}
        style={{marginTop: 20}}
      />
    );
  }
}

AppRegistry.registerComponent('WebViewProject', () => WebViewProject);
