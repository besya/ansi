//
//  CSISequence+Helpers.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


extension CSISequence {
    /// Creates a complete ANSI sequence with a single parameter
    /// - Returns: Complete ANSI escape sequence
    public func sequence() -> String {
        switch self {
        case .eraseInDisplay, .eraseInLine, .selectGraphicRendition: sequence(0)
        case .horizontalVerticalPosition, .cursorPosition: sequence(1, 1)
        default: sequence(1)
        }
    }

    /// Creates a complete ANSI sequence with a single parameter
    /// - Parameter n: The parameter value
    /// - Returns: Complete ANSI escape sequence
    public func sequence(_ n: Int) -> String {
        "\(ControlCode.escape.string)[\(n)\(rawValue)"
    }
    
    /// Creates a complete ANSI sequence with multiple parameters
    /// - Parameter params: Array of parameter values
    /// - Returns: Complete ANSI escape sequence
    public func sequence(_ params: [Int]) -> String {
        "\(ControlCode.escape.string)[\(params.map(String.init).joined(separator: ";"))\(rawValue)"
    }
    
    /// Creates a complete ANSI sequence with multiple parameters
    /// - Parameter params: Array of parameter values
    /// - Returns: Complete ANSI escape sequence
    public func sequence(_ params: Int...) -> String {
        sequence(params)
    }
    
    /// Creates a complete ANSI sequence for cursor positioning
    /// - Parameters:
    ///   - row: Row number (default is `1`)
    ///   - column: Column number (default is `1`)
    /// - Returns: Complete ANSI escape sequence
    public func position(row: Int = 1, column: Int = 1) -> String {
        guard self == .cursorPosition || self == .horizontalVerticalPosition else {
            return sequence()
        }
        return "\(ControlCode.escape.string)[\(row);\(column)\(rawValue)"
    }
}
