//
//  ControlSequence.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//

import ASCII

public enum ControlSequence {
  case cursorUp(_ cell: Int = 1)
  case cursorDown(_ cell: Int = 1)
  case cursorForward(_ cell: Int = 1)
  case cursorBack(_ cell: Int = 1)
  case cursorNextLine(_ line: Int = 1)
  case cursorPreviousLine(_ line: Int = 1)
  case cursorHorizontalAbsolute(_ cell: Int = 1)
  case cursorPosition(_ row: Int = 1, _ column: Int = 1)

  case eraseInDisplay(EraseInDisplay = .fromCursorToEndOfScreen)
  case eraseInLine(EraseInLine = .fromCursorToEndOfLine)

  case scrollUp(_ line: Int = 1)
  case scrollDown(_ line: Int = 1)

  case horizontalVerticalPosition(_ row: Int = 1, _ column: Int = 1)

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
    case .cursorUp(let cell),
      .cursorDown(let cell),
      .cursorForward(let cell),
      .cursorBack(let cell),
      .cursorNextLine(let cell),
      .cursorPreviousLine(let cell),
      .cursorHorizontalAbsolute(let cell),
      .scrollUp(let cell),
      .scrollDown(let cell):
      Parameters(cell)
    case .cursorPosition(let row, let column),
      .horizontalVerticalPosition(let row, let column):
      Parameters(row, column)
    case .eraseInDisplay(let eraseInDisplay):
      Parameters(eraseInDisplay.ascii)
    case .eraseInLine(let eraseInLine):
      Parameters(eraseInLine.ascii)
    case .selectGraphicRendition(let selectGraphicRenditions):
      Parameters(selectGraphicRenditions)
    }
  }
}

extension ControlSequence: Sequential {
  public var sequence: ANSISequence { parameters.sequence }
}

extension ControlSequence: Sendable {}
