//
//  TemperatureView.swift
//  Agrilo
//
//  Created by Qayyax on 8/10/25.
//

import SwiftUI

struct TemperatureView: View {
    var body: some View {
      ZStack{
        Color(red: 0.1607843137254902, green: 0.16862745098039217, blue: 0.1411764705882353)
          .ignoresSafeArea()
        VStack{
          // Greeting
          HStack {
            VStack (alignment: .leading){
              Text("Soil Test")
                .foregroundStyle(.white)
                .font(.title)
                .fontWeight(.semibold)
              
              Text("Test history and insights")
                .foregroundStyle(.gray)
            }
            Spacer()
          }
          .padding(.leading, 20)
          // Soil test highlight
          HStack (alignment: .top){
            SoilTestHighlight(title: "100", subtitle: "Total test", icon: "testtube.2", iconColor: .green)
            SoilTestHighlight(title: "85%", subtitle: "Average satisfied result", icon: "face.smiling", iconColor: .orange)
          }
          .padding(5)
          
          //Hstack for test history
          HStack{
            Text("Test History")
              .font(.title3.bold())
            Spacer()
            Button("See all") {
              print("see all")
            }
          }
          .foregroundStyle(.white)
          .padding(.horizontal )
          
          // Vstack for options
          // hstack of teh component
//          vstack instad
          HStack {
            VStack(alignment: .leading) {
              Text("Rose Flower Plant")
                .foregroundStyle(.white)
                .fontWeight(.bold)
              HStack (alignment: .center){
                Image(systemName: "calendar")
                Text("3 Days ago")
              }
              .foregroundStyle(.gray)
            }
            Spacer()
            // image
            ImageIcon(imageName: "chevron.right", foregroundColor: .white, backgroundColor: Color.gray, padding: 20 )
          }
        }
      }
    }
}

#Preview {
    TemperatureView()
}
