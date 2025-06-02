//
//  product.swift
//  eCommerceIOS
//
//  Created by CincinnatiAi Dallas on 5/29/25.
//

import Foundation
struct Product: Codable, Identifiable {
    var id: Int
    var productName: String
    var productPrice: Double
}
