//
//  MainController.swift
//  ios_assignment3
//
//  Created by Исмаил Ибрагим on 2/6/21.
//

import UIKit

class MainController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var control: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var items = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        collectionView.dataSource = self
        tableView.isHidden = false
        collectionView.isHidden = true
        populate()
    }
    
    func populate() {
        items.append(Item(label: "Item1", description: "Description1", price: 9.99, image: UIImage(named: "Item1")!))
        items.append(Item(label: "Item2", description: "Description2", price: 2.99, image: UIImage(named: "Item2")!))
        items.append(Item(label: "Item3", description: "Description3", price: 1.99, image: UIImage(named: "Item1")!))
    }
    
    @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            tableView.isHidden = false
            collectionView.isHidden = true
        } else {
            tableView.isHidden = true
            collectionView.isHidden = false
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func pressCart(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Cart") as! CartController
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension MainController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(items.count)
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomCell
        print(indexPath.row)
        
        cell.imageItem.image = items[indexPath.row].image
        cell.titleText.text = items[indexPath.row].label
        cell.descriptionText.text = items[indexPath.row].description
        cell.price.text = String(format: "%.1f", items[indexPath.row].price)
        print(indexPath.row)
        return cell
    }
    
}

extension MainController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("press")
        let vc = storyboard?.instantiateViewController(withIdentifier: "Item") as! ItemController
        vc.item = items[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension MainController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.imageItem.image = items[indexPath.row].image
        cell.titleText.text = items[indexPath.row].label
        cell.descriptionText.text = items[indexPath.row].description
        cell.price.text = String(format: "%.1f", items[indexPath.row].price)
        print(indexPath.row)
        return cell
    }
    
    
}

extension MainController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Item") as! ItemController
        vc.item = items[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
//
//extension MainController: UITableViewDelegate {
//
//}
