//
//  LazyHStackView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 15/08/21.
//

import SwiftUI

struct LazyHStackView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .center, spacing: 10, pinnedViews: .sectionHeaders) {
                Section(header: HeaderViewLHS()) {
                    ForEach(0 ..< 50) { item in
                        Text("Hello, World!")
                    }
                }
            }
        }
        .frame(height: 100)
    }
}

struct LazyHStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHStackView()
    }
}

struct HeaderViewLHS: View {
    var body: some View {
        Text("Header")
            .font(.largeTitle)
            .background(Color.gray)
    }
}
