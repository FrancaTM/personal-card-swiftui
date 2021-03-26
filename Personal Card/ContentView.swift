//
//  ContentView.swift
//  Personal Card
//
//  Created by Tulio Marcos Franca on 26/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.17, green: 0.24, blue: 0.31, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("tulio")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5)).padding(.all)
                Text("Túlio M. França")
                    .font(Font.custom("Ubuntu-Regular", size: 34))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(Font.custom("Ubuntu-Regular", size: 24))
                    .foregroundColor(.white)
                
                Divider()
                
                InfoView(text: "+55 41 99566-7914", imageName: "phone.fill")
                InfoView(text: "francatm@outlook.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


