import React from 'react';
import WebView from 'react-native-webview';

const Settings = () => {
  return (
    <WebView
      source={{uri: 'https://naver.com'}}
      allowFileAccess={true}
      scalesPageToFit={true}
      originWhitelist={['*']}
    />
  );
};

export default Settings;
