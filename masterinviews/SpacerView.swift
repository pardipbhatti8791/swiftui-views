//
//  SpacerView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 15/08/21.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Hello, World!")
            Spacer(minLength: 0)
            Rectangle()
            Spacer()
        }
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
