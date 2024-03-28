//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Lara Santos on 26/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    let hikes = [
        Hike(name: "Photo of us", photo: "me-and-gabby", miles: 6.1),
        Hike(name: "A girl hiking", photo: "hike", miles: 5)
    ]
    
    var body: some View {
        List(hikes) { hike in
            HStack {
                Image(hike.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))  //the order of where you chose the view modifiers matters. Showing this before the actual frame
                    .frame(width: 100, height: 100)
                Text(hike.name)
            }
        }
        .padding()
    }
}

#Preview { // preview macro to present the view created above
    ContentView()
}

// differences between Struct and Class
//struct MyStruct {
//    var value: Int
//}
//
//class MyClass {
//    var value: Int
//
//    init(value: Int) {
//        self.value = value
//    }
//}
//
//var structInstance1 = MyStruct(value: 5)
//var structInstance2 = structInstance1
//structInstance2.value = 10
//print(structInstance1.value) // Output: 5
//
//var classInstance1 = MyClass(value: 5)
//var classInstance2 = classInstance1
//classInstance2.value = 10
//print(classInstance1.value) // Output: 10

