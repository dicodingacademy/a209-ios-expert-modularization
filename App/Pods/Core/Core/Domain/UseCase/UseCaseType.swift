//
//  UseCaseType.swift
//  Core
//
//  Created by Fandy Gotama on 13/10/20.
//

public protocol UseCaseType {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request) -> Response
}
