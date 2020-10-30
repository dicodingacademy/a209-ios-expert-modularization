//
//  GetProductUseCase.swift
//  Product
//
//  Created by Gilang Ramadhan on 30/10/20.
//

import Foundation
import Core

public struct GetProductUseCase: UseCaseType {
  public typealias Request = String
  public typealias Response = String

  public init() {}

  public func execute(request: Request) -> Response {
    // Example of business logic, reversing a string!
    return String(request.reversed())
  }
}
