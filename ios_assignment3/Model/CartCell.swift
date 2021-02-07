//
//  CartCell.swift
//  ios_assignment3
//
//  Created by Исмаил Ибрагим on 2/7/21.
//

import UIKit

class CartCell: UITableViewCell {

    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var price: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}

//extension CartCell: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return SharedArray.array.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartCell
//        let item = SharedArray.array[indexPath.row]
//        cell.titleText.text = item.label
//        cell.descriptionText.text = item.description
//        cell.price.text = String(item.price)
//        cell.imageItem = UIImageView(image: item.image)
//        return cell
//    }
//
//
//}
