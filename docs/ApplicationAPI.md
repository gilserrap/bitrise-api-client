# ApplicationAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appConfigDatastoreShow**](ApplicationAPI.md#appconfigdatastoreshow) | **GET** /apps/{app-slug}/bitrise.yml | Get bitrise.yml of a specific app
[**appList**](ApplicationAPI.md#applist) | **GET** /apps | Get list of the apps
[**appListByOrganization**](ApplicationAPI.md#applistbyorganization) | **GET** /organizations/{org-slug}/apps | Get list of the apps for an organization
[**appListByUser**](ApplicationAPI.md#applistbyuser) | **GET** /users/{user-slug}/apps | Get list of the apps for a user
[**appShow**](ApplicationAPI.md#appshow) | **GET** /apps/{app-slug} | Get a specific app
[**branchList**](ApplicationAPI.md#branchlist) | **GET** /apps/{app-slug}/branches | List the branches of an app&#39;s repository


# **appConfigDatastoreShow**
```swift
    open class func appConfigDatastoreShow(appSlug: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Get bitrise.yml of a specific app

Get the full `bitrise.yml` configuration of an application, by providing the app slug. It returns the current `bitrise.yml` that is stored on bitrise.io in full, including the trigger map, the different workflows and the Steps.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// Get bitrise.yml of a specific app
ApplicationAPI.appConfigDatastoreShow(appSlug: appSlug) { (response, error) in
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

**String**

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appList**
```swift
    open class func appList(sortBy: SortBy_appList? = nil, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0AppListResponseModel?, _ error: Error?) -> Void)
```

Get list of the apps

List all the apps available for the authenticated account, including those that are owned by other users or Organizations.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let sortBy = "sortBy_example" // String | Order of the applications: sort them based on when they were created or the time of their last build (optional)
let next = "next_example" // String | Slug of the first app in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// Get list of the apps
ApplicationAPI.appList(sortBy: sortBy, next: next, limit: limit) { (response, error) in
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
 **sortBy** | **String** | Order of the applications: sort them based on when they were created or the time of their last build | [optional] 
 **next** | **String** | Slug of the first app in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0AppListResponseModel**](V0AppListResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appListByOrganization**
```swift
    open class func appListByOrganization(orgSlug: String, sortBy: SortBy_appListByOrganization? = nil, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0AppListResponseModel?, _ error: Error?) -> Void)
```

Get list of the apps for an organization

List all the available apps owned by a given organization. [Find the organization URL](https://devcenter.bitrise.io/team-management/organizations/org-url/) of the organisations you are part of; be aware that the endpoint will not return any apps if the authenticated account is not a member of the given organisation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let orgSlug = "orgSlug_example" // String | Organization slug
let sortBy = "sortBy_example" // String | Order of applications: sort them based on when they were created or the time of their last build (optional)
let next = "next_example" // String | Slug of the first app in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// Get list of the apps for an organization
ApplicationAPI.appListByOrganization(orgSlug: orgSlug, sortBy: sortBy, next: next, limit: limit) { (response, error) in
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
 **orgSlug** | **String** | Organization slug | 
 **sortBy** | **String** | Order of applications: sort them based on when they were created or the time of their last build | [optional] 
 **next** | **String** | Slug of the first app in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0AppListResponseModel**](V0AppListResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appListByUser**
```swift
    open class func appListByUser(userSlug: String, sortBy: SortBy_appListByUser? = nil, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0AppListResponseModel?, _ error: Error?) -> Void)
```

Get list of the apps for a user

List all the available apps for the given user.  It needs the user slug that you can get from the [GET /me](https://api-docs.bitrise.io/#/user/user-profile) endpoint.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let userSlug = "userSlug_example" // String | User slug
let sortBy = "sortBy_example" // String | Order of applications (optional)
let next = "next_example" // String | Slug of the first app in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// Get list of the apps for a user
ApplicationAPI.appListByUser(userSlug: userSlug, sortBy: sortBy, next: next, limit: limit) { (response, error) in
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
 **sortBy** | **String** | Order of applications | [optional] 
 **next** | **String** | Slug of the first app in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0AppListResponseModel**](V0AppListResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appShow**
```swift
    open class func appShow(appSlug: String, completion: @escaping (_ data: V0AppShowResponseModel?, _ error: Error?) -> Void)
```

Get a specific app

Get the details of a specific app by providing the app slug. You can get the app slug by calling the [/apps](https://api-docs.bitrise.io/#/application/app-list) endpoint or by opening the app on bitrise.io and copying the slug from the URL.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// Get a specific app
ApplicationAPI.appShow(appSlug: appSlug) { (response, error) in
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

[**V0AppShowResponseModel**](V0AppShowResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **branchList**
```swift
    open class func branchList(appSlug: String, completion: @escaping (_ data: V0BranchListResponseModel?, _ error: Error?) -> Void)
```

List the branches of an app's repository

List the existing branches of the repository of a specified Bitrise app.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// List the branches of an app's repository
ApplicationAPI.branchList(appSlug: appSlug) { (response, error) in
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

[**V0BranchListResponseModel**](V0BranchListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

