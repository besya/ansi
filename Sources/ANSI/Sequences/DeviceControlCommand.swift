//
//  DeviceControlCommand.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

public enum DeviceControlCommand {}

extension DeviceControlCommand: Sequential {
  public var sequence: ANSISequence { [] }
}

extension DeviceControlCommand: Sendable {}
