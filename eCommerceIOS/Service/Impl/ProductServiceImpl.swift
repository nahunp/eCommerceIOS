import Foundation
import Alamofire

class ProductService: ProductServiceProtocol {
    private let baseURL = "http://localhost:8080/api/products"

    func getProducts(completion: @escaping ([Product]) -> Void) {
        let url = baseURL
        AF.request(url).responseDecodable(of: [Product].self) { response in
            switch response.result {
            case .success(let products):
                completion(products)
            case .failure(let error):
                print("Error: \(error)")
                completion([])
            }
        }
    }
    
    func getProductById(id: String, completion: @escaping (Product?) -> Void) {
        let url = "\(baseURL)/\(id)"
        AF.request(url).responseDecodable(of: Product.self) { response in
            switch response.result {
            case .success(let product):
                completion(product)
            case .failure(let error):
                print("Error: \(error)")
                completion(nil)
            }
        }
    }
}
