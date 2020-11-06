//
//  ProductView.swift
//  Product
//
//  Created by Gilang Ramadhan on 28/10/20.
//

import SwiftUI
import Common
import Core

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
    VStack(spacing: 20) {
      Text("hi, im changing my name from Fandy to \(self.presenter.execute(request: "Fandy"))")
      NavigationLink(destination: self.action()) {
        Text("Open Cart")
      }
    }.navigationBarTitle("product_title".localized(identifier: "com.dicoding.academy.Product"))
  }
}
