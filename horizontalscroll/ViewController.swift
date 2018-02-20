//
//  ViewController.swift
//  horizontalscroll
//
//  Created by Bari Abdul on 2/19/18.
//  Copyright © 2018 Bari Abdul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imageArray = [UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png"), UIImage(named: "Small-mario.png")]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coll", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = imageArray[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

