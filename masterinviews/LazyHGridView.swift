//
//  LazyHGridView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 15/08/21.
//

import SwiftUI

struct LazyHGridView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                let gridItem = GridItem(.flexible(minimum: 20, maximum: 80), spacing: 20, alignment: .bottom)
                
                LazyHGrid(rows: [gridItem], alignment: .top, spacing: 16, pinnedViews: .sectionHeaders) {
                    Section(header: LazyHGridHeader()) {
                        ForEach(0 ..< 50) { item in
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 80)
//                                .padding(.horizontal)
    //                        Image(systemName: "\(item).circle")
    //                            .frame(width: 50)
                        }
                    }
                }
            }
            
            Rectangle()
        }
    }
}

struct LazyHGridView_Previews: PreviewProvider {
    static var previews: some View {
        LazyHGridView()
    }
}

struct LazyHGridHeader: View {
    var body: some View {
        Text("1")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
            .padding(.horizontal)
    }
}
