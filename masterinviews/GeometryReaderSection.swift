//
//  GeometryReaderSection.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 15/08/21.
//

import SwiftUI

struct GeometryReaderSection: View {
    var body: some View {
        List(0 ..< 50) { item in
            GeometryReader { gp in
                Text("Y: \(Int(gp.frame(in: .global).minY))")
                    .foregroundColor(Int(gp.frame(in: .global).minY) < 300 ? .green : .primary)
            }
        }
//        GeometryReader { geometryProxy in
//            VStack {
//                Text("Hello, \(geometryProxy.size.width)")
//                Text("Hello, \(geometryProxy.size.height)")
//                Rectangle()
//                    .frame(width: geometryProxy.size.width/2, height: geometryProxy.size.height/2)
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//        }.ignoresSafeArea()
    }
}

struct GeometryReaderSection_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderSection()
    }
}
