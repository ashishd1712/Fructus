//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ashish Dutt on 29/08/22.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var titleLabel: String
    var imageLabel: String
    
    var body: some View {
        HStack {
            Text(titleLabel.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: imageLabel)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(titleLabel: "Frutus", imageLabel: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

