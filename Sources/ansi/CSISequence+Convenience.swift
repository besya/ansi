//
//  CSISequence+Convenience.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


extension CSISequence {
    /// Creates an SGR sequence for setting text color
    /// - Parameter color: Color number (30-37 for normal, 90-97 for bright)
    /// - Returns: Complete ANSI escape sequence
    public static func foregroundColor(_ color: Int) -> String {
        CSISequence.selectGraphicRendition.sequence(color)
    }
    
    /// Creates an SGR sequence for setting background color
    /// - Parameter color: Color number (40-47 for normal, 100-107 for bright)
    /// - Returns: Complete ANSI escape sequence
    public static func backgroundColor(_ color: Int) -> String {
        CSISequence.selectGraphicRendition.sequence(color)
    }
    
    /// Creates an SGR sequence for setting RGB foreground color
    /// - Parameters:
    ///   - r: Red component (0-255)
    ///   - g: Green component (0-255)
    ///   - b: Blue component (0-255)
    /// - Returns: Complete ANSI escape sequence
    public static func foregroundColorRGB(r: Int, g: Int, b: Int) -> String {
        CSISequence.selectGraphicRendition.sequence([SGR.setForegroundColor.rawValue, ColorMode.bit24.rawValue, r, g, b])
    }
    
    /// Creates an SGR sequence for setting RGB background color
    /// - Parameters:
    ///   - r: Red component (0-255)
    ///   - g: Green component (0-255)
    ///   - b: Blue component (0-255)
    /// - Returns: Complete ANSI escape sequence
    public static func backgroundColorRGB(r: Int, g: Int, b: Int) -> String {
        CSISequence.selectGraphicRendition.sequence([SGR.setBackgroundColor.rawValue, ColorMode.bit24.rawValue, r, g, b])
    }
}
