//
//  EscapeSequenceType.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


public enum EscapeSequenceType: Character {
    case singleShiftTwo = "N"
    case singleShiftThree = "O"
    case deviceControlString = "P"
    case controlSequenceIntroducer = "["
    case stringTerminator = "\\"
    case operatingSystemCommand = "]"
    case startOfString = "X"
    case privacyMessage = "^"
    case applicationProgramCommand = "_"
}

extension EscapeSequenceType {
    // Get the ASCII enum case for this control sequence
    var ascii: ASCII {
        guard let asciiValue = rawValue.asciiValue else {
            fatalError("Invalid ASCII character")
        }
        guard let ascii = ASCII(rawValue: Int(asciiValue)) else {
            fatalError("Invalid ASCII value")
        }
        return ascii
    }
    
    var byte: UInt8 { ascii.byte }
    
    /// Returns the string representation
    var string: String { String(rawValue) }

}
