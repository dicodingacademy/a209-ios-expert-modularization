//
//  AppApp.swift
//  App
//
//  Created by Gilang Ramadhan on 26/10/20.
//

import SwiftUI

@main
struct AppApp: App {
  init() {
    UIFont.loadFonts()
  }
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}

extension UIFont {
  private static func registerFont(withName name: String, fileExtension: String) {
    let frameworkBundle = Bundle(identifier: "com.dicoding.academy.Common")!
    let pathForResourceString = frameworkBundle.path(forResource: name, ofType: fileExtension)!
    let fontData = NSData(contentsOfFile: pathForResourceString)
    let dataProvider = CGDataProvider(data: fontData!)
    let fontRef = CGFont(dataProvider!)
    var errorRef: Unmanaged<CFError>? = nil

    if (CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false) {
      print("Error registering font")
    }
  }

  public static func loadFonts() {
    registerFont(withName: "OpenSansCondensed-Bold", fileExtension: "ttf")
    registerFont(withName: "OpenSansCondensed-Light", fileExtension: "ttf")
    registerFont(withName: "OpenSansCondensed-LightItalic", fileExtension: "ttf")
  }
}
