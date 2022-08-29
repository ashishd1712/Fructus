//
//  SettingRowView.swift
//  Fructus
//
//  Created by Ashish Dutt on 29/08/22.
//

import SwiftUI

struct SettingRowView: View {
    
    var label: String
    var content: String? = nil
    var linkDestination: String? = nil
    var linkLabel: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            
            HStack{
                Text(label)
                    .foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                }
                else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel! , destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
                
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(label: "Developer", content: "Ashish")
                .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        }
    }
}
