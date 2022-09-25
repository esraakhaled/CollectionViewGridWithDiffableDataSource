//
//  Color.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 19/08/2022.
//

import UIKit

struct Color {
    //MARK: - Properties
    let id = UUID()
    let color = UIColor.random()
}

extension Color: Hashable, Equatable {
    //MARK: - Functions
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(lhs: Color, rhs: Color) -> Bool {
        return lhs.id == rhs.id
    }
}
