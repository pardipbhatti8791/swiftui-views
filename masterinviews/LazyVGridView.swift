//
//  LazyVGridView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 16/08/21.
//

import SwiftUI

struct LazyVGridView: View {
    var body: some View {
        
        ScrollView {
            let gridItem = GridItem(.flexible(minimum: 50, maximum: 200), spacing: 24)
            LazyVGrid(columns: [gridItem, gridItem], alignment: .center, spacing: 24) {
                ForEach(0 ..< 50) { item in
//                    RoundedRectangle(cornerRadius: 20)
                    Image(systemName: "\(item).circle")
                        .font(.largeTitle)
                        .frame(height: 50)
                }
                
            }
        }
    }
}

struct LazyVGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridView()
    }
}
