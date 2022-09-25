//
//  CellFromNib.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 19/08/2022.
//

import UIKit

protocol CellFromNib: UICollectionViewCell {
    
}

extension CellFromNib {
    
    //MARK: - Properties
    static var nib: UINib {
        return UINib(nibName: String(describing: Self.self), bundle: nil)
    }
}
