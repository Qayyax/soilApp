//
//  HomeView.swift
//  Agrilo
//
//  Created by Qayyax on 8/10/25.
//

import SwiftUI

struct ImageIcon: View {
  let imageName: String
  let foregroundColor: Color
  let backgroundColor: Color
  var padding: CGFloat?
  
  
  var body: some View {
    Image(systemName: imageName)
      .padding(padding ?? 16)
      .foregroundStyle(foregroundColor)
      .background(in: Circle())
      .backgroundStyle(backgroundColor)
  }
}

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
      ImageIcon(imageName: "bell.badge", foregroundColor: Color.yellow, backgroundColor: Color.gray )
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

struct SoilGraphBar {
  let metric: String
  let title: String
  let heigth: CGFloat
}

struct OverViewContentViewTabs: View {
  let soilGraphs: [SoilGraphBar] = [
    SoilGraphBar(metric: "6.4", title: "PH", heigth: 30),
    SoilGraphBar(metric: "40%", title: "Moisture", heigth: 60),
    SoilGraphBar(metric: "90%", title: "Fertility", heigth: 100),
    SoilGraphBar(metric: "30%", title: "Nutrients", heigth: 50)
  ]
  
  var body: some View {
    VStack {
      HStack{
        Text("Soil Overview")
          .padding(.horizontal, 5)
          .font(.title)
          .fontWeight(.semibold)
        Spacer()
        ImageIcon(imageName: "thermometer.sun", foregroundColor: Color.black, backgroundColor: Color.white, padding: 20)
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
        ForEach(soilGraphs, id: \.self.title) { soilGraph in
          SoilGraph(metric: soilGraph.metric, title: soilGraph.title, height: soilGraph.heigth)
        }
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

struct SoilTestHighlight: View {
  let title: String
  let subtitle: String
  let icon: String
  
  var body: some View {
    VStack(alignment: .leading) {
      // for the icon
      HStack {
        Spacer()
        ImageIcon(imageName: icon, foregroundColor: Color.black, backgroundColor: Color.gray, padding: 20)
      }
      // for the text
      VStack(alignment: .leading) {
        Text(title)
          .font(.title)
        Text(subtitle)
      }
    }
    .padding(4)
    .padding(.leading, 15)
    .padding(.bottom, 15)
    .background(Color.white)
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
          
          // Soil test highlight
          HStack {
            SoilTestHighlight(title: "100", subtitle: "Total test", icon: "testtube.2")
            SoilTestHighlight(title: "100", subtitle: "Total test", icon: "testtube.2")
          }

        }
      }
    }
}

#Preview {
    HomeView()
}
