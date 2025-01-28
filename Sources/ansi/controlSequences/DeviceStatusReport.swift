//
//  DeviceStatusReport.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class DeviceStatusReport: ControlSequence {
    public init(_ n: Int) {
        super.init(.deviceStatusReport, parameters: [String(n)])
    }
}
