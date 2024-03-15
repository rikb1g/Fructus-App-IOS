//
//  StartButtonView.swift
//  Fructus
//
//  Created by Ricardo Sousa on 23/02/2024.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action : {
            isOnboarding = false
        }){
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        } //: BUTTON
        .accentColor(Color.white)
        .background(
            Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
}

// MARK: - PREVIEW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
