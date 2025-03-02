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
    typealias sgr = SelectGraphicRendition
    
    @Test func reset() async throws { #expect(sgr.reset.sequence == 0) }
    
    @Test func bold() async throws { #expect(sgr.bold.sequence == 1) }
    
    @Test func dim() async throws { #expect(sgr.dim.sequence == 2) }
    
    @Test func italic() async throws { #expect(sgr.italic.sequence == 3) }
    
    @Test func underline() async throws { #expect(sgr.underline.sequence == 4) }
    
    @Test func slowBlink() async throws { #expect(sgr.slowBlink.sequence == 5) }

    @Test func rapidBlink() async throws { #expect(sgr.rapidBlink.sequence == 6) }

    @Test func invert() async throws { #expect(sgr.invert.sequence == 7) }

    @Test func hide() async throws { #expect(sgr.hide.sequence == 8) }

    @Test func strike() async throws { #expect(sgr.strike.sequence == 9) }

    @Test func defaultFont() async throws {
        #expect(sgr.font(.default).sequence == 10)
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
            .gothic: 20
        ]
    )
    func font(_ font: Font, _ value: Int) async throws { #expect(sgr.font(font).sequence == ANSISequence(value)) }

}
