import React, {useEffect, useRef, useState} from 'react';
import WebView from 'react-native-webview';
import {BackHandler, Text, TouchableOpacity} from 'react-native';
import {WebViewNativeEvent} from 'react-native-webview/lib/WebViewTypes';
import {useNavigation} from '@react-navigation/native';
import {HeaderBackButton} from '@react-navigation/elements';

const Home = () => {
  const ref = useRef<WebView>(null);
  const [navState, setNavState] = useState<WebViewNativeEvent>();

  const navigation = useNavigation();

  useEffect(() => {
    const canGoBack = navState?.canGoBack;

    const onPress = () => {
      if (canGoBack) {
        ref?.current?.goBack();
        return true;
      } else {
        return false;
      }
    };

    navigation.setOptions({
      headerLeft: () => (
        <HeaderBackButton onPress={onPress} tintColor="#58595B" />
      ),
      headerRight: () => (
        <TouchableOpacity
          style={{marginRight: 13}}
          onPress={() => navigation.navigate('Home1', {canGoBack: true})}>
          <Text>설정</Text>
        </TouchableOpacity>
      ),
    });

    BackHandler.addEventListener('hardwareBackPress', onPress);

    return () => {
      BackHandler.removeEventListener('hardwareBackPress', onPress);
    };
  }, [navState?.canGoBack, navigation]);

  return (
    <WebView
      source={{uri: 'http://localhost:3000/home'}}
      ref={ref}
      onNavigationStateChange={e => setNavState(e)}
    />
  );
};
export default Home;
