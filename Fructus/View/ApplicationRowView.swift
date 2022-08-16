//
//  ApplicationRowView.swift
//  Fructus
//
//  Created by Ashan Anuruddika on 15/08/2022.
//

import SwiftUI

struct ApplicationRowView: View {
    
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkName: String? = nil
    var destination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if(content != nil) {
                    Text(content!)
                } else if(linkName != nil && destination != nil) {
                    Link(linkName!, destination: URL(string: "https://\(destination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
            }
            .frame(height: 30)
        }
    }
}


// MARK: - PREVIEW
struct ApplicationRowView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationRowView(name: "Developer", content: "Ashan Anuruddika")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
