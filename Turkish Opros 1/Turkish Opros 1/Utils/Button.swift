//
//  Button.swift
//  Turkish Opros 1
//
//  Created by Mac on 12.03.2024.
//

import Foundation
import SwiftUI


struct PrimaryButton : View {
    var text: String
    var onClick: () -> Void
    
    var body: some View {
        Button(
            action: onClick,
            label: {
                Text(text)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
            }
        )
        .frame(width: 270, height: 50)
        .background(.blue)
        .cornerRadius(20)
    }
}


struct MainFragmentStartTestButton : View {
    var onClick: () -> Void
    
    var body: some View {
        Button(
            action: onClick,
            label: {
                Text(NSLocalizedString("compleate_test_btn_test", comment: "Error"))
                    .foregroundColor(.yellow)
                    .fontWeight(.medium)
            }
        )
        .frame(width: 270, height: 50)
        .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.yellow, lineWidth: 4)
            )
    }
}

struct MainFragmentExitButton : View {
    var onClick: () -> Void
    
    var body: some View {
        Button(
            action: onClick,
            label: {
                Text(NSLocalizedString("exit_from_app_btn_text", comment: "Error"))
                    .foregroundColor(.white)
                    .fontWeight(.medium)
            }
        )
        .frame(width: 270, height: 50)
        .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.white, lineWidth: 4)
            )
    }
}




struct ContentViewPreview : PreviewProvider {
    static var previews: some View {
        MainFragmentStartTestButton(onClick: {})
    }
}


struct StatusButton : View {
    var value: String
    var onClick: () -> Void
    var isChecked: Bool
    
    var body: some View {
        HStack {
            Button(action: onClick) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(isChecked ? .blue : .gray)

            }
            .padding([.leading], 20)
            Spacer()
            Text(value)
                .font(.title3)
                .padding([.trailing], 20)
                .multilineTextAlignment(.trailing)
        }
        
    }
}
