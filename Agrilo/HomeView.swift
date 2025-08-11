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
      OverViewTab(title: "Soil Overview", background: Color.white)
      OverViewTab(title: "Scan Overview", background: Color.gray)
    }
  }
}

struct OverViewTab: View {
  let title: String
  let background: Color
  
  var body: some View {
    Text(title)
      .padding(30)
      .frame(maxWidth: .infinity)
      .background(background)
      .cornerRadius(30)
  }
}

struct TagCards: View{
  let text: String
  var image: String
  
  var body: some View{
    HStack{
      Image(systemName: image)
      Text(text)
    }
    .padding(10)
    .background()
    .cornerRadius(30)
  }
}

struct SoilGraph: View {
  let metric: String
  let title: String
  let height: CGFloat
  
  var body: some View {
    VStack {
      Text(metric)
        .font(.title2.bold())
      Text(title)
      UnevenRoundedRectangle(
        topLeadingRadius: 30,
        bottomLeadingRadius: 6,
        topTrailingRadius: 30,
        style: .continuous
        
      )
        .frame(height: height )
    }
  }
}

struct OverViewContentViewTabs: View {
  var body: some View {
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
      
      // tag cards
      HStack{
        TagCards(text: "3 Days ago", image: "calendar")
        TagCards(text: "Flower Plant", image: "camera.macro")
        Spacer()
      }
      .padding(.horizontal, 5)
      .padding(.bottom)
      
      // stack for bar graph
      // multiple vstack in an Hstack
      HStack (alignment: .bottom){
        SoilGraph(metric: "6.4", title: "PH", height: 30)
        SoilGraph(metric: "40%", title: "Moisture", height: 60)
        SoilGraph(metric: "90%", title: "Fertility", height: 100)
        SoilGraph(metric: "30%", title: "Nutrient", height: 50)
      }
      .padding(.horizontal, 10)
      .padding(.bottom)
      
      // navigation icons
      HStack {
        Rectangle()
          .frame(width: 60, height: 15)
          .cornerRadius(30)
        Rectangle()
          .frame(width: 30, height: 15)
          .cornerRadius(30)
        Rectangle()
          .frame(width: 30, height: 15)
          .cornerRadius(30)
      }
      .padding(.bottom, 5)
    }
    .padding(5)
    .background(Color.yellow)
    .cornerRadius(30)
  }
}

struct HomeView: View {
    var body: some View {
      ZStack{
        Color(red: 0.1607843137254902, green: 0.16862745098039217, blue: 0.1411764705882353)
          .ignoresSafeArea()
        VStack{
          Greeting()
          OverViewTabs()
          OverViewContentViewTabs()

        }
      }
    }
}

#Preview {
    HomeView()
}
