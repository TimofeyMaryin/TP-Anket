//
//  FinishFragment.swift
//  Turkish Opros 1
//
//  Created by Mac on 18.03.2024.
//

import Foundation
import SwiftUI


struct FinishFragment : View {
    
    var progress: Int
    
    let height: CGFloat = 10
    @State private var showAlert = false

    
    var body: some View {
        NavigationView(content: {
            VStack(alignment: .leading,content: {
                Spacer()
                Text("Sonucunuz: \(progress)%")
                    .font(.title)
                    .bold()
                
                Spacer().frame(height: height)
                
                // Spacer().frame(height: 100)
                Text("Testten keyif aldınız mı?")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer().frame(height: height)
                
                // Spacer().frame(height: 30)
                Text("Düğmeye basmak sizi otomatik olarak ana ekrana götürecektir. ")
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.5))
                
                Spacer().frame(height: height)
                
                HStack(content: {
                    Button("Evet") {
                        showAlert = true
                    }
                    Button("Hayır") {
                        showAlert = true
                    }
                    
                })
                .buttonStyle(.bordered)
                Spacer()
            })
            
            .navigationTitle("Tebrikler!!!")
            .alert("Değerlendirme için teşekkürler!", isPresented: $showAlert, actions: {Button("OK", role: .cancel) { }})
        })
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
        
    }
}
