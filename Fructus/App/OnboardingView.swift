//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ashan Anuruddika on 13/08/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                
                FruitCardView(fruit: item)
            }
        }//:Tab View
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
            .previewDevice("iPhone 12 Pro")
    }
}
