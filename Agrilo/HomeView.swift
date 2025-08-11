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

struct HomeView: View {
    var body: some View {
      ZStack{
        Color(red: 0.1607843137254902, green: 0.16862745098039217, blue: 0.1411764705882353)
          .ignoresSafeArea()
        VStack{
          // everything
          // hstack here for goodmorening
          // Top page
          Greeting()
        }
      }
    }
}

#Preview {
    HomeView()
}
