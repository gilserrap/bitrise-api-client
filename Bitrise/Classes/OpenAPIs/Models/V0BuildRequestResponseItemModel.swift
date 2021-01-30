//
// V0BuildRequestResponseItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0BuildRequestResponseItemModel: Codable {

    public var buildParams: String?
    public var createdAt: String?
    public var pullRequestUrl: String?
    public var slug: String?

    public init(buildParams: String? = nil, createdAt: String? = nil, pullRequestUrl: String? = nil, slug: String? = nil) {
        self.buildParams = buildParams
        self.createdAt = createdAt
        self.pullRequestUrl = pullRequestUrl
        self.slug = slug
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case buildParams = "build_params"
        case createdAt = "created_at"
        case pullRequestUrl = "pull_request_url"
        case slug
    }

}

