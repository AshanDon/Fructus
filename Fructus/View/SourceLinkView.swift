//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ashan Anuruddika on 14/08/2022.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link(destination: URL(string: "https://wikipedia.com")!) {
                    Text("Wikipedia")
                    Image(systemName: "arrow.up.right.square")
                }
            }
            .font(.footnote)
        }
    }
}



// MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
