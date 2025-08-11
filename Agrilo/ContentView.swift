//
//  ContentView.swift
//  Agrilo
//
//  Created by Qayyax on 8/10/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
      TabView{
        // home page
        Tab("", systemImage: "house") {
          HomeView()
        }
        
        Tab("", systemImage: "thermometer.sun") {
          TemperatureView()
        }
        
        Tab("", systemImage: "barcode.viewfinder") {
          ScannerView()
        }
        
        Tab("", systemImage: "books.vertical") {
          LibraryView()
        }

        Tab("", systemImage: "gearshape") {
          SettingsView()
        }
    }
  }
}
  
#Preview {
    ContentView()
}

enum TabbedItems: Int, CaseIterable{
  case home = 0
  case temperature
  case scanner
  case library
  case settings
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .temperature:
            return "Temperature"
        case .scanner:
            return "Scanner"
        case .library:
            return "Library"
        case .settings:
          return "Settings"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "house"
        case .temperature:
            return "thermometer.sun"
        case .scanner:
            return "barcode.viewfinder"
        case .library:
            return "books.vertical"
        case .settings:
          return "gearshape"
        }
    }
}
