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
          // VStack
          VStack {
            HStack{
              Text("Soil Overview")
                .padding(.horizontal, 5)
                .font(.title)
                .fontWeight(.semibold)
              Spacer()
              Image(systemName: "thermometer.sun")
                .padding(20)
                .foregroundStyle(.black)
                .background(in: Circle())
            }
            
            HStack{
              // another hstack
              HStack{
                Image(systemName: "calendar")
                Text("3 Days ago")
              }
              .padding(10)
              .background()
              .cornerRadius(30)
              HStack{
                Image(systemName: "camera.macro")
                Text("Flower Plant")
              }
              .padding(10)
              .background()
              .cornerRadius(30)
              Spacer()
            }
            .padding(.horizontal, 5)
            
            // stack for bar graph
            // multiple vstack in an Hstack
            HStack (alignment: .bottom){
              VStack {
                Text("6.4")
                Text("PH")
                Rectangle()
                  .frame(height: 30 )
              }
              VStack {
                Text("6.4")
                Text("PH")
                Rectangle()
                  .frame(height: 60 )
              }
              VStack {
                Text("6.4")
                Text("PH")
                Rectangle()
                  .frame(height: 30 )
              }
              VStack {
                Text("6.4")
                Text("PH")
                Rectangle()
                  .frame(height: 30 )
              }
            }
            .padding(.horizontal, 10)
          }
          .padding(5)
          .background(Color.yellow)
          .cornerRadius(30)

        }
      }
    }
}

#Preview {
    HomeView()
}
