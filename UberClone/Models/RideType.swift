//
//  RideType.swift
//  UberClone
//
//  Created by Bence Papp on 2023. 02. 06..
//

import Foundation

enum RideType: Int, CaseIterable, Identifiable {
    case uberX
    case black
    case uberXL

    var id: Int { return rawValue }

    var description: String {
        switch self {
        case .uberX: return "UberX"
        case .black: return "UberBlack"
        case .uberXL: return "UberXL"
        }
    }

    var imageName: String {
        switch self {
        case .uberX: return "uber-x"
        case .black: return "uber-black"
        case .uberXL: return "uber-x"
        }
    }

    var baseFare: Double {
        switch self {
        case .uberX: return 5
        case .black: return 10
        case .uberXL: return 20
        }
    }

    func computePrice(for distanceInMeters: Double) -> Double {
        let distanceInKilometers = distanceInMeters / 1000

        switch self {
        case .uberX: return distanceInKilometers * 1.5 + baseFare
        case .black: return distanceInKilometers * 1.75 + baseFare
        case .uberXL: return distanceInKilometers * 2.0 + baseFare
        }
    }
}
