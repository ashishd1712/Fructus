//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Ashish Dutt on 18/08/22.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - properties
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - body
    var body: some View {
        TabView{
            ForEach(fruits[0..<5]){item in
                FruitCardView(fruit: item)
                
            }
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        
    }
}
// MARK: - preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
} 
