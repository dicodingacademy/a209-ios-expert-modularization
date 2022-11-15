//
//  UseCaseType.swift
//  Core
//
//  Created by Gilang Ramadhan on 14/11/22.
//

import Foundation

public protocol UseCaseType {
  associatedtype Request
  associatedtype Response

  func execute(request: Request) -> Response
}
