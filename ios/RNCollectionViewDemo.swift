//
//  RNCollectionViewDemo.swift
//  RNSwiftCollectionViewDemo
//
//  Created by MacBook pro15 on 21/07/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

import Foundation

import RNSwiftCollectionView

@objc(RNCollectionViewDemo)
class RNCollectionViewDemo : RNSwiftCollectionView {
  
  override init(frame: CGRect) {
    super.init(frame: frame);
    self.frame = frame;
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  }
