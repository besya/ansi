//
//  SelectGraphicRendition.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

import ANSI
import Testing

@Suite("SelectGraphicRendition")
struct SelectGraphicRenditionSuite {
  typealias SGR = SelectGraphicRendition

  @Test func reset() async throws { #expect(SGR.reset.sequence == 0) }

  @Test func bold() async throws { #expect(SGR.bold.sequence == 1) }

  @Test func dim() async throws { #expect(SGR.dim.sequence == 2) }

  @Test func italic() async throws { #expect(SGR.italic.sequence == 3) }

  @Test func underline() async throws { #expect(SGR.underline.sequence == 4) }

  @Test func slowBlink() async throws { #expect(SGR.slowBlink.sequence == 5) }

  @Test func rapidBlink() async throws {
    #expect(SGR.rapidBlink.sequence == 6)
  }

  @Test func invert() async throws { #expect(SGR.invert.sequence == 7) }

  @Test func hide() async throws { #expect(SGR.hide.sequence == 8) }

  @Test func strike() async throws { #expect(SGR.strike.sequence == 9) }

  @Test func defaultFont() async throws {
    #expect(SGR.font(.default).sequence == 10)
  }

  @Test(
    arguments: [
      Font.default: 10,
      .alternative1: 11,
      .alternative2: 12,
      .alternative3: 13,
      .alternative4: 14,
      .alternative5: 15,
      .alternative6: 16,
      .alternative7: 17,
      .alternative8: 18,
      .alternative9: 19,
      .gothic: 20,
    ]
  )
  func font(_ font: Font, _ value: Int) async throws {
    #expect(SGR.font(font).sequence == ANSISequence(value))
  }

}
