//
// V0ProvisionProfileListResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0ProvisionProfileListResponseModel: Codable {

    public var data: [V0ProvisionProfileResponseItemModel]?
    public var paging: V0PagingResponseModel?

    public init(data: [V0ProvisionProfileResponseItemModel]? = nil, paging: V0PagingResponseModel? = nil) {
        self.data = data
        self.paging = paging
    }

}

