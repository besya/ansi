//
//  SelectGraphicRendition.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//

public enum SelectGraphicRendition {
  case reset
  case bold
  case dim
  case italic
  case underline
  case slowBlink
  case rapidBlink
  case invert
  case hide
  case strike
  case font(Font)
  case noBold
  case normal
  case noItalic
  case noUnderline
  case noBlink
  case proportionalSpacing
  case noInvert
  case noHide
  case noStrike
  case foregroundColor(Color)
  case backgroundColor(Color)
  case noProportionalSpacing
  case frame
  case encircle
  case overline
  case noFrameNoEncircle
  case noOverline
  case underlineColor(Color)
  case ideogramUnderline
  case ideogramDoubleUnderline
  case ideogramOverline
  case ideogramDoubleOverline
  case ideogramStressMarking
  case noIdeogram
  case superscript
  case `subscript`
  case noSuperscriptNoSubscript
}

extension SelectGraphicRendition: Sequential {
  var command: ANSISequence {
    switch self {
    case .reset: 0
    case .bold: 1
    case .dim: 2
    case .italic: 3
    case .underline: 4
    case .slowBlink: 5
    case .rapidBlink: 6
    case .invert: 7
    case .hide: 8
    case .strike: 9
    case .font(let font): font.sequence
    case .noBold: 21
    case .normal: 22
    case .noItalic: 23
    case .noUnderline: 24
    case .noBlink: 25
    case .proportionalSpacing: 26
    case .noInvert: 27
    case .noHide: 28
    case .noStrike: 29
    case .foregroundColor(let color):
      switch color {
      case .named(let namedColor): namedColor.foreground
      case .bit8, .rgb: 38
      }
    case .backgroundColor(let color):
      switch color {
      case .named(let namedColor): namedColor.background
      case .bit8, .rgb: 48
      }
    case .noProportionalSpacing: 50
    case .frame: 51
    case .encircle: 52
    case .overline: 53
    case .noFrameNoEncircle: 54
    case .noOverline: 55
    case .underlineColor(let color):
      switch color {
      case .named(let namedColor): namedColor.underline
      case .bit8, .rgb: 58
      }
    case .ideogramUnderline: 60
    case .ideogramDoubleUnderline: 61
    case .ideogramOverline: 62
    case .ideogramDoubleOverline: 63
    case .ideogramStressMarking: 64
    case .noIdeogram: 65
    case .superscript: 73
    case .subscript: 74
    case .noSuperscriptNoSubscript: 75
    }
  }

  public var sequence: ANSISequence {
    switch self {
    case .foregroundColor(let color):
      Parameters(command, color.sequence).sequence
    default: command
    }
  }
}

extension SelectGraphicRendition: Sendable {}
