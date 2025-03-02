//
//  EraseInLine.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

import ASCII

public enum EraseInLine {
    case fromCursorToEndOfLine
    case fromCursorToBeginningOfLine
    case entireLine
}

extension EraseInLine: Sendable {}

extension EraseInLine {
    var ascii: ASCII {
        switch self {
        case .fromCursorToEndOfLine: .digit0
        case .fromCursorToBeginningOfLine: .digit1
        case .entireLine: .digit2
        }
    }
}
