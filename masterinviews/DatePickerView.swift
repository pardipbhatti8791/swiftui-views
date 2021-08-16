//
//  DatePicker.swift
//  masterinviews
//
//  Created by Pardip Bhatti on 16/08/21.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            DatePicker(selection: $date, label: { Text("Date") })
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()
            DatePicker(selection: $date,  displayedComponents: .hourAndMinute, label: { Text("Date") })
            
            DatePicker(selection: $date,  displayedComponents: .date, label: { Text("Date") })
                .datePickerStyle(WheelDatePickerStyle())
                .background(RoundedRectangle(cornerRadius: 20).fill(Color.green).opacity(0.5))
                .padding(25)
                .labelsHidden()
            
        }
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
