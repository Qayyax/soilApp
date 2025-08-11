//
//  HomeView.swift
//  Agrilo
//
//  Created by Qayyax on 8/10/25.
//

import SwiftUI

struct Greeting: View {
  var body: some View {
    HStack{
      VStack(alignment: .leading){
        Text("Hello David")
          .foregroundStyle(.gray)
        Text("Good Morning!")
          .font(.title)
          .foregroundStyle(.white)
          .fontWeight(.semibold)
      }
      Spacer()
      Image(systemName: "bell.badge")
        .padding()
        .foregroundStyle(.yellow)
        .background(in: Circle())
        .backgroundStyle(.gray)
    }
    .padding()
  }
}

struct OverViewTabs: View {
  var body: some View {
    HStack{
      Text("Soil Overview")
        .padding(30)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(30)
      Text("Scan Overview")
        .padding(30)
        .frame(maxWidth: .infinity)
        .background(Color.gray)
        .foregroundStyle(.white)
        .cornerRadius(30)
    }
  }
}

struct HomeView: View {
    var body: some View {
      ZStack{
        Color(red: 0.1607843137254902, green: 0.16862745098039217, blue: 0.1411764705882353)
          .ignoresSafeArea()
        VStack{
          // Top page
          Greeting()
          // HStack
          OverViewTabs()
          
        }
      }
    }
}

#Preview {
    HomeView()
}
