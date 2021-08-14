//
//  LazyVStack.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 15/08/21.
//

import SwiftUI

struct LazyVStackView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20, pinnedViews: [.sectionHeaders, .sectionFooters]) {
                ForEach(0 ..< 5) { item in
                    Section(
                        header: HeaderView(sectionNumber: item),
                        footer: FooterView()
                    ) {
                        ForEach(0 ..< 50) { item in
                            Text("Hello, World!")
                        }
                    }
                }
            }
        }
    }
}

struct LazyVStack_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackView()
    }
}

struct HeaderView: View {
    var sectionNumber = 0
    var body: some View {
        Text("Header \(sectionNumber)")
            .padding()
            .font(.title)
    }
}

struct FooterView: View {
    var body: some View {
        Text("Footer")
            .padding()
            .font(.title)
            .frame(maxWidth: .infinity)
            .background(Color.gray.opacity(0.5))
    }
}
