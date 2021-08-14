//
//  ZStackView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 15/08/21.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // Back
            Color.pink.ignoresSafeArea()
            
            // Content
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            // Floating button
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "plus.circle")
                    .font(.system(size: 60))
                    .foregroundColor(.white)
            })
            .padding()
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
            .preferredColorScheme(.dark)
    }
}
