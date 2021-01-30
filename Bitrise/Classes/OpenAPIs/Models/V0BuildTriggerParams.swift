//
// V0BuildTriggerParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0BuildTriggerParams: Codable {

    public var buildParams: V0BuildTriggerParamsBuildParams?
    public var hookInfo: V0BuildTriggerParamsHookInfo?

    public init(buildParams: V0BuildTriggerParamsBuildParams? = nil, hookInfo: V0BuildTriggerParamsHookInfo? = nil) {
        self.buildParams = buildParams
        self.hookInfo = hookInfo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case buildParams = "build_params"
        case hookInfo = "hook_info"
    }

}
