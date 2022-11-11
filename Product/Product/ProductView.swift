//
//  ProductView.swift
//  Product
//
//  Created by Gilang Ramadhan on 10/11/22.
//

import SwiftUI

public struct ProductView<Destination: View> : View {
  let action: (() -> Destination)

  public init(action: @escaping (() -> Destination)) {
    self.action = action
  }

  public var body: some View {
    VStack {
      Image("Dicoding", bundle: Bundle(identifier: "com.dicoding.academy.Common"))
        .resizable()
        .frame(width: 240, height: 240)
      NavigationLink(destination: self.action()) {
        Text("Open Cart")
      }
    }.navigationBarTitle("Product")
  }
}
