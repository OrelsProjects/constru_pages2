//
//  Dropdown.swift
//  Constru_Pages
//
//  Created by Orel Zilberman on 27/02/2022.
//

import SwiftUI

struct Dropdown: View {
    
    var items: [DropdownItem] = []
    var onItemSelected: (DropdownItem) -> Void = { _ in }
    var height: CGFloat = 40
    var width: CGFloat = 120
    var placeholder: String = "Select from list"
    @State private var collapse = false
    
    
    var body: some View {
        VStack(alignment: .leading){
            Button {
                collapse.toggle()
            } label: {
                Text("Select from list")
                    .frame(width: width, height: height, alignment: .center)
                    .foregroundColor(.gray)
                    .padding(5)
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(.black.opacity(0.7))
                    .frame(width: 20, height: 20, alignment: .center)
                    .labelStyle(.iconOnly)
                    .imageScale(.large)
                    .rotationEffect(.degrees(collapse ? -90 : 0))
                    .padding(14)
                    .animation(.spring(), value: collapse)
            }
                .buttonStyle(.plain)
                .border(.black, width: 1)
            if collapse {
                ScrollView {
                    VStack{
                        ForEach(items, id: \.id){ item in
                            Text("\(item.value)")
                        }
                    }
                }.frame(width: width, height: 4*height, alignment: .center)
                
            }
            Spacer()
        }
        
    }
    
    func onClick(){
        collapse = !collapse
    }
}

struct Dropdown_Previews: PreviewProvider {
    
    struct DropdownItemPreview: DropdownItem{
        var id: String
        var value: String
    }
    
    static let dropdownItems = [DropdownItemPreview(id: "a", value: "a"), DropdownItemPreview(id: "b", value: "b"), DropdownItemPreview(id: "c", value: "c"), DropdownItemPreview(id: "d", value: "d")]
    
    static var previews: some View {
        Dropdown(items: dropdownItems){ item in
            print("item")
        }.preferredColorScheme(.light)
    }
}
