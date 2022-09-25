//
//  ViewController.swift
//  CollectionViewNewWAyTask1
//
//  Created by Esraa Khaled   on 18/08/2022.
//

import UIKit

//MARK: -Typealias
typealias ColorsSnapshot = NSDiffableDataSourceSnapshot<Int, Color>

class ViewController: UIViewController {
    //MARK: Enum
    enum Section{
        case main
    }
    //MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: Variables
    var datasource: ColoredDiffableDataSource!
   //MARK: Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = configureLayout()
        collectionView.register(cell: ColorCell.self)
        datasource = ColoredDiffableDataSource(collectionView: collectionView)
        datasource.apply(ColorsSnapshot.random())
       
    }
    //MARK: Functions
    func configureLayout() -> UICollectionViewCompositionalLayout{
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 5)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.5))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section = NSCollectionLayoutSection(group: group)
        return UICollectionViewCompositionalLayout(section: section)
    }
}
