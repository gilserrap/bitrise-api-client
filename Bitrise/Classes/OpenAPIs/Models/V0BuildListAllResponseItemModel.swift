//
// V0BuildListAllResponseItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct V0BuildListAllResponseItemModel: Codable {

    public var abortReason: String?
    public var branch: String?
    public var buildNumber: Int?
    public var commitHash: String?
    public var commitMessage: String?
    public var commitViewUrl: String?
    public var environmentPrepareFinishedAt: String?
    public var finishedAt: String?
    public var isOnHold: Bool?
    public var machineTypeId: String?
    public var originalBuildParams: String?
    public var pullRequestId: Int?
    public var pullRequestTargetBranch: String?
    public var pullRequestViewUrl: String?
    public var repository: V0AppResponseItemModel?
    public var slug: String?
    public var stackIdentifier: String?
    public var startedOnWorkerAt: String?
    public var status: Int?
    public var statusText: String?
    public var tag: String?
    public var triggeredAt: String?
    public var triggeredBy: String?
    public var triggeredWorkflow: String?

    public init(abortReason: String? = nil, branch: String? = nil, buildNumber: Int? = nil, commitHash: String? = nil, commitMessage: String? = nil, commitViewUrl: String? = nil, environmentPrepareFinishedAt: String? = nil, finishedAt: String? = nil, isOnHold: Bool? = nil, machineTypeId: String? = nil, originalBuildParams: String? = nil, pullRequestId: Int? = nil, pullRequestTargetBranch: String? = nil, pullRequestViewUrl: String? = nil, repository: V0AppResponseItemModel? = nil, slug: String? = nil, stackIdentifier: String? = nil, startedOnWorkerAt: String? = nil, status: Int? = nil, statusText: String? = nil, tag: String? = nil, triggeredAt: String? = nil, triggeredBy: String? = nil, triggeredWorkflow: String? = nil) {
        self.abortReason = abortReason
        self.branch = branch
        self.buildNumber = buildNumber
        self.commitHash = commitHash
        self.commitMessage = commitMessage
        self.commitViewUrl = commitViewUrl
        self.environmentPrepareFinishedAt = environmentPrepareFinishedAt
        self.finishedAt = finishedAt
        self.isOnHold = isOnHold
        self.machineTypeId = machineTypeId
        self.originalBuildParams = originalBuildParams
        self.pullRequestId = pullRequestId
        self.pullRequestTargetBranch = pullRequestTargetBranch
        self.pullRequestViewUrl = pullRequestViewUrl
        self.repository = repository
        self.slug = slug
        self.stackIdentifier = stackIdentifier
        self.startedOnWorkerAt = startedOnWorkerAt
        self.status = status
        self.statusText = statusText
        self.tag = tag
        self.triggeredAt = triggeredAt
        self.triggeredBy = triggeredBy
        self.triggeredWorkflow = triggeredWorkflow
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case abortReason = "abort_reason"
        case branch
        case buildNumber = "build_number"
        case commitHash = "commit_hash"
        case commitMessage = "commit_message"
        case commitViewUrl = "commit_view_url"
        case environmentPrepareFinishedAt = "environment_prepare_finished_at"
        case finishedAt = "finished_at"
        case isOnHold = "is_on_hold"
        case machineTypeId = "machine_type_id"
        case originalBuildParams = "original_build_params"
        case pullRequestId = "pull_request_id"
        case pullRequestTargetBranch = "pull_request_target_branch"
        case pullRequestViewUrl = "pull_request_view_url"
        case repository
        case slug
        case stackIdentifier = "stack_identifier"
        case startedOnWorkerAt = "started_on_worker_at"
        case status
        case statusText = "status_text"
        case tag
        case triggeredAt = "triggered_at"
        case triggeredBy = "triggered_by"
        case triggeredWorkflow = "triggered_workflow"
    }

}

