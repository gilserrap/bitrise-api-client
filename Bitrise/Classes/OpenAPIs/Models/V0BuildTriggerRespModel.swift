//
// V0BuildTriggerRespModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0BuildTriggerRespModel: Codable {

    public var buildNumber: Int?
    public var buildSlug: String?
    public var buildUrl: String?
    public var message: String?
    public var service: String?
    public var slug: String?
    public var status: String?
    public var triggeredWorkflow: String?

    public init(buildNumber: Int? = nil, buildSlug: String? = nil, buildUrl: String? = nil, message: String? = nil, service: String? = nil, slug: String? = nil, status: String? = nil, triggeredWorkflow: String? = nil) {
        self.buildNumber = buildNumber
        self.buildSlug = buildSlug
        self.buildUrl = buildUrl
        self.message = message
        self.service = service
        self.slug = slug
        self.status = status
        self.triggeredWorkflow = triggeredWorkflow
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case buildNumber = "build_number"
        case buildSlug = "build_slug"
        case buildUrl = "build_url"
        case message
        case service
        case slug
        case status
        case triggeredWorkflow = "triggered_workflow"
    }

}
