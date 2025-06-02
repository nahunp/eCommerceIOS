
import Foundation
class ProductViewModel: ObservableObject {
    @Published var product : Product?
    private let productService = ProductService()
    
    func fetchProductById(id: String) {
        productService.getProductById(id: id){
            [weak self] product in DispatchQueue.main.async {
                self?.product = product
            }
        }
    }
    func fetchProducts() {
        productService.getProducts{
            [weak self] products in DispatchQueue.main.async {
                self?.product = products.first
            }
        }
    }
}
