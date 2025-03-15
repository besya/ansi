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

public enum NamedColor {
  case `default`
  case black, red, green, yellow, blue, magenta, cyan, white
  case brightBlack, brightRed, brightGreen, brightYellow, brightBlue,
    brightMagenta, brightCyan, brightWhite
}

extension NamedColor {
  var foregroundCode: Int {
    switch self {
    case .black: 30
    case .red: 31
    case .green: 32
    case .yellow: 33
    case .blue: 34
    case .magenta: 35
    case .cyan: 36
    case .white: 37

    case .default: 39

    case .brightBlack: 90
    case .brightRed: 91
    case .brightGreen: 92
    case .brightYellow: 93
    case .brightBlue: 94
    case .brightMagenta: 95
    case .brightCyan: 96
    case .brightWhite: 97
    }
  }

  public var foreground: ANSISequence { .init(foregroundCode) }
}

extension NamedColor {
  var backgroundCode: Int {
    switch self {
    case .black: 40
    case .red: 41
    case .green: 42
    case .yellow: 43
    case .blue: 44
    case .magenta: 45
    case .cyan: 46
    case .white: 47

    case .default: 49

    case .brightBlack: 100
    case .brightRed: 101
    case .brightGreen: 102
    case .brightYellow: 103
    case .brightBlue: 104
    case .brightMagenta: 105
    case .brightCyan: 106
    case .brightWhite: 107
    }
  }

  public var background: ANSISequence { .init(backgroundCode) }
}

extension NamedColor {
  public var underline: ANSISequence {
    switch self {
    case .default: 59
    default: []
    }
  }
}

extension NamedColor: Sendable {}
