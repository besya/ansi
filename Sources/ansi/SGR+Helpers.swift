//
//  SGR+Helpers.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


extension SGR {
    /// Creates a complete SGR sequence
    /// - Returns: Complete ANSI escape sequence
    public var sequence: String {
        CSISequence.selectGraphicRendition.sequence(rawValue)
//        "\u{001B}[\(rawValue)m"
    }
    
    /// Creates a complete SGR sequence for ``Color``
    /// - Parameters:
    ///   - color: ``Color``
    ///   - background: ``Bool``
    /// - Returns: Complete ANSI escape sequence
    public static func setColor(_ color: Color, background: Bool = false) -> String {
        switch color {
            case let .rgb(r, g, b): setRGBColor(r: r, g: g, b: b, background: background)
            case let .bit8(value): set8bitColor(value, background: background)
        }
    }

    /// Creates a complete SGR sequence for RGB colors
    /// - Parameters:
    ///   - r: Red component (0-255)
    ///   - g: Green component (0-255)
    ///   - b: Blue component (0-255)
    /// - Returns: Complete ANSI escape sequence
    public static func setRGBColor(r: Int, g: Int, b: Int, background: Bool = false) -> String {
        let prefix = background ? setBackgroundColor : setForegroundColor
        return CSISequence.selectGraphicRendition.sequence([prefix.rawValue, ColorMode.bit24.rawValue, r, g, b])
//        return "\u{001B}[\(prefix);2;\(r);\(g);\(b)m"
    }
    
    /// Creates a complete SGR sequence for 256-color mode
    /// - Parameter color: Color number (0-255)
    /// - Parameter background: Whether this is a background color
    /// - Returns: Complete ANSI escape sequence
    public static func set8bitColor(_ color: Int, background: Bool = false) -> String {
        let prefix = background ? setBackgroundColor : setForegroundColor
        return CSISequence.selectGraphicRendition.sequence([prefix.rawValue, ColorMode.bit8.rawValue, color])
//        return "\u{001B}[\(prefix);5;\(color)m"
    }
    
    /// Combines multiple SGR parameters
    /// - Parameter others: Additional SGR parameters
    /// - Returns: Complete ANSI escape sequence with multiple parameters
    public func combine(_ others: SGR...) -> String {
        let parameters = ([self] + others).map { $0.rawValue }
        return CSISequence.selectGraphicRendition.sequence(parameters)
//        return "\u{001B}[\(parameters)m"
    }
}
