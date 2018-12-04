//
//  ViewController.swift
//  collectionViewExample
//
//  Created by Mac on 04/12/18.
//  Copyright © 2018 tops. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var items = [[String:Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let item1 = ["Name":"bhadresh","Image":#imageLiteral(resourceName: "img1")] as [String : Any]
        let item2 = ["Name":"reena","Image":#imageLiteral(resourceName: "img2")] as [String : Any]
        let item3 = ["Name":"anjali","Image":#imageLiteral(resourceName: "img3")] as [String : Any]

        
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item1)
        items.append(item2)
        items.append(item3)
        items.append(item1)
        items.append(item2)
        items.append(item3)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UICollectionViewDataSource, UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return items.count
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! ItemCell
        
        
        let item = items[indexPath.row]
        
        cell.imgView.image = item["Image"] as? UIImage
        cell.lblName.text = item["Name"] as? String
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("selected item is \(items[indexPath.row])")
        
    }
    
    
    
    
}


class ItemCell: UICollectionViewCell {
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
}

