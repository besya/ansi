//
//  ParametersTests.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 28.02.25.
//

import ANSI
import ASCII
import Testing

@Test
func oneParameter() {
  #expect(Parameters(4).sequence == [.digit4])
}

@Test
func multipleParameters() {
  #expect(
    Parameters(1, 2, 3).sequence == [
      .digit1, .semicolon, .digit2, .semicolon, .digit3,
    ])
}
