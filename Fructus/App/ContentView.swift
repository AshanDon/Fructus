//
//  ContentView.swift
//  Fructus
//
//  Created by Ashan Anuruddika on 10/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action: {
                    isShowingSettings = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                }) //: Button
                
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


// MARK: - PRIVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
