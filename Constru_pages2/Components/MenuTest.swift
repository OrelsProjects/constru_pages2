//
//  MenuTest.swift
//  Constru_pages2
//
//  Created by Orel Zilberman on 28/02/2022.
//

import SwiftUI

struct MenuTest: View {
    var body: some View {
        Text("Options")
            .contextMenu {
                Button(action: {
                    // change country setting
                }) {
                    Text("Choose Country")
                }
                
                Button(action: {
                    // enable geolocation
                }) {
                    Text("Detect Location")
                }
            }
        //        GroupBox {
        //            DisclosureGroup("Menu 1") {
        //                Text("Item 1")
        //                Text("Item 2")
        //                Text("Item 3")
        //            }
        //        }
    }
    //        Menu {
    //            Button {
    //
    //            } label: {
    //                Text("Linear")
    //                Image(systemName: "arrow.down.right.circle")
    //            }
    //            Button {
    //
    //            } label: {
    //                Text("Radial")
    //                Image(systemName: "arrow.up.and.down.circle")
    //            }
    //        } label: {
    //             Text("Style")
    //             Image(systemName: "tag.circle")
    //        }
    //    }
}

struct MenuTest_Previews: PreviewProvider {
    static var previews: some View {
        MenuTest()
    }
}
