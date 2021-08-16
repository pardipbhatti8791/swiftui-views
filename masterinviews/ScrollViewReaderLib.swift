//
//  ScrollViewReaderLib.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 16/08/21.
//

import SwiftUI

struct ScrollViewReaderLib: View {
    var body: some View {
        VStack {
            ScrollViewReader { scrollViewProxy in
                Button("Scroll To Bottom") {
                    withAnimation {
                        scrollViewProxy.scrollTo(25, anchor: .center)
                    }
                    
                    
                }
                ScrollView {
                    ForEach(0 ..< 50) { item in
//                        Text("Hello, World!")
//                            .id(item)
                        Image(systemName: "\(item).circle")
                            .font(.largeTitle)
                            .id(item)
                    }
                }
            }
        }
    }
}

struct ScrollViewReaderLib_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderLib()
    }
}
