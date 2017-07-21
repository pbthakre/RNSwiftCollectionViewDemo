/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component, processColor } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  NativeModules,
  requireNativeComponent
} from 'react-native';

const RNCollectionView = requireNativeComponent('RNCollectionViewSwift')
//const RNCollectionView = NativeModules.RNCollectionViewSwift;


export default class RNSwiftCollectionViewDemo extends Component {


  render() {
    console.log('RNCollectionView=', RNCollectionView);
    return (<RNCollectionView style={{position: 'absolute',top: 0,left: 0,bottom: 0,right: 0}}
    locations={[0, .5, 1.0]}
    colors={['#5ED2A0', 'red', '#339CB1']} />);
  }
}

RNSwiftCollectionViewDemo.propTypes = {
  colors: React.PropTypes.array,
  locations: React.PropTypes.array,
}

AppRegistry.registerComponent('RNSwiftCollectionViewDemo', () => RNSwiftCollectionViewDemo);
