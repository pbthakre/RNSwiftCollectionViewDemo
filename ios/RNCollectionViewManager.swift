//
//  RNCollectionViewManager.swift
//  RNSwiftCollectionViewDemo
//
//  Created by MacBook pro15 on 21/07/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation

@objc(RNCollectionViewSwift)
class RNCollectionViewManager : RCTViewManager {
  override func view() -> UIView! {
    return RNCollectionViewDemo(); 
  }
}
