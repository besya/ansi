//
//  ApplicationProgramCommand.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

public enum ApplicationProgramCommand {}

extension ApplicationProgramCommand: Sequential {
  public var sequence: ANSISequence { [] }
}

extension ApplicationProgramCommand: Sendable {}
