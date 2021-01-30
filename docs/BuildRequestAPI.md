# BuildRequestAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildRequestList**](BuildRequestAPI.md#buildrequestlist) | **GET** /apps/{app-slug}/build-requests | List the open build requests for an app
[**buildRequestUpdate**](BuildRequestAPI.md#buildrequestupdate) | **PATCH** /apps/{app-slug}/build-requests/{build-request-slug} | Update a build request


# **buildRequestList**
```swift
    open class func buildRequestList(appSlug: String, completion: @escaping (_ data: V0BuildRequestListResponseModel?, _ error: Error?) -> Void)
```

List the open build requests for an app

List the existing open build requests of a specified Bitrise app

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// List the open build requests for an app
BuildRequestAPI.buildRequestList(appSlug: appSlug) { (response, error) in
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

[**V0BuildRequestListResponseModel**](V0BuildRequestListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildRequestUpdate**
```swift
    open class func buildRequestUpdate(appSlug: String, buildRequestSlug: String, buildRequest: V0BuildRequestUpdateParams, completion: @escaping (_ data: V0BuildRequestUpdateResponseModel?, _ error: Error?) -> Void)
```

Update a build request

Update a specific build request of a specific app

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildRequestSlug = "buildRequestSlug_example" // String | Build request slug
let buildRequest = v0.BuildRequestUpdateParams(isApproved: false) // V0BuildRequestUpdateParams | Build request parameters

// Update a build request
BuildRequestAPI.buildRequestUpdate(appSlug: appSlug, buildRequestSlug: buildRequestSlug, buildRequest: buildRequest) { (response, error) in
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
 **buildRequestSlug** | **String** | Build request slug | 
 **buildRequest** | [**V0BuildRequestUpdateParams**](V0BuildRequestUpdateParams.md) | Build request parameters | 

### Return type

[**V0BuildRequestUpdateResponseModel**](V0BuildRequestUpdateResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

