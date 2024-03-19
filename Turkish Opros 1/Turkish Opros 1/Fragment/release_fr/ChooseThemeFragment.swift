//
//  ChooseThemeFragment.swift
//  Turkish Opros 1
//
//  Created by Mac on 18.03.2024.
//

import Foundation
import SwiftUI

struct ChooseThemeFragment : View {
    var body: some View {
        NavigationView(
            content: {
                VStack(content: {
                    Spacer().frame(height: 70)
                    Text("Bir sonraki anketiniz için bir konu seçin!")
                        .multilineTextAlignment(.center)
                        .font(.title)
                    
                    List(content: {
                        NavigationLink(destination: FinanceQuizFragment(), label: { Label("Finans", systemImage: "wallet.pass.fill") })
                        NavigationLink(destination: BuisnessQuizFragment(), label: { Label("İş Dünyası", systemImage: "doc.questionmark.fill") })
                    })
                })
                .navigationTitle("Choose Theme")
            }
        )
        
    }
}
