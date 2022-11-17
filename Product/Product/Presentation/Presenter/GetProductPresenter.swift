//
//  GetProductPresenter.swift
//  Core
//
//  Created by Gilang Ramadhan on 14/11/22.
//

import Foundation
import CorePackage

public struct GetProductPresenter<
  Request,
  Response,
  UseCase: UseCaseType
> where UseCase.Request == Request, UseCase.Response == Response {

  private let _useCase: UseCase

  public init(useCase: UseCase) {
    _useCase = useCase
  }

  func execute(request: Request) -> Response {
    return _useCase.execute(request: request)
  }
}
