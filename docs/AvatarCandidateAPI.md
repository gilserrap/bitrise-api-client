# AvatarCandidateAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**avatarCandidateCreate**](AvatarCandidateAPI.md#avatarcandidatecreate) | **POST** /apps/{app-slug}/avatar-candidates | Create avatar candidates
[**avatarCandidateList**](AvatarCandidateAPI.md#avatarcandidatelist) | **GET** /v0.1/apps/{app-slug}/avatar-candidates | Get list of the avatar candidates
[**avatarCandidatePromote**](AvatarCandidateAPI.md#avatarcandidatepromote) | **PATCH** /apps/{app-slug}/avatar-candidates/{avatar-slug} | Promote an avatar candidate


# **avatarCandidateCreate**
```swift
    open class func avatarCandidateCreate(appSlug: String, avatarCandidate: [V0AvatarCandidateCreateParams], completion: @escaping (_ data: [V0AvatarCandidateCreateResponseItem]?, _ error: Error?) -> Void)
```

Create avatar candidates

Add new avatar candidates to a specific app

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let avatarCandidate = [v0.AvatarCandidateCreateParams(filename: "filename_example", filesize: 123)] // [V0AvatarCandidateCreateParams] | Avatar candidate parameters

// Create avatar candidates
AvatarCandidateAPI.avatarCandidateCreate(appSlug: appSlug, avatarCandidate: avatarCandidate) { (response, error) in
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
 **avatarCandidate** | [**[V0AvatarCandidateCreateParams]**](V0AvatarCandidateCreateParams.md) | Avatar candidate parameters | 

### Return type

[**[V0AvatarCandidateCreateResponseItem]**](V0AvatarCandidateCreateResponseItem.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **avatarCandidateList**
```swift
    open class func avatarCandidateList(appSlug: String, completion: @escaping (_ data: V0FindAvatarCandidateResponse?, _ error: Error?) -> Void)
```

Get list of the avatar candidates

List all available avatar candidates for an application

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// Get list of the avatar candidates
AvatarCandidateAPI.avatarCandidateList(appSlug: appSlug) { (response, error) in
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

[**V0FindAvatarCandidateResponse**](V0FindAvatarCandidateResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **avatarCandidatePromote**
```swift
    open class func avatarCandidatePromote(appSlug: String, avatarSlug: String, avatarPromoteParams: V0AvatarPromoteParams, completion: @escaping (_ data: V0AvatarPromoteResponseModel?, _ error: Error?) -> Void)
```

Promote an avatar candidate

Promotes an avatar candidate for an app

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let avatarSlug = "avatarSlug_example" // String | Avatar candidate slug
let avatarPromoteParams = v0.AvatarPromoteParams(isPromoted: false) // V0AvatarPromoteParams | Avatar promote parameters

// Promote an avatar candidate
AvatarCandidateAPI.avatarCandidatePromote(appSlug: appSlug, avatarSlug: avatarSlug, avatarPromoteParams: avatarPromoteParams) { (response, error) in
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
 **avatarSlug** | **String** | Avatar candidate slug | 
 **avatarPromoteParams** | [**V0AvatarPromoteParams**](V0AvatarPromoteParams.md) | Avatar promote parameters | 

### Return type

[**V0AvatarPromoteResponseModel**](V0AvatarPromoteResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

