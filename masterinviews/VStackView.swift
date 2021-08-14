//
//  ContentView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 14/08/21.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20.0) {
            HStack {
                Text("Hello, world!")
                Spacer()
            }
            
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
            Text("Placeholder")
        }
        .frame(maxWidth: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
    }
}
