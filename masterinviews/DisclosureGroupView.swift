//
//  DisclosureGroupView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 16/08/21.
//

import SwiftUI

struct DisclosureGroupView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            DisclosureGroup("Group") {
                DisclosureGroup("Group") {
                    DisclosureGroup("Group") {
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                    }
                    .padding()
                    .background(Color.pink.opacity(0.5))
                }
                .padding()
                .background(Color.pink.opacity(0.5))
            }
            .padding()
            .background(Color.pink.opacity(0.5))
            
            ScrollView {
                ForEach(0 ..< 50) { item in
                    DisclosureGroup(
                        content: {
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(height: 200)
                        },
                        label: {
                            Image(systemName: "moon.fill")
                            Text("Label")
                            
                    }).padding()
                }
            }
        }
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
