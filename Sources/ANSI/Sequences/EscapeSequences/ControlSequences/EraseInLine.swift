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
