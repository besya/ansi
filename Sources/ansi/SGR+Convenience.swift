//
//  SGR+Convenience.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


extension SGR {
//    /// Reset all attributes to default
//    public static var reset: String { SGR.reset.sequence }
//    
//    /// Bold text
//    public static var bold: String { SGR.bold.sequence }
//    
//    /// Underlined text
//    public static var underline: String { SGR.underline.sequence }
//    
//    /// Italic text
//    public static var italic: String { SGR.italic.sequence }
//    
    /// Create a foreground color sequence
    /// - Parameter color: RGB color components
    /// - Returns: ANSI escape sequence for RGB foreground color
    public static func foreground(r: Int, g: Int, b: Int) -> String {
        setRGBColor(r: r, g: g, b: b)
    }
    
    /// Create a background color sequence
    /// - Parameter color: RGB color components
    /// - Returns: ANSI escape sequence for RGB background color
    public static func background(r: Int, g: Int, b: Int) -> String {
        setRGBColor(r: r, g: g, b: b, background: true)
    }
}
