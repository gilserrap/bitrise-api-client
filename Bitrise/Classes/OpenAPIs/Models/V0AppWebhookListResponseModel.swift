//
// V0AppWebhookListResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0AppWebhookListResponseModel: Codable {

    public var data: [V0AppWebhookResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0AppWebhookResponseItemModel]? = nil, paging: V0PagingResponseModel? = nil) {
        self.data = data
        self.paging = paging
    }

}
