//
//  DisableAlternativeBuffer.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class DisableAlternativeBuffer: ControlSequence {
    public init() {
        super.init(.disableAlternativeBuffer, parameters: [])
    }
}
