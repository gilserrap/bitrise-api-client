//
// V0AvatarCandidateCreateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0AvatarCandidateCreateParams: Codable {

    public var filename: String
    public var filesize: Int

    public init(filename: String, filesize: Int) {
        self.filename = filename
        self.filesize = filesize
    }

}

