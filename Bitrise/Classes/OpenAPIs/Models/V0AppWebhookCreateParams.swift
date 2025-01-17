//
// V0AppWebhookCreateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0AppWebhookCreateParams: Codable {

    public var events: [String]
    public var headers: String?
    public var secret: String
    public var url: String

    public init(events: [String], headers: String? = nil, secret: String, url: String) {
        self.events = events
        self.headers = headers
        self.secret = secret
        self.url = url
    }

}

