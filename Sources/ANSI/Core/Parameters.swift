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
import Algorithms

public struct Parameters {
  let parameters: [ANSISequence]

  public init() {
    self.parameters = []
  }

  public init(_ parameters: [ASCII]) {
    self.parameters = parameters.map(ANSISequence.init)
  }

  public init(_ ascii: ASCII) {
    self.init([ascii])
  }

  public init(_ parameters: [ANSISequence]) {
    self.parameters = parameters
  }

  public init(_ parameters: ANSISequence...) {
    self.init(parameters)
  }

  public init(_ parameters: [Sequential]) {
    self.parameters = parameters.compactMap(\.sequence)
  }

  public init(_ parameters: Sequential...) {
    self.init(parameters)
  }

  public init(_ integers: [Int]) {
    self.parameters = integers.map { ANSISequence($0) }
  }

  public init(_ integers: Int...) {
    self.init(integers)
  }

  public init(_ bytes: [UInt8]) {
    self.parameters = bytes.map(ANSISequence.init)
  }

  public init(_ bytes: UInt8...) {
    self.init(bytes)
  }

  public init(_ strings: [String]) {
    self.parameters = strings.map(ANSISequence.init)
  }

  public init(_ strings: String...) {
    self.init(strings)
  }
}

extension Parameters: Sequential {
  static let delimiter: ASCII = .semicolon

  public var sequence: ANSISequence {
    parameters.filter { $0 != [] }.interspersed(with: [Self.delimiter])
      .reduce([], +)
  }
}
