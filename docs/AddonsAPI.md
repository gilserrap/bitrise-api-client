# AddonsAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addonListByApp**](AddonsAPI.md#addonlistbyapp) | **GET** /apps/{app-slug}/addons | Get list of the addons for apps
[**addonListByOrganization**](AddonsAPI.md#addonlistbyorganization) | **GET** /organizations/{organization-slug}/addons | Get list of the addons for organization
[**addonListByUser**](AddonsAPI.md#addonlistbyuser) | **GET** /users/{user-slug}/addons | Get list of the addons for user
[**addonsList**](AddonsAPI.md#addonslist) | **GET** /addons | Get list of available Bitrise addons
[**addonsShow**](AddonsAPI.md#addonsshow) | **GET** /addons/{addon-id} | Get a specific Bitrise addon


# **addonListByApp**
```swift
    open class func addonListByApp(appSlug: String, completion: @escaping (_ data: V0AppAddOnsListResponseModel?, _ error: Error?) -> Void)
```

Get list of the addons for apps

List all the provisioned addons for the authorized apps

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// Get list of the addons for apps
AddonsAPI.addonListByApp(appSlug: appSlug) { (response, error) in
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

[**V0AppAddOnsListResponseModel**](V0AppAddOnsListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addonListByOrganization**
```swift
    open class func addonListByOrganization(organizationSlug: String, completion: @escaping (_ data: V0OwnerAddOnsListResponseModel?, _ error: Error?) -> Void)
```

Get list of the addons for organization

List all the provisioned addons for organization

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let organizationSlug = "organizationSlug_example" // String | Organization slug

// Get list of the addons for organization
AddonsAPI.addonListByOrganization(organizationSlug: organizationSlug) { (response, error) in
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
 **organizationSlug** | **String** | Organization slug | 

### Return type

[**V0OwnerAddOnsListResponseModel**](V0OwnerAddOnsListResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addonListByUser**
```swift
    open class func addonListByUser(userSlug: String, completion: @escaping (_ data: V0OwnerAddOnsListResponseModel?, _ error: Error?) -> Void)
```

Get list of the addons for user

List all the provisioned addons for the authenticated user

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let userSlug = "userSlug_example" // String | User slug

// Get list of the addons for user
AddonsAPI.addonListByUser(userSlug: userSlug) { (response, error) in
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

[**V0OwnerAddOnsListResponseModel**](V0OwnerAddOnsListResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addonsList**
```swift
    open class func addonsList(completion: @escaping (_ data: V0AddonsListResponseModel?, _ error: Error?) -> Void)
```

Get list of available Bitrise addons

List all the available Bitrise addons

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise


// Get list of available Bitrise addons
AddonsAPI.addonsList() { (response, error) in
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

[**V0AddonsListResponseModel**](V0AddonsListResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addonsShow**
```swift
    open class func addonsShow(addonId: String, completion: @escaping (_ data: V0AddonsShowResponseModel?, _ error: Error?) -> Void)
```

Get a specific Bitrise addon

Show details of a specific Bitrise addon

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let addonId = "addonId_example" // String | Addon ID

// Get a specific Bitrise addon
AddonsAPI.addonsShow(addonId: addonId) { (response, error) in
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
 **addonId** | **String** | Addon ID | 

### Return type

[**V0AddonsShowResponseModel**](V0AddonsShowResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

