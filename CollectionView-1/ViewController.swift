//
//  ViewController.swift
//  CollectionView-1
//
//  Created by Henry Aguinaga on 2018-11-22.
//  Copyright © 2018 Henry Aguinaga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var colors : [UIColor] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colors = [.black, .white, .red, .blue, .green]
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colors.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        var color = colors[indexPath.row]
        cell.contentView.backgroundColor = color

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.view.backgroundColor = colors[indexPath.row]
    }
   


}

