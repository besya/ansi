//
//  OperatingSystemCommand.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

public enum OperatingSystemCommand {}

extension OperatingSystemCommand: Sequential {
    public var sequence: ANSISequence { [] }
}

extension OperatingSystemCommand: Sendable {}
