//
//  AsmaaView.swift
//  Git_Test
//
//  Created by Asmaa Ashraf 
//

import SwiftUI

struct AsmaaView: View {
    let colors: [Color] = [.red, .pink, .white]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text("Asmaa Ashraf")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(.purple)
                    .mask(RoundedRectangle(cornerRadius: 10))
                
                Image("Asmaa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 2000, height: 330)
                
                Text("Do you like my cat?")
                    .font(.title)
                    .italic()
                    .border(Color.white, width: 2)
                    .padding()
                    .rotationEffect(.degrees(-15))
                
                Button(action: {
                    // Open email composer with your email address
                    guard let url = URL(string: "mailto:s319942@ese.gov.ae") else { return }
                    UIApplication.shared.open(url)
                }) {
                    Text("Tell me here!")
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

struct AsmaaaView_Previews: PreviewProvider {
    static var previews: some View {
        AsmaaaView()
    }
}
