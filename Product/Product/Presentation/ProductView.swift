//
//  ProductView.swift
//  Product
//
//  Created by Gilang Ramadhan on 10/11/22.
//

import SwiftUI
import Common
import CorePackage

public struct ProductView<
  Destination: View,
  UseCase: UseCaseType
>: View where UseCase.Request == String, UseCase.Response == String {

  let action: (() -> Destination)

  let presenter: GetProductPresenter<String, String, UseCase>

  public init(
    presenter: GetProductPresenter<String, String, UseCase>,
    action: @escaping (() -> Destination)
  ) {
    self.action = action
    self.presenter = presenter
  }

  public var body: some View {
    VStack {
      Image("Dicoding", bundle: Bundle(identifier: "com.dicoding.academy.Common"))
        .resizable()
        .frame(width: 240, height: 240)

      Text("Hi, i'm using Quicksand as Font")
        .font(.custom("Quicksand-Regular", size: 20))

      Text("Hi, i'm using framework's Sunny Spells as Font")
        .font(.custom("SunnySpells-Regular", size: 20))

      Text("hi, im changing my name from Dicoding to \(self.presenter.execute(request: "Dicoding"))")

      Spacer()

      NavigationLink(destination: self.action()) {
        Text("Open Cart")
      }
    }.navigationBarTitle("product_title".localized(identifier: "com.dicoding.academy.Product"))
  }
}
