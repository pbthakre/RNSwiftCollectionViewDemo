/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  requireNativeComponent
} from 'react-native';

const RNCollectionView = requireNativeComponent('RNCollectionViewSwift')

export default class RNSwiftCollectionViewDemo extends Component {

  render() {
    return (
    <RNCollectionView style={{position: 'absolute',top: 0,left: 0,bottom: 0,right: 0}} />);
  }
}

AppRegistry.registerComponent('RNSwiftCollectionViewDemo', () => RNSwiftCollectionViewDemo);
