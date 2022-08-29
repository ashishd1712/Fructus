//
//  StartButton.swift
//  Fructus
//
//  Created by Ashish Dutt on 18/08/22.
//

import SwiftUI

struct StartButton: View {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - body
    var body: some View {
        Button(action: {
            withAnimation(.easeOut(duration: 0.5)){
                isOnboarding=false
            }
        }){
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
    }
}
// MARK: - preview
struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
