//
// V0CommitPaths.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0CommitPaths: Codable {

    public var added: [String]?
    public var modified: [String]?
    public var removed: [String]?

    public init(added: [String]? = nil, modified: [String]? = nil, removed: [String]? = nil) {
        self.added = added
        self.modified = modified
        self.removed = removed
    }

}

