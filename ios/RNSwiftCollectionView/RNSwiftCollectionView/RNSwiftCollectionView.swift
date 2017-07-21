//
//  RNSwiftCollectionView.swift
//  RNSwiftCollectionView
//
//  Created by MacBook pro15 on 21/07/17.
//  Copyright © 2017 MacBook pro15. All rights reserved.
//

import Foundation

open class RNSwiftCollectionView: UIView, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    var collectionView: UICollectionView!
    
    // MARK: - UIView
    
    override open func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let size = bounds.size
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 90, height: 120)
        
        collectionView = UICollectionView(frame: self.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        collectionView.backgroundColor = UIColor.white
        self.addSubview(collectionView)
    }

    override open func tintColorDidChange() {
        super.tintColorDidChange()
        
    }
    
    override open func didMoveToWindow() {
        super.didMoveToWindow()
        contentMode = .redraw
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 14
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 90, height: 30))
        label.center = CGPoint(x: 45, y: 60)
        label.textAlignment = .center
        label.text = "\(indexPath.row+1)"
        cell.addSubview(label)
        cell.backgroundColor = UIColor.orange
        return cell
    }

}
