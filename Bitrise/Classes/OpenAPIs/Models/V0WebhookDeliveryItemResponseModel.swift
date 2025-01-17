//
// V0WebhookDeliveryItemResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0WebhookDeliveryItemResponseModel: Codable {

    public var createdAt: String?
    public var requestHeaders: String?
    public var requestPayload: String?
    public var requestUrl: String?
    public var responseBody: String?
    public var responseHeaders: String?
    public var responseHttpStatus: String?
    public var responseSeconds: String?
    public var slug: String?
    public var updatedAt: String?

    public init(createdAt: String? = nil, requestHeaders: String? = nil, requestPayload: String? = nil, requestUrl: String? = nil, responseBody: String? = nil, responseHeaders: String? = nil, responseHttpStatus: String? = nil, responseSeconds: String? = nil, slug: String? = nil, updatedAt: String? = nil) {
        self.createdAt = createdAt
        self.requestHeaders = requestHeaders
        self.requestPayload = requestPayload
        self.requestUrl = requestUrl
        self.responseBody = responseBody
        self.responseHeaders = responseHeaders
        self.responseHttpStatus = responseHttpStatus
        self.responseSeconds = responseSeconds
        self.slug = slug
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case createdAt = "created_at"
        case requestHeaders = "request_headers"
        case requestPayload = "request_payload"
        case requestUrl = "request_url"
        case responseBody = "response_body"
        case responseHeaders = "response_headers"
        case responseHttpStatus = "response_http_status"
        case responseSeconds = "response_seconds"
        case slug
        case updatedAt = "updated_at"
    }

}

