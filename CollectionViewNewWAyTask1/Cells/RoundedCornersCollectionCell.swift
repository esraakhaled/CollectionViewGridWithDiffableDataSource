//
//  RoundedCornersCollectionCell.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 19/08/2022.
//

import UIKit

class RoundedCornersCollectionCell: UICollectionViewCell {
    //MARK: LifeCycle
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.layer.cornerRadius = 10
    }
}
