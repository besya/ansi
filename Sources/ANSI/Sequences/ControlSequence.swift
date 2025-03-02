//
//  ControlSequence.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//

import ASCII

public enum ControlSequence {
    case cursorUp(_ n: Int = 1)
    case cursorDown(_ n: Int = 1)
    case cursorForward(_ n: Int = 1)
    case cursorBack(_ n: Int = 1)
    case cursorNextLine(_ n: Int = 1)
    case cursorPreviousLine(_ n: Int = 1)
    case cursorHorizontalAbsolute(_ n: Int = 1)
    case cursorPosition(_ row: Int = 1, _ column: Int = 1)

    case eraseInDisplay(EraseInDisplay = .fromCursorToEndOfScreen)
    case eraseInLine(EraseInLine = .fromCursorToEndOfLine)

    case scrollUp(_ n: Int = 1)
    case scrollDown(_ n: Int = 1)

    case horizontalVerticalPosition(_ n: Int = 1, _ m: Int = 1)

    case selectGraphicRendition([SelectGraphicRendition])
}

extension ControlSequence: Terminatable {
    var terminatorByte: ASCII {
        switch self {
        case .cursorUp: .A
        case .cursorDown: .B
        case .cursorForward: .C
        case .cursorBack: .D
        case .cursorNextLine: .E
        case .cursorPreviousLine: .F
        case .cursorHorizontalAbsolute: .G
        case .cursorPosition: .H
        case .eraseInDisplay: .J
        case .eraseInLine: .K
        case .scrollUp: .S
        case .scrollDown: .T
        case .horizontalVerticalPosition: .f
        case .selectGraphicRendition: .m
        }
    }
    var terminator: ANSISequence { [terminatorByte] }
}

extension ControlSequence: Parameterizable {
    var parameters: Parameters {
        switch self {
        case .cursorUp(let n),
            .cursorDown(let n),
            .cursorForward(let n),
            .cursorBack(let n),
            .cursorNextLine(let n),
            .cursorPreviousLine(let n),
            .cursorHorizontalAbsolute(let n),
            .scrollUp(let n),
            .scrollDown(let n):
            Parameters(n)
        case let .cursorPosition(row, column),
            let .horizontalVerticalPosition(row, column):
            Parameters(row, column)
        case let .eraseInDisplay(eraseInDisplay):
            Parameters(eraseInDisplay.ascii)
        case let .eraseInLine(eraseInLine):
            Parameters(eraseInLine.ascii)
        case let .selectGraphicRendition(selectGraphicRenditions):
            Parameters(selectGraphicRenditions)
        }
    }
}

extension ControlSequence: Sequential {
    public var sequence: ANSISequence { parameters.sequence }
}

extension ControlSequence: Sendable {}
