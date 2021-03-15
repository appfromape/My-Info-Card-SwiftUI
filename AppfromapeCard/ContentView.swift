//
//  ContentView.swift
//  AppfromapeCard
//
//  Created by 程式猿 on 2021/3/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 0.60))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("appfromape")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160.0, height: 160.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().strokeBorder(Color.white, lineWidth: 5.0, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    )
                Text("Appfromape")
                    .font(Font.custom("Ranchers-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("Python Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 20))
                Divider()
                InfoView(iconName: "phone.fill", showInfo: "+886912345678", iconColor: .green)
                InfoView(iconName: "envelope.open.fill", showInfo: "appfromape@gmail.com", iconColor: .red)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let iconName : String
    let showInfo : String
    let iconColor : Color
    var body: some View {
        (Text(Image(systemName: iconName)).foregroundColor(iconColor) + Text(" ") + Text(showInfo))
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(.center)
            .padding()
            .frame(width: 250, height: 30)
            .background(RoundedRectangle(cornerRadius: 50).fill(Color.white).shadow(radius: 3))
    }
}
