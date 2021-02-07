//
//  CartController.swift
//  ios_assignment3
//
//  Created by Исмаил Ибрагим on 2/7/21.
//

import UIKit

class CartController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
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

}

extension CartController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count \(SharedArray.array.count)")
        return SharedArray.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CartCell", for: indexPath) as! CartCell
        print(indexPath.row)
        let item = SharedArray.array[indexPath.row]
        cell.imageItem.image = item.image
        cell.price.text = String(item.price)
        cell.descriptionText.text = item.description
        cell.titleText.text = item.label
        return cell
    }
    
}
