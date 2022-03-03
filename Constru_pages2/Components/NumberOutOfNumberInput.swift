//
//  InputView.swift
//  Constru_Pages
//
//  Created by Orel Zilberman on 27/02/2022.
//

import SwiftUI

struct NumberOutOfNumberInput: View {
    @Binding var text: String
    var title: String
    var leftNumber: Int
    var rightNumber: Int
    var cornerRadius: CGFloat = 4
    var onSubmit: () -> Void = {  }
    
    private let height: CGFloat = 47
    private let iconWidth: CGFloat = 18
    private let iconHeight: CGFloat = 18
    
    var body: some View {
        HStack{
            TextField(
                "",
                text: $text
            )
                .textFieldStyle(DefaultTextFieldStyle())
                .lineLimit(1)
                .onSubmit {
                    onSubmit()
                }
                .font(.system(size: 24, design: .default))
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .overlay(alignment: .center){
                    HStack(alignment: .center){
                        Text(String(rightNumber))
                        Text("/")
                            .opacity(0.5)
                        Text(String(leftNumber))
                    }
                }
        }.padding(20)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.ui.shadowOpposite))
            .padding(20)
            .shadow(color: .ui.shadow.opacity(0.2), radius: 5, x: 5, y: 10)
    }
}


struct Input_Previews: PreviewProvider {
    @State static private var text = ""
    
    static var previews: some View {
        NumberOutOfNumberInput(text: $text, title: "Title", leftNumber: 4, rightNumber: 5){
            print("Submitted")
        }.preferredColorScheme(.light)
    }
}

