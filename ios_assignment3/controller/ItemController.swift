//
//  ItemController.swift
//  ios_assignment3
//
//  Created by Исмаил Ибрагим on 2/7/21.
//

import UIKit

class ItemController: UIViewController {
    
    var item : Item?

    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var descriptionText: UILabel!
    @IBOutlet weak var buyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageItem.image = item?.image
        titleText.text = item?.label
        price.text = String(item!.price)
        descriptionText.text = item?.description
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func pressBuy(_ sender: Any) {
        SharedArray.array.append(item!)
        navigationController?.popViewController(animated: true)
    }
}
