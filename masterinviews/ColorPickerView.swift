//
//  ColorPickerView.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 16/08/21.
//

import SwiftUI

struct ColorPickerView: View {
    @State var selectedColor = Color.green
    var body: some View {
        VStack {
            Text("Hello, World!")
            ColorPicker("Pick a new color", selection: $selectedColor, supportsOpacity: false)
                .padding()
            RoundedRectangle(cornerRadius: 25.0)
                .fill(selectedColor)
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
