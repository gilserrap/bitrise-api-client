//
// V0BuildParamsEnvironment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0BuildParamsEnvironment: Codable {

    public var isExpand: Bool?
    public var mappedTo: String?
    public var value: String?

    public init(isExpand: Bool? = nil, mappedTo: String? = nil, value: String? = nil) {
        self.isExpand = isExpand
        self.mappedTo = mappedTo
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case isExpand = "is_expand"
        case mappedTo = "mapped_to"
        case value
    }

}

