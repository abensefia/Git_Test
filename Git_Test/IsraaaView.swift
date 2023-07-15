//
//  SwiftUIView.swift
//  Git_Test
//
//  Created by Israa Ashraf 
//

import SwiftUI

struct IsraaView: View {
    let colors: [Color] = [.red, .orange, .yellow, .white]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Israa Ashraf")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.orange)
                    .mask(RoundedRectangle(cornerRadius: 10))
                
                Image("Israa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 2000, height: 330)
                
                Text("You can call me IA")
                    .font(.title)
                    .italic()
                    .border(Color.white, width: 2)
                    .padding()
                    .rotationEffect(.degrees(-15))
                
                Button(action: {
                    // Open email composer with your email address
                    guard let url = URL(string: "mailto:s666691@ese.gov.ae") else { return }
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

struct IsraaaView_Previews: PreviewProvider {
    static var previews: some View {
        IsraaView()
    }
}
