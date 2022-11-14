//
//  String+Localization.swift
//  Common
//
//  Created by Gilang Ramadhan on 13/11/22.
//

import Foundation

extension String {
  public func localized(identifier: String) -> String {
    let bundle = Bundle(identifier: identifier) ?? .main
    return bundle.localizedString(forKey: self, value: nil, table: nil)
  }
}
