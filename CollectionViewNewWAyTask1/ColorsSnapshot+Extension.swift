//
//  ColorsSnapshot+Extension.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 19/08/2022.
//

import UIKit

extension ColorsSnapshot {
    //MARK: Functions
    mutating func addRandomItems(count: Int = 10, to section: Int? = nil) {
        var items = [Color]()
        for _ in 0..<count {
            items.append(Color.init())
        }
        if let section = section {
            self.appendItems(items, toSection: section)
        } else {
            self.appendItems(items)
        }
    }
    
    static func random() -> ColorsSnapshot {
        var snapshot = ColorsSnapshot()
        snapshot.appendSections([0])
        snapshot.addRandomItems()
        return snapshot
    }
}
