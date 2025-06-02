//
//  ProductService.swift
//  eCommerceIOS
//
//  Created by CincinnatiAi Dallas on 5/29/25.
//

import Foundation
import Alamofire

protocol ProductServiceProtocol {
    func getProductById(id: String, completion: @escaping (Product?) -> Void)
    func getProducts(completion: @escaping ([Product]) -> Void)
}
