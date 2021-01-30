# BuildArtifactAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artifactDelete**](BuildArtifactAPI.md#artifactdelete) | **DELETE** /apps/{app-slug}/builds/{build-slug}/artifacts/{artifact-slug} | Delete a build artifact
[**artifactList**](BuildArtifactAPI.md#artifactlist) | **GET** /apps/{app-slug}/builds/{build-slug}/artifacts | Get a list of all build artifacts
[**artifactShow**](BuildArtifactAPI.md#artifactshow) | **GET** /apps/{app-slug}/builds/{build-slug}/artifacts/{artifact-slug} | Get a specific build artifact
[**artifactUpdate**](BuildArtifactAPI.md#artifactupdate) | **PATCH** /apps/{app-slug}/builds/{build-slug}/artifacts/{artifact-slug} | Update a build artifact


# **artifactDelete**
```swift
    open class func artifactDelete(appSlug: String, buildSlug: String, artifactSlug: String, completion: @escaping (_ data: V0ArtifactDeleteResponseModel?, _ error: Error?) -> Void)
```

Delete a build artifact

Delete a build artifact of an app's build. The required parameters are app slug, build slug and artifact slug. You can fetch the build artifact slug if you first list all build artifacts of an app with the [/apps/](https://api-docs.bitrise.io/#/build-artifact/artifact-list) endpoint.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug
let artifactSlug = "artifactSlug_example" // String | Artifact slug

// Delete a build artifact
BuildArtifactAPI.artifactDelete(appSlug: appSlug, buildSlug: buildSlug, artifactSlug: artifactSlug) { (response, error) in
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
 **artifactSlug** | **String** | Artifact slug | 

### Return type

[**V0ArtifactDeleteResponseModel**](V0ArtifactDeleteResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artifactList**
```swift
    open class func artifactList(appSlug: String, buildSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0ArtifactListResponseModel?, _ error: Error?) -> Void)
```

Get a list of all build artifacts

List all build artifacts that have been generated for an app's build. You can use the created build artifact slugs from the response output to retrieve data of a specific build artifact with the [GET/apps/](https://api-docs.bitrise.io/#/build-artifact/artifact-show) endpoint or update a build artifact with the [PATCH/apps](https://api-docs.bitrise.io/#/build-artifact/artifact-update) endpoint.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug
let next = "next_example" // String | Slug of the first build artifact in the response (optional)
let limit = 987 // Int | Max number of build artifacts per page is 50. (optional)

// Get a list of all build artifacts
BuildArtifactAPI.artifactList(appSlug: appSlug, buildSlug: buildSlug, next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first build artifact in the response | [optional] 
 **limit** | **Int** | Max number of build artifacts per page is 50. | [optional] 

### Return type

[**V0ArtifactListResponseModel**](V0ArtifactListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artifactShow**
```swift
    open class func artifactShow(appSlug: String, buildSlug: String, artifactSlug: String, completion: @escaping (_ data: V0ArtifactShowResponseModel?, _ error: Error?) -> Void)
```

Get a specific build artifact

Retrieve data of a specific build artifact. The response output contains a time-limited download url (expires in 10 minutes) and a public install page URL. You can view the build artifact with both URLs, but the public install page url will not work unless you [enable it](https://devcenter.bitrise.io/tutorials/deploy/bitrise-app-deployment/#enabling-public-page-for-the-app).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug
let artifactSlug = "artifactSlug_example" // String | Artifact slug

// Get a specific build artifact
BuildArtifactAPI.artifactShow(appSlug: appSlug, buildSlug: buildSlug, artifactSlug: artifactSlug) { (response, error) in
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
 **artifactSlug** | **String** | Artifact slug | 

### Return type

[**V0ArtifactShowResponseModel**](V0ArtifactShowResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artifactUpdate**
```swift
    open class func artifactUpdate(appSlug: String, buildSlug: String, artifactSlug: String, artifactParams: V0ArtifactUpdateParams, completion: @escaping (_ data: V0ArtifactShowResponseModel?, _ error: Error?) -> Void)
```

Update a build artifact

Update the `is_public_page_enabled` attribute of your app's build. The required parameters are app slug, build slug and artifact slug. You can fetch the build artifact slug if you first list all build artifacts of an app with the [GET /apps/](https://api-docs.bitrise.io/#/build-artifact/artifact-list) endpoint.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildSlug = "buildSlug_example" // String | Build slug
let artifactSlug = "artifactSlug_example" // String | Artifact slug
let artifactParams = v0.ArtifactUpdateParams(isPublicPageEnabled: false) // V0ArtifactUpdateParams | Artifact parameters

// Update a build artifact
BuildArtifactAPI.artifactUpdate(appSlug: appSlug, buildSlug: buildSlug, artifactSlug: artifactSlug, artifactParams: artifactParams) { (response, error) in
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
 **artifactSlug** | **String** | Artifact slug | 
 **artifactParams** | [**V0ArtifactUpdateParams**](V0ArtifactUpdateParams.md) | Artifact parameters | 

### Return type

[**V0ArtifactShowResponseModel**](V0ArtifactShowResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

