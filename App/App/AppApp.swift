//
//  AppApp.swift
//  App
//
//  Created by Gilang Ramadhan on 10/11/22.
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
    var errorRef: Unmanaged<CFError>?
    if CTFontManagerRegisterGraphicsFont(fontRef!, &errorRef) == false {
      print("Error registering font")
    }
  }

  public static func loadFonts() {
    registerFont(withName: "SunnyspellsRegular-MV9ze", fileExtension: "otf")

    // Returns a list of the user's preferred languages.
    // Maybe more than (or none of) your app supports!
    print(Locale.preferredLanguages)

    // a subset of this bundle's localizations, re-ordered into the preferred order
    // for this process's current execution environment; the main bundle's preferred localizations
    // indicate the language (of text) the user is most likely seeing in the UI
    print(Bundle.main.preferredLocalizations)

    // The current running app language
    print(Bundle.main.preferredLocalizations.first)

    // list of language names this bundle appears to be localized to
    print(Bundle.main.localizations)

    print(Locale.current.language.languageCode!.identifier)

    print(Locale.preferredLanguages.first!)

    print("product_title".localized(identifier: "com.dicoding.academy.Product"))

  }
}

