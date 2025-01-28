//
//  ShowCursor.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class ShowCursor: ControlSequence {
    public init() {
        super.init(.showCursor, parameters: [])
    }
}
