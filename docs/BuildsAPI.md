# BuildsAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildAbort**](BuildsAPI.md#buildabort) | **POST** /apps/{app-slug}/builds/{build-slug}/abort | Abort a specific build
[**buildBitriseYmlShow**](BuildsAPI.md#buildbitriseymlshow) | **GET** /apps/{app-slug}/builds/{build-slug}/bitrise.yml | Get the bitrise.yml of a build
[**buildList**](BuildsAPI.md#buildlist) | **GET** /apps/{app-slug}/builds | List all builds of an app
[**buildListAll**](BuildsAPI.md#buildlistall) | **GET** /builds | List all builds
[**buildLog**](BuildsAPI.md#buildlog) | **GET** /apps/{app-slug}/builds/{build-slug}/log | Get the build log of a build
[**buildShow**](BuildsAPI.md#buildshow) | **GET** /apps/{app-slug}/builds/{build-slug} | Get a build of a given app
[**buildTrigger**](BuildsAPI.md#buildtrigger) | **POST** /apps/{app-slug}/builds | Trigger a new build
[**buildWorkflowList**](BuildsAPI.md#buildworkflowlist) | **GET** /apps/{app-slug}/build-workflows | List the workflows of an app


# **buildAbort**
```swift
    open class func buildAbort(appSlug: String, buildSlug: String, buildAbortParams: V0BuildAbortParams, completion: @escaping (_ data: V0BuildAbortResponseModel?, _ error: Error?) -> Void)
```

Abort a specific build

Abort a specific build. Set an abort reason with the `abort_reason` parameter. Use the `abort_with_success` parameter to abort a build but still count it as a successful one.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug
let buildAbortParams = v0.BuildAbortParams(abortReason: "abortReason_example", abortWithSuccess: false, skipNotifications: false) // V0BuildAbortParams | Build abort parameters

// Abort a specific build
BuildsAPI.buildAbort(appSlug: appSlug, buildSlug: buildSlug, buildAbortParams: buildAbortParams) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String** | App slug | 
 **buildSlug** | **String** | Build slug | 
 **buildAbortParams** | [**V0BuildAbortParams**](V0BuildAbortParams.md) | Build abort parameters | 

### Return type

[**V0BuildAbortResponseModel**](V0BuildAbortResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildBitriseYmlShow**
```swift
    open class func buildBitriseYmlShow(appSlug: String, buildSlug: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get the bitrise.yml of a build

Get the bitrise.yml file of one of the builds of a given app. This will return the `bitrise.yml` configuration with which the build ran. You can compare it to [the current bitrise.yml configuration](https://api-docs.bitrise.io/#/application/app-config-datastore-show) of the app.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug

// Get the bitrise.yml of a build
BuildsAPI.buildBitriseYmlShow(appSlug: appSlug, buildSlug: buildSlug) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String** | App slug | 
 **buildSlug** | **String** | Build slug | 

### Return type

**String**

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildList**
```swift
    open class func buildList(appSlug: String, sortBy: SortBy_buildList? = nil, branch: String? = nil, workflow: String? = nil, commitMessage: String? = nil, triggerEventType: String? = nil, pullRequestId: Int? = nil, buildNumber: Int? = nil, after: Int? = nil, before: Int? = nil, status: Int? = nil, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0BuildListResponseModel?, _ error: Error?) -> Void)
```

List all builds of an app

List all the builds of a specified Bitrise app. Set parameters to filter builds: for example, you can search for builds run with a given workflow or all builds that were triggered by Pull Requests. It returns all the relevant data of the build.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let sortBy = "sortBy_example" // String | Order of builds: sort them based on when they were created or the time when they were triggered (optional)
let branch = "branch_example" // String | The branch which was built (optional)
let workflow = "workflow_example" // String | The name of the workflow used for the build (optional)
let commitMessage = "commitMessage_example" // String | The commit message of the build (optional)
let triggerEventType = "triggerEventType_example" // String | The event that triggered the build (push, pull-request, tag) (optional)
let pullRequestId = 987 // Int | The id of the pull request that triggered the build (optional)
let buildNumber = 987 // Int | The build number (optional)
let after = 987 // Int | List builds run after a given date (Unix Timestamp) (optional)
let before = 987 // Int | List builds run before a given date (Unix Timestamp) (optional)
let status = 987 // Int | The status of the build: not finished (0), successful (1), failed (2), aborted with failure (3), aborted with success (4) (optional)
let next = "next_example" // String | Slug of the first build in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// List all builds of an app
BuildsAPI.buildList(appSlug: appSlug, sortBy: sortBy, branch: branch, workflow: workflow, commitMessage: commitMessage, triggerEventType: triggerEventType, pullRequestId: pullRequestId, buildNumber: buildNumber, after: after, before: before, status: status, next: next, limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String** | App slug | 
 **sortBy** | **String** | Order of builds: sort them based on when they were created or the time when they were triggered | [optional] 
 **branch** | **String** | The branch which was built | [optional] 
 **workflow** | **String** | The name of the workflow used for the build | [optional] 
 **commitMessage** | **String** | The commit message of the build | [optional] 
 **triggerEventType** | **String** | The event that triggered the build (push, pull-request, tag) | [optional] 
 **pullRequestId** | **Int** | The id of the pull request that triggered the build | [optional] 
 **buildNumber** | **Int** | The build number | [optional] 
 **after** | **Int** | List builds run after a given date (Unix Timestamp) | [optional] 
 **before** | **Int** | List builds run before a given date (Unix Timestamp) | [optional] 
 **status** | **Int** | The status of the build: not finished (0), successful (1), failed (2), aborted with failure (3), aborted with success (4) | [optional] 
 **next** | **String** | Slug of the first build in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0BuildListResponseModel**](V0BuildListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildListAll**
```swift
    open class func buildListAll(ownerSlug: String? = nil, isOnHold: Bool? = nil, status: Int? = nil, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0BuildListAllResponseModel?, _ error: Error?) -> Void)
```

List all builds

List all the Bitrise builds that can be accessed with the authenticated account. Filter builds based on their owner, using the owner slug, or the status of the build.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let ownerSlug = "ownerSlug_example" // String | The slug of the owner of the app or apps (optional)
let isOnHold = true // Bool | Indicates whether the build has started yet (true: the build hasn't started) (optional)
let status = 987 // Int | The status of the build: not finished (0), successful (1), failed (2), aborted with failure (3), aborted with success (4) (optional)
let next = "next_example" // String | Slug of the first build in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// List all builds
BuildsAPI.buildListAll(ownerSlug: ownerSlug, isOnHold: isOnHold, status: status, next: next, limit: limit) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerSlug** | **String** | The slug of the owner of the app or apps | [optional] 
 **isOnHold** | **Bool** | Indicates whether the build has started yet (true: the build hasn&#39;t started) | [optional] 
 **status** | **Int** | The status of the build: not finished (0), successful (1), failed (2), aborted with failure (3), aborted with success (4) | [optional] 
 **next** | **String** | Slug of the first build in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0BuildListAllResponseModel**](V0BuildListAllResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildLog**
```swift
    open class func buildLog(appSlug: String, buildSlug: String, completion: @escaping (_ data: V0BuildLogInfoResponseModel?, _ error: Error?) -> Void)
```

Get the build log of a build

Get the build log of a specified build of a Bitrise app. You can get the build slug either by calling the [/builds](https://api-docs.bitrise.io/#/builds/build-list) endpoint or by clicking on the build on bitrise.io and copying the slug from the URL.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug

// Get the build log of a build
BuildsAPI.buildLog(appSlug: appSlug, buildSlug: buildSlug) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String** | App slug | 
 **buildSlug** | **String** | Build slug | 

### Return type

[**V0BuildLogInfoResponseModel**](V0BuildLogInfoResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildShow**
```swift
    open class func buildShow(appSlug: String, buildSlug: String, completion: @escaping (_ data: V0BuildShowResponseModel?, _ error: Error?) -> Void)
```

Get a build of a given app

Get the specified build of a given Bitrise app. You need to provide both an app slug and a build slug. You can get the build slug either by calling the [/builds](https://api-docs.bitrise.io/#/builds/build-list) endpoint or by clicking on the build on bitrise.io and copying the slug from the URL. The endpoint returns all the relevant data of the build.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug

// Get a build of a given app
BuildsAPI.buildShow(appSlug: appSlug, buildSlug: buildSlug) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String** | App slug | 
 **buildSlug** | **String** | Build slug | 

### Return type

[**V0BuildShowResponseModel**](V0BuildShowResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildTrigger**
```swift
    open class func buildTrigger(appSlug: String, buildParams: V0BuildTriggerParams, completion: @escaping (_ data: V0BuildTriggerRespModel?, _ error: Error?) -> Void)
```

Trigger a new build

Trigger a new build. Specify an app slug and at least one parameter out of three: a git tag or git commit hash, a branch, or a workflow ID. You can also set specific parameters for Pull Request builds and define additional environment variables for your build. [Check out our detailed guide](https://devcenter.bitrise.io/api/build-trigger/).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildParams = v0.BuildTriggerParams(buildParams: v0.BuildTriggerParamsBuildParams(branch: "branch_example", branchDest: "branchDest_example", branchDestRepoOwner: "branchDestRepoOwner_example", branchRepoOwner: "branchRepoOwner_example", buildRequestSlug: "buildRequestSlug_example", commitHash: "commitHash_example", commitMessage: "commitMessage_example", commitPaths: [v0.CommitPaths(added: ["added_example"], modified: ["modified_example"], removed: ["removed_example"])], diffUrl: "diffUrl_example", environments: [v0.BuildParamsEnvironment(isExpand: false, mappedTo: "mappedTo_example", value: "value_example")], pullRequestAuthor: "pullRequestAuthor_example", pullRequestHeadBranch: "pullRequestHeadBranch_example", pullRequestId: 123, pullRequestMergeBranch: "pullRequestMergeBranch_example", pullRequestRepositoryUrl: "pullRequestRepositoryUrl_example", skipGitStatusReport: false, tag: "tag_example", workflowId: "workflowId_example"), hookInfo: v0.BuildTriggerParamsHookInfo(type: "type_example")) // V0BuildTriggerParams | Build trigger parameters

// Trigger a new build
BuildsAPI.buildTrigger(appSlug: appSlug, buildParams: buildParams) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String** | App slug | 
 **buildParams** | [**V0BuildTriggerParams**](V0BuildTriggerParams.md) | Build trigger parameters | 

### Return type

[**V0BuildTriggerRespModel**](V0BuildTriggerRespModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildWorkflowList**
```swift
    open class func buildWorkflowList(appSlug: String, completion: @escaping (_ data: V0BuildWorkflowListResponseModel?, _ error: Error?) -> Void)
```

List the workflows of an app

List the workflows that were triggered at any time for a given Bitrise app. Note that it might list workflows that are currently not defined in the app's `bitrise.yml` configuration - and conversely, workflows that were never triggered will not be listed even if they are defined in the `bitrise.yml` file.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// List the workflows of an app
BuildsAPI.buildWorkflowList(appSlug: appSlug) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appSlug** | **String** | App slug | 

### Return type

[**V0BuildWorkflowListResponseModel**](V0BuildWorkflowListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

