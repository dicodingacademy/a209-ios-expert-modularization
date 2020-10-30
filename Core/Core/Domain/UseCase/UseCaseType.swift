//
//  UseCaseType.swift
//  Core
//
//  Created by Gilang Ramadhan on 30/10/20.
//

import Foundation

public protocol UseCaseType {
  associatedtype Request
  associatedtype Response

  func execute(request: Request) -> Response
}
