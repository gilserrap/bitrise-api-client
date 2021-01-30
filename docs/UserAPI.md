# UserAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userPlan**](UserAPI.md#userplan) | **GET** /me/plan | The subscription plan of the user
[**userProfile**](UserAPI.md#userprofile) | **GET** /me | Get your profile data
[**userShow**](UserAPI.md#usershow) | **GET** /users/{user-slug} | Get a specific user


# **userPlan**
```swift
    open class func userPlan(completion: @escaping (_ data: V0UserPlanRespModel?, _ error: Error?) -> Void)
```

The subscription plan of the user

Get the subscription of the user: the current plan, any pending plans, and the duration of a trial period if applicable

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise


// The subscription plan of the user
UserAPI.userPlan() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**V0UserPlanRespModel**](V0UserPlanRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfile**
```swift
    open class func userProfile(completion: @escaping (_ data: V0UserProfileRespModel?, _ error: Error?) -> Void)
```

Get your profile data

Shows the authenticated users profile data

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise


// Get your profile data
UserAPI.userProfile() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**V0UserProfileRespModel**](V0UserProfileRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userShow**
```swift
    open class func userShow(userSlug: String, completion: @escaping (_ data: V0UserProfileRespModel?, _ error: Error?) -> Void)
```

Get a specific user

Show information about a specific user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let userSlug = "userSlug_example" // String | User slug

// Get a specific user
UserAPI.userShow(userSlug: userSlug) { (response, error) in
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

[**V0UserProfileRespModel**](V0UserProfileRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

