//
//  PrivacyMessageCommand.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

public enum PrivacyMessageCommand {}

extension PrivacyMessageCommand: Sequential {
    public var sequence: ANSISequence { [] }
}

extension PrivacyMessageCommand: Sendable {}
