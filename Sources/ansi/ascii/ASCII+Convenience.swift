//
//  ASCII+Convenience.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


public extension ASCII {
    /// Whether this is a control character (0-31, 127)
    var isControl: Bool {
        rawValue <= 31 || rawValue == 127
    }
    
    /// Whether this is a printable character (32-126)
    var isPrintable: Bool {
        rawValue >= 32 && rawValue <= 126
    }
    
    /// Whether this is a digit (0-9)
    var isDigit: Bool {
        rawValue >= ASCII.digit0.rawValue && rawValue <= ASCII.digit9.rawValue
    }
    
    /// Whether this is an uppercase letter (A-Z)
    var isUppercase: Bool {
        rawValue >= ASCII.A.rawValue && rawValue <= ASCII.Z.rawValue
    }
    
    /// Whether this is a lowercase letter (a-z)
    var isLowercase: Bool {
        rawValue >= ASCII.a.rawValue && rawValue <= ASCII.z.rawValue
    }
    
    /// Whether this is a letter (A-Z, a-z)
    var isLetter: Bool {
        isUppercase || isLowercase
    }
    
    /// Whether this is alphanumeric (0-9, A-Z, a-z)
    var isAlphanumeric: Bool {
        isDigit || isLetter
    }
    
    /// Whether this is whitespace (space, tab, newline, etc.)
    var isWhitespace: Bool {
        switch self {
        case .space, .horizontalTab, .lineFeed, .verticalTab, .formFeed, .carriageReturn:
            return true
        default:
            return false
        }
    }
}
