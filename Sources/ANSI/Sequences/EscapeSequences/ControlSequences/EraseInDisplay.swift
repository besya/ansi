//===----------------------------------------------------------------------===//
//
// This source file is part of the ANSI open source project
//
// Copyright (c) 2025 Ihar Biaspalau
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.md for the list of ANSI project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

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
