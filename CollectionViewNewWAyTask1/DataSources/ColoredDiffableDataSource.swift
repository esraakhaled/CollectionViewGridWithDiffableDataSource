//
//  ColoredDiffableDataSource.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 19/08/2022.
//

import UIKit

class ColoredDiffableDataSource: UICollectionViewDiffableDataSource<Int, Color> {
    //MARK: Constructor
    init(collectionView: UICollectionView) {
        super.init(collectionView: collectionView) { (collectionView, indexPath, color) -> UICollectionViewCell? in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ColorCell.reuseIdentifier, for: indexPath)
            cell.contentView.backgroundColor = color.color
            return cell
        }
    }
}
