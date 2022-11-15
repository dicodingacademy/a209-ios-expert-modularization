//
//  GetOtherProductUseCase.swift
//  Product
//
//  Created by Gilang Ramadhan on 14/11/22.
//

import Foundation
import Core

public struct GetOtherProductUseCase: UseCaseType {
  public typealias Request = String
  public typealias Response = String

  public init() {}

  public func execute(request: Request) -> Response {
    // Example of business logic, add request with request and uppercase
    return request.uppercased()
  }
}
