//
//  EscapeSequence.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//

import ASCII

/// Escape Sequence builder.
public enum EscapeSequence {
  /// SS2
  case singleShiftTwo
  /// SS3
  case singleShiftThree
  /// DCS
  case deviceControl(DeviceControlCommand)
  /// CSI
  case controlSequence(ControlSequenceCommand)
  /// ST
  case stringTerminator
  /// OSC
  case operatingSystemCommand(OperatingSystemCommand)
  /// SOS
  case startOfString(StartOfStringCommand)
  /// PM
  case privacyMessage(PrivacyMessageCommand)
  /// APC
  case applicationProgramCommand(ApplicationProgramCommand)
}

extension EscapeSequence: Introduceable {
  var introducerByte: ASCII {
    switch self {
    case .singleShiftTwo: .N
    case .singleShiftThree: .O
    case .deviceControl: .P
    case .controlSequence: .leftBracket
    case .stringTerminator: .forwardSlash
    case .operatingSystemCommand: .rightBracket
    case .startOfString: .X
    case .privacyMessage: .caret
    case .applicationProgramCommand: .underscore
    }
  }

  var introducer: ANSISequence { [.escape, introducerByte] }
}

extension EscapeSequence: Terminatable {
  var terminatorSequence: ANSISequence {
    switch self {
    case .controlSequence(let controlSequence): controlSequence.terminator
    case .operatingSystemCommand, .startOfString, .privacyMessage,
      .applicationProgramCommand,
      .deviceControl:
      Self.stringTerminator.sequence
    default: []
    }
  }

  var terminator: ANSISequence { terminatorSequence }
}

extension EscapeSequence {
  var command: ANSISequence {
    switch self {
    case .deviceControl(let deviceControlCommand):
      deviceControlCommand.sequence
    case .controlSequence(let controlSequence): controlSequence.sequence
    case .operatingSystemCommand(let operatingSystemCommand):
      operatingSystemCommand.sequence
    case .startOfString(let startOfStringCommand):
      startOfStringCommand.sequence
    case .privacyMessage(let privacyMessageCommand):
      privacyMessageCommand.sequence
    case .applicationProgramCommand(let applicationProgramCommand):
      applicationProgramCommand.sequence
    default: []
    }
  }
}

extension EscapeSequence: Sequential {
  public var sequence: ANSISequence { introducer + command + terminator }
}

extension EscapeSequence: Sendable {}
