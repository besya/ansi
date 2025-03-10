//
//  EraseInDisplay.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

import ASCII

public enum EraseInDisplay {
  case fromCursorToEndOfScreen
  case fromCursorToBeginningOfScreen
  case entireScreen
  case entireScreenAndDeleteAllLines
}

extension EraseInDisplay: Sendable {}

extension EraseInDisplay {
  var ascii: ASCII {
    switch self {
    case .fromCursorToEndOfScreen: .digit0
    case .fromCursorToBeginningOfScreen: .digit1
    case .entireScreen: .digit2
    case .entireScreenAndDeleteAllLines: .digit3
    }
  }
}
