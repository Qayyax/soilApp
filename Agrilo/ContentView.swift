//
//  ContentView.swift
//  Agrilo
//
//  Created by Qayyax on 8/10/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    MainTabView()
      .padding(.bottom, 10)
      .ignoresSafeArea()
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

struct MainTabView: View {
  @State var selectedTab = 0
  var body: some View {
    
    ZStack(alignment: .bottom) {
      TabView(selection: $selectedTab) {
        HomeView()
          .tag(0)
        TemperatureView()
          .tag(1)
        ScannerView()
          .tag(2)
        LibraryView()
          .tag(3)
        SettingsView()
          .tag(4)
      }
      
      ZStack{
        HStack{
          ForEach((TabbedItems.allCases), id: \.self){ item in
            Button{
              selectedTab = item.rawValue
            } label: {
              CustomTabItem(imageName: item.iconName , isActive: (selectedTab == item.rawValue))
            }
          }
        }
        .padding(5)
      }
      .background(.gray)
      .cornerRadius(25)
      .padding(.horizontal, 20)
    }
  }
}

extension MainTabView {
  func CustomTabItem(imageName: String, isActive: Bool) -> some View {
    HStack {
      Image(systemName: imageName)
        .resizable()
        .renderingMode(.template)
        .foregroundColor(isActive ? .yellow : .white)
        .frame(width: 20, height: 20)
    }
    .frame(width: 60, height: 50)
    .background(.black)
    .cornerRadius(25)
  }
}
