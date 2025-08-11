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
