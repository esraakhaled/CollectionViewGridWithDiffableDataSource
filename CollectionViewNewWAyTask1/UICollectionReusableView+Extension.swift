//
//  UICollectionReusableView+Extension.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 19/08/2022.
//

import UIKit

extension UICollectionReusableView {
    //MARK: Properties
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
