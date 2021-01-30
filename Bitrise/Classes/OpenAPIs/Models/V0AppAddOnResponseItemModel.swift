//
// V0AppAddOnResponseItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0AppAddOnResponseItemModel: Codable {

    public var description: String?
    public var documentationUrl: String?
    public var hasUi: Bool?
    public var icon: String?
    public var id: String?
    public var isBeta: Bool?
    public var plan: AddonsPlan?
    public var setupGuide: AddonsSetupGuide?
    public var summary: String?
    public var title: String?

    public init(description: String? = nil, documentationUrl: String? = nil, hasUi: Bool? = nil, icon: String? = nil, id: String? = nil, isBeta: Bool? = nil, plan: AddonsPlan? = nil, setupGuide: AddonsSetupGuide? = nil, summary: String? = nil, title: String? = nil) {
        self.description = description
        self.documentationUrl = documentationUrl
        self.hasUi = hasUi
        self.icon = icon
        self.id = id
        self.isBeta = isBeta
        self.plan = plan
        self.setupGuide = setupGuide
        self.summary = summary
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case description
        case documentationUrl = "documentation_url"
        case hasUi = "has_ui"
        case icon
        case id
        case isBeta = "is_beta"
        case plan
        case setupGuide = "setup_guide"
        case summary
        case title
    }

}
