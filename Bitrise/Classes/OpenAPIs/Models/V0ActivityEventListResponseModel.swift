//
// V0ActivityEventListResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0ActivityEventListResponseModel: Codable {

    public var data: [V0ActivityEventResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0ActivityEventResponseItemModel]? = nil, paging: V0PagingResponseModel? = nil) {
        self.data = data
        self.paging = paging
    }

}
