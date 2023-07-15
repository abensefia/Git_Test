//
//  ImanView.swift
//  Git_Test
//
//  Created by Iman Ashraf 
//

import SwiftUI

struct ImanView: View {
    let colors: [Color] = [.purple, .green, .blue, .white]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Iman Ashraf")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.purple)
                    .mask(RoundedRectangle(cornerRadius: 10))
                
                Image("Iman")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 2000, height: 330)
                
                Text("I will study to be a doctor!")
                    .font(.title)
                    .italic()
                    .border(Color.white, width: 2)
                    .padding()
                    .rotationEffect(.degrees(-15))
                
                Button(action: {
                    // Open email composer with your email address
                    guard let url = URL(string: "mailto:s196734@ese.gov.ae") else { return }
                    UIApplication.shared.open(url)
                }) {
                    Text("Contact Me")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}

struct ImanView_Previews: PreviewProvider {
    static var previews: some View {
        ImanView()
    }
}
