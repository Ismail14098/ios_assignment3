//
//  CustomCell.swift
//  ios_assignment3
//
//  Created by Исмаил Ибрагим on 2/6/21.
//

import UIKit

class CustomCell: UITableViewCell {

    
    
    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var addToCart: UIButton!
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func pressAdd(_ sender: Any) {
        let item = Item(label: titleText.text!, description: descriptionText.text!, price: Double(price.text!)!, image: imageItem.image!)
        SharedArray.array.append(item)
    }
}
