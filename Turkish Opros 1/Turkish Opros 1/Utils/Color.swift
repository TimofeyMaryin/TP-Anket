//
//  Color.swift
//  Turkish Opros 1
//
//  Created by Mac on 12.03.2024.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.currentIndex = scanner.string.startIndex
        
        var rgbValue: UInt64 = 0

        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}



var backgroundColor = Color(hex: "#262A29")
var white = Color(hex: "#FFFFFF")
var dark = Color(hex: "#262A29")
var darkGrey = Color(hex: "#7C7C7C")
var yellow = Color(hex: "#FFE800")
