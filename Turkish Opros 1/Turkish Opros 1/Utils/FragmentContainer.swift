//
//  FragmentContainer.swift
//  Turkish Opros 1
//
//  Created by Mac on 12.03.2024.
//

import Foundation
import SwiftUI

struct FragmentContainer<Content: View> : View {
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
            self.content = content
    }

    
    var body: some View {
        VStack(
            content: {
                Spacer()
                    .frame(height: 0)
                Image("icon")
                    .resizable()
                    .frame(width: 150, height: 150)
                Text(NSLocalizedString("app_name", comment: "App Name"))
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                    .frame(height: 10)
                content()
                
                Spacer()
                    
                    
            }
        )
        .frame(width: 1000)
        .preferredColorScheme(.dark)
        .background(backgroundColor)
    }
}


#Preview {
    FragmentContainer(content: {
        Spacer()
        Text("hello wotld")
    })
}
    
