//
// V0OrganizationOwner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0OrganizationOwner: Codable {

    public var email: String?
    public var slug: String?
    public var username: String?

    public init(email: String? = nil, slug: String? = nil, username: String? = nil) {
        self.email = email
        self.slug = slug
        self.username = username
    }

}

