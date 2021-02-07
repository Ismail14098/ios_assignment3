//
//  Class.swift
//  ios_assignment3
//
//  Created by Исмаил Ибрагим on 2/7/21.
//

import Foundation
import UIKit

struct Item {
    var label: String
    var description: String
    var price: Double
    var image: UIImage
}

class SharedArray {
    static var array = [Item]()
}
