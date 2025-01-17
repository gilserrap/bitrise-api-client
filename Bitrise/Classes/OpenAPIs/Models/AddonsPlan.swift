//
// AddonsPlan.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct AddonsPlan: Codable {

    public var features: [AddonsFeature]?
    public var id: String?
    public var name: String?
    public var price: Int?

    public init(features: [AddonsFeature]? = nil, id: String? = nil, name: String? = nil, price: Int? = nil) {
        self.features = features
        self.id = id
        self.name = name
        self.price = price
    }

}

