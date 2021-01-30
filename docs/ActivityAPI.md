# ActivityAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activityList**](ActivityAPI.md#activitylist) | **GET** /me/activities | Get list of Bitrise activity events


# **activityList**
```swift
    open class func activityList(next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0ActivityEventListResponseModel?, _ error: Error?) -> Void)
```

Get list of Bitrise activity events

List all the Bitrise activity events

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let next = "next_example" // String | Slug of the first activity event in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// Get list of Bitrise activity events
ActivityAPI.activityList(next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first activity event in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0ActivityEventListResponseModel**](V0ActivityEventListResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

