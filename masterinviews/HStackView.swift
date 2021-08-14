//
//  HStackView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 15/08/21.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("Hello, World! Hello, World!")
                .font(.largeTitle)
            Text("Hello, World!")
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray)
                        .shadow(radius: 10)
        )
        
        
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackView()
    }
}
