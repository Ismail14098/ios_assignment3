//
//  CollectionViewCell.swift
//  ios_assignment3
//
//  Created by Исмаил Ибрагим on 2/7/21.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var addToCart: UIButton!
    
    @IBAction func pressAdd(_ sender: Any) {
        let item = Item(label: titleText.text!, description: descriptionText.text!, price: Double(price.text!)!, image: imageItem.image!)
        SharedArray.array.append(item)
    }
}
