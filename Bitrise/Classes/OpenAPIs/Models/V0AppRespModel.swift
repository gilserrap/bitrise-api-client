//
// V0AppRespModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0AppRespModel: Codable {

    public var slug: String?
    public var status: String?

    public init(slug: String? = nil, status: String? = nil) {
        self.slug = slug
        self.status = status
    }

}
