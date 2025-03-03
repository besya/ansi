//
//  Sequential.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//

import ASCII

public protocol Sequential: Inspectable {
  var sequence: ANSISequence { get }
}

extension Sequential {
  public func inspectList(as type: InspectType) -> [String] {
    sequence.sequence.map { $0.inspect(type) }
  }
}
