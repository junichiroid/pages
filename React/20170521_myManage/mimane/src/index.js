import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import registerServiceWorker from './registerServiceWorker';
import './index.css';
import * as firebase from 'firebase';

var config = {
    apiKey: "AIzaSyBt0SSaiRVemiGSz0kAzIxrLVQMpFKG8sE",
    authDomain: "mimane-db634.firebaseapp.com",
    databaseURL: "https://mimane-db634.firebaseio.com",
    projectId: "mimane-db634",
    storageBucket: "mimane-db634.appspot.com",
    messagingSenderId: "582702053119"
  };
firebase.initializeApp(config);

ReactDOM.render(<App />, document.getElementById('root'));
registerServiceWorker();
