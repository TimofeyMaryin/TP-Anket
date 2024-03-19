//
//  MainFragment.swift
//  Turkish Opros 1
//
//  Created by Mac on 12.03.2024.
//

import Foundation
import SwiftUI

struct MainFragment : View {
    
    @State var stateSelected: String? = nil
    @State var showAlert: Bool = false
    
    var body: some View {
        NavigationView(
            content: {
                
                
                
                VStack {
                    Image("main-primary-img")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .blur(radius: 10)
                        .overlay(content: {
                            VStack(content: {
                                Spacer()
                                HStack {
                                    Text(NSLocalizedString("app_name", comment: "Error set name"))
                                        .font(.system(size: 50))
                                        .fontWeight(.heavy)
                                        .shadow(radius: 10)
                                    
                                    Image("icon")
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                        .clipShape(Circle())
                                }
                                Spacer()
                            })
                        })
                    
                    Text("Anket: Görüş ve tercih anketi")
                        .font(.title)
                        .bold()
                        .padding([.vertical], 10)
                    
                    Text("Katılın ve geleceği etkileyin! Araştırmamız için bazı önemli soruları yanıtlayın.")
                        .font(.title3)
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white.opacity(0.6))
                    
                    NavigationLink(
                        destination: ChooseThemeFragment(),
                        label: {
                            Text("Start")
                                .frame(width: 250, height: 50)
                                .background(Color.white)
                                .foregroundColor(.black)
                                .bold()
                                .cornerRadius(20)
                                .padding([.horizontal], 20)
                                
                        }
                    )
                    
                    
                    Spacer()
                        .frame(height: 50)
                }
            }
        )
        .navigationBarBackButtonHidden(true)
        .environment(\.colorScheme, .dark)
    }
}


#Preview {
    MainFragment()
}
