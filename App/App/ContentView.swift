//
//  ContentView.swift
//  App
//
//  Created by Gilang Ramadhan on 26/10/20.
//

import SwiftUI
import Cart
import Product

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack(spacing: 10) {
        Text("Hello").font(.custom("Quicksand-Bold", size: 20))

        NavigationLink(
          destination: ProductView(presenter: getProductPresenter, action: {
            CartView(action: { ProductDetailView() })
          })
        ) {
          Text("Open Product")
        }

      }.navigationBarTitle("Modular")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

extension ContentView {
  var getProductPresenter: GetProductPresenter<String, String, GetProductUseCase> {
    GetProductPresenter(useCase: GetProductUseCase())
  }
}
