//
//  StartOfStringCommand.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

public enum StartOfStringCommand {}

extension StartOfStringCommand: Sequential {
    public var sequence: ANSISequence { [] }
}

extension StartOfStringCommand: Sendable {}
