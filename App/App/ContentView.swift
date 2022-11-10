//
//  ContentView.swift
//  App
//
//  Created by Gilang Ramadhan on 10/11/22.
//

import SwiftUI
import Common
import Cart
import Product

struct ContentView: View {
  var body: some View {
    NavigationStack {
      VStack {
        NavigationLink(
          destination: ProductView(action: {
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
