//
//  EnableAlternativeBuffer.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class EnableAlternativeBuffer: ControlSequence {
    public init() {
        super.init(.enableAlternativeBuffer, parameters: [])
    }
}
