# AppleApiCredentialsAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appleApiCredentialList**](AppleApiCredentialsAPI.md#appleapicredentiallist) | **GET** /users/{user-slug}/apple-api-credentials | List Apple API credentials for a specific user


# **appleApiCredentialList**
```swift
    open class func appleApiCredentialList(userSlug: String, completion: @escaping (_ data: V0AppleAPICredentialsListResponse?, _ error: Error?) -> Void)
```

List Apple API credentials for a specific user

List Apple API credentials for a specific Bitrise user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let userSlug = "userSlug_example" // String | User slug

// List Apple API credentials for a specific user
AppleApiCredentialsAPI.appleApiCredentialList(userSlug: userSlug) { (response, error) in
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
 **userSlug** | **String** | User slug | 

### Return type

[**V0AppleAPICredentialsListResponse**](V0AppleAPICredentialsListResponse.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

