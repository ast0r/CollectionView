//
//  ViewController.swift
//  CollectionView
//
//  Created by Pavel Ivanov on 3/13/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var items: [List] = {
       
        var emptyList = List()
        emptyList.name = "Apple"
        emptyList.imageName = "apple"
        
        var emptyList1 = List()
        emptyList1.name = "Panapple"
        emptyList1.imageName = "panapple"
        
        return [emptyList, emptyList1]
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCollectionCell", for: indexPath) as? CustomCollectionViewCell {
            
            cell.list = items[indexPath.row]
            
            
            return cell
        }
        
        return UICollectionViewCell()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return items.count
    }
}

