//
//  CategoryCell.swift
//  Insta
//
//  Created by Price OsX World on 1/14/17.
//  Copyright © 2017 Price OsX World. All rights reserved.
//

import UIKit

class CategoryCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout {
    
    let cellId = "itemsCellId"
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let itemsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        collectionView.backgroundColor = UIColor.white
                
        return collectionView
    }()


    func setupViews() {
        backgroundColor = UIColor.black
        
        addSubview(itemsCollectionView)
    
     
        itemsCollectionView.delegate = self
    
       
        
        
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
}

}
