//
//  ContentView.swift
//  Constru_pages2
//
//  Created by Orel Zilberman on 28/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    let dropdownItems = [DropdownItemTest(id: "a", value: "a"), DropdownItemTest(id: "b", value: "b"), DropdownItemTest(id: "c", value: "c"), DropdownItemTest(id: "d", value: "d")]
    @State private var text = ""
    
    var body: some View {
        VStack{
//            Dropdown(items: dropdownItems)
//                .padding(60)
//                .frame(width: 400, height: 400, alignment: .trailing)
            MenuTest()
            NumberOutOfNumberInput(text: $text, title: "Title", leftNumber: 10, rightNumber: 20)
            MenuTest()
        }
        
    }
}

struct DropdownItemTest: DropdownItem{    var id: String
    var value: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
