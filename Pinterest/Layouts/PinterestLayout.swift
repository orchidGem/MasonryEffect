//
//  PinterestLayout.swift
//  Pinterest
//
//  Created by Laura Evans on 1/28/18.
//  Copyright © 2018 Razeware LLC. All rights reserved.
//

import UIKit

protocol PinterestLayoutDelegate: class {
  func collectionView(_ collectionView:UICollectionView, heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat
}

class PinterestLayout: UICollectionViewLayout {
  weak var delegate: PinterestLayoutDelegate!
  fileprivate var numberOfColumns = 2
  
  fileprivate var cellPadding: CGFloat = 6
  
  fileprivate var cache = [UICollectionViewLayoutAttributes]()
  
  fileprivate var contentHeight: CGFloat = 0
  
  fileprivate var contentWidth: CGFloat {
    guard let collectionView = collectionView else { return 0 }
    let insets = collectionView.contentInset
    return collectionView.bounds.width - (insets.left + insets.right)
  }
  
  override var collectionViewContentSize: CGSize {
    return CGSize(width: contentWidth, height: contentHeight)
  }
}
