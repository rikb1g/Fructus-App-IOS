//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ricardo Sousa on 13/03/2024.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia",destination: URL(string:"https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                    
                
                
            }//: HSTACK
            
            
           
        }
    }
}

#Preview {
    SourceLinkView()
        .previewLayout(.sizeThatFits)
        .padding()
        
}
