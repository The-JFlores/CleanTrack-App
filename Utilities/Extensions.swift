//
//  Extensions.swift
//  CleanTrack
//
//  Created by Jose Flores on 2025-10-07.
//
import SwiftUI

extension Color {
    // Initialize Color using a hex string
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        switch hex.count {
        case 6: // RRGGBB
            (r, g, b) = ((int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (0, 0, 0)
        }
        self.init(
            red: Double(r)/255,
            green: Double(g)/255,
            blue: Double(b)/255
        )
    }
    
    // Base colors for CleanTrack
    static let tealMain = Color(hex: "#34C3B8")   // Main teal
    static let tealDark = Color(hex: "#347E92")   // Dark teal
    static let tealLight = Color(hex: "#41A2A2")  // New lighter teal
}
