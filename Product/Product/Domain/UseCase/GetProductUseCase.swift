//
//  GetProductUseCase.swift
//  Product
//
//  Created by Gilang Ramadhan on 14/11/22.
//

import Foundation
import CorePackage

public struct GetProductUseCase: UseCaseType {
  public typealias Request = String
  public typealias Response = String

  public init() {}

  public func execute(request: Request) -> Response {
    // Example of business logic, reversing a string!
    return String(request.reversed())
  }
}
