//
//  CustomCollectionViewCell.swift
//  CollectionView
//
//  Created by Pavel Ivanov on 3/13/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var listImage: UIImageView!
    @IBOutlet weak var listLabel: UILabel!
    
    var list: List?{
        didSet{
            listLabel.text = list?.name
            
            if let image = list?.imageName{
                listImage.image = UIImage(named: image)
            }
        }
    }
}
