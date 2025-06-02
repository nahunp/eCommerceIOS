
import SwiftUI

struct ProductView: View {
    @StateObject private var viewModel = ProductViewModel()
    @State private var searchText = ""
    
    var body: some View {
     NavigationStack {
         VStack {
             Text("Serach by id \(searchText)")
                 .navigationTitle(Text("Products"))
             if let product = viewModel.product {
                 Text("\(product.productName)")
                 Text("\(product.productPrice)")
                 
             }else {
                 Text("No product found")
             }
          }
        }
     .searchable(text: $searchText)
     .onChange(of: searchText) {
         if let _ = Int(searchText), !searchText.isEmpty{
             viewModel.fetchProductById(id: searchText)
         }
     }
    }
}

#Preview {
    ProductView()
}
