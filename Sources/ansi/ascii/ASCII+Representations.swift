//
//  ASCII+Representations.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


public extension ASCII {
    /// Returns the character representation
    var character: Character? {
        guard let scalar = UnicodeScalar(rawValue) else { return nil }
        return Character(scalar)
    }
    
    /// Returns the string representation
    var string: String {
        guard let scalar = UnicodeScalar(rawValue) else { return "" }
        return String(scalar)
    }
    
    /// Returns the decimal representation
    var decimal: String {
        String(rawValue)
    }
    
    /// Returns the hexadecimal representation
    var hex: String {
        String(format: "0x%02X", rawValue)
    }
    
    /// Returns the binary representation
    var binary: String {
        String(rawValue, radix: 2, uppercase: true)
            .padding(toLength: 8, withPad: "0", startingAt: 0)
    }
    
    /// Returns the octal representation
    var octal: String {
        String(format: "0o%03o", rawValue)
    }
    
    /// Returns the HTML entity (decimal)
    var htmlDecimal: String {
        "&#\(rawValue);"
    }
    
    /// Returns the HTML entity (hexadecimal)
    var htmlHex: String {
        String(format: "&#x%X;", rawValue)
    }
    
    var byte: UInt8 {
        UInt8(rawValue)
    }
    
    /// Returns the control character notation (^A, ^B, etc.)
    var controlNotation: String? {
        guard rawValue <= 31 || rawValue == 127 else { return nil }
        if rawValue == 0 { return "^@" }
        if rawValue == 127 { return "^?" }
        return "^" + String(UnicodeScalar(rawValue + 64)!)
    }
    
    /// Returns the escaped representation
    var escaped: String {
        switch self {
        case .null: return "\\0"
        case .bell: return "\\a"
        case .backspace: return "\\b"
        case .horizontalTab: return "\\t"
        case .lineFeed: return "\\n"
        case .verticalTab: return "\\v"
        case .formFeed: return "\\f"
        case .carriageReturn: return "\\r"
        case .doubleQuote: return "\\\""
        case .singleQuote: return "\\'"
        case .backslash: return "\\\\"
        default:
            if rawValue < 32 || rawValue == 127 {
                return String(format: "\\x%02X", rawValue)
            }
            return string
        }
    }
    
    /// Returns the Unicode escape sequence
    var unicodeEscape: String {
        String(format: "\\u{%04X}", rawValue)
    }
}
