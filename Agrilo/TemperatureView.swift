//
//  TemperatureView.swift
//  Agrilo
//
//  Created by Qayyax on 8/10/25.
//

import SwiftUI

struct TestHistory {
  var title: String
  var duration: String
}


struct TestHistoryCard: View {
  let title: String
  let duration: String
  
  var body: some View {
    HStack (alignment: .center){
      VStack(alignment: .leading) {
        Text(title)
          .foregroundStyle(.white)
          .fontWeight(.bold)
          .padding(.bottom, 4)
        HStack (alignment: .center){
          Image(systemName: "calendar")
          Text(duration)
        }
        .foregroundStyle(.gray)
      }
      Spacer()
      // image
      ImageIcon(imageName: "chevron.right", foregroundColor: .white, backgroundColor: Color(red: 0.23, green: 0.23, blue: 0.23), padding: 30 )
    }
    .padding(.leading, 15)
    .background(Color(red: 0.3176, green: 0.3216, blue: 0.3059))
    .cornerRadius(30)
  }
}

struct TemperatureView: View {
  
  let testHistoryData: [TestHistory] = [
    TestHistory(title: "Rose Flower plant", duration: "3 Days ago"),
    TestHistory(title: "Lavender plant", duration: "5 Days ago"),
    TestHistory(title: "Sunflower plant", duration: "1 week ago"),
  ]
  
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
          .padding(.bottom)
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
          VStack {
            ForEach(testHistoryData, id: \.title) { history in
              TestHistoryCard(title: history.title, duration: history.duration)
            }
          }
          
          // Button to start a new test
          Button("Start a New Test") {
            print("Start a new test")
          }
          .foregroundStyle(.black)
          .padding(20)
          .frame(maxWidth: .infinity)
          .background(Color.yellow)
          .cornerRadius(20)
          .padding(.horizontal, 5)
          
          
        }
      }
    }
}

#Preview {
    TemperatureView()
}
