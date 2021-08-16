//
//  ButtonView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 16/08/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack(spacing: 40.0) {
            Button("Tap Me") {
                
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                VStack {
                    Text("Ok")
                    Image(systemName: "wifi")
                        .foregroundColor(.red)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(radius: 10))
                
            })
            .accentColor(.purple)
        }
        .font(.largeTitle)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
