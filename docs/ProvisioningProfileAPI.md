# ProvisioningProfileAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**provisioningProfileConfirm**](ProvisioningProfileAPI.md#provisioningprofileconfirm) | **POST** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}/uploaded | Confirm a provisioning profile upload
[**provisioningProfileCreate**](ProvisioningProfileAPI.md#provisioningprofilecreate) | **POST** /apps/{app-slug}/provisioning-profiles | Create a provisioning profile
[**provisioningProfileDelete**](ProvisioningProfileAPI.md#provisioningprofiledelete) | **DELETE** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug} | Delete a provisioning profile
[**provisioningProfileList**](ProvisioningProfileAPI.md#provisioningprofilelist) | **GET** /apps/{app-slug}/provisioning-profiles | Get a list of the provisioning profiles
[**provisioningProfileShow**](ProvisioningProfileAPI.md#provisioningprofileshow) | **GET** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug} | Get a specific provisioning profile
[**provisioningProfileUpdate**](ProvisioningProfileAPI.md#provisioningprofileupdate) | **PATCH** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug} | Update a provisioning profile


# **provisioningProfileConfirm**
```swift
    open class func provisioningProfileConfirm(appSlug: String, provisioningProfileSlug: String, completion: @escaping (_ data: V0ProvisionProfileResponseModel?, _ error: Error?) -> Void)
```

Confirm a provisioning profile upload

This is the last step of the upload process. Confirm the provisioning profile upload and view the file on the Code Signing tab of a specific app. Read more in our [Confirming the iOS code signing file upload](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#confirming-the-ios-code-signing-file-upload) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let provisioningProfileSlug = "provisioningProfileSlug_example" // String | Provisioning profile slug

// Confirm a provisioning profile upload
ProvisioningProfileAPI.provisioningProfileConfirm(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug) { (response, error) in
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
 **provisioningProfileSlug** | **String** | Provisioning profile slug | 

### Return type

[**V0ProvisionProfileResponseModel**](V0ProvisionProfileResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **provisioningProfileCreate**
```swift
    open class func provisioningProfileCreate(appSlug: String, provisioningProfile: V0ProvisionProfileUploadParams, completion: @escaping (_ data: V0ProvisionProfileResponseModel?, _ error: Error?) -> Void)
```

Create a provisioning profile

Create a temporary pre-signed upload URL (expires in 10 minutes) for the provisioning profile and upload it to AWS with a simple `curl` request. To complete the upload process, continue with the [POST /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}/uploaded](https://api-docs.bitrise.io/#/provisioning-profile/provisioning-profile-confirm) endpoint. Read more in our [Creating and uploading an iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#creating--uploading-an-ios-code-signing-file) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let provisioningProfile = v0.ProvisionProfileUploadParams(uploadFileName: "uploadFileName_example", uploadFileSize: 123) // V0ProvisionProfileUploadParams | Provisioning profile parameters such as file name and file size

// Create a provisioning profile
ProvisioningProfileAPI.provisioningProfileCreate(appSlug: appSlug, provisioningProfile: provisioningProfile) { (response, error) in
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
 **provisioningProfile** | [**V0ProvisionProfileUploadParams**](V0ProvisionProfileUploadParams.md) | Provisioning profile parameters such as file name and file size | 

### Return type

[**V0ProvisionProfileResponseModel**](V0ProvisionProfileResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **provisioningProfileDelete**
```swift
    open class func provisioningProfileDelete(appSlug: String, provisioningProfileSlug: String, completion: @escaping (_ data: V0ProvisionProfileResponseModel?, _ error: Error?) -> Void)
```

Delete a provisioning profile

Delete an app's provisioning profile. You can fetch the provisioning profile's slug if you call the [GET /apps/{app-slug}/provisioning-profiles](https://api-docs.bitrise.io/#/provisioning-profile/provisioning-profile-list) endpoint. Read more in our [Deleting an iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#deleting-an-ios-code-signing-file) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let provisioningProfileSlug = "provisioningProfileSlug_example" // String | Provisioning profile slug

// Delete a provisioning profile
ProvisioningProfileAPI.provisioningProfileDelete(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug) { (response, error) in
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
 **provisioningProfileSlug** | **String** | Provisioning profile slug | 

### Return type

[**V0ProvisionProfileResponseModel**](V0ProvisionProfileResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **provisioningProfileList**
```swift
    open class func provisioningProfileList(appSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0ProvisionProfileListResponseModel?, _ error: Error?) -> Void)
```

Get a list of the provisioning profiles

List all the provisioning profiles that have been uploaded to a specific app. Read more in our [Listing the uploaded iOS code signing files of an app](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#listing-the-uploaded-ios-code-signing-files-of-an-app) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let next = "next_example" // String | Slug of the first provisioning profile in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// Get a list of the provisioning profiles
ProvisioningProfileAPI.provisioningProfileList(appSlug: appSlug, next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first provisioning profile in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0ProvisionProfileListResponseModel**](V0ProvisionProfileListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **provisioningProfileShow**
```swift
    open class func provisioningProfileShow(appSlug: String, provisioningProfileSlug: String, completion: @escaping (_ data: V0ProvisionProfileResponseModel?, _ error: Error?) -> Void)
```

Get a specific provisioning profile

Retrieve data of a specific provisioning profile. You can fetch the provisioning profile's slug if you call the [GET /apps/{app-slug}/provisioning-profiles](https://api-docs.bitrise.io/#/provisioning-profile/provisioning-profile-list) endpoint. Read more in our [Getting a specific iOS code signing file's data](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#getting-a-specific-ios-code-signing-files-data) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let provisioningProfileSlug = "provisioningProfileSlug_example" // String | Provisioning profile slug

// Get a specific provisioning profile
ProvisioningProfileAPI.provisioningProfileShow(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug) { (response, error) in
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
 **provisioningProfileSlug** | **String** | Provisioning profile slug | 

### Return type

[**V0ProvisionProfileResponseModel**](V0ProvisionProfileResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **provisioningProfileUpdate**
```swift
    open class func provisioningProfileUpdate(appSlug: String, provisioningProfileSlug: String, provisioningProfile: V0ProvProfileDocumentUpdateParams, completion: @escaping (_ data: V0ProvisionProfileResponseModel?, _ error: Error?) -> Void)
```

Update a provisioning profile

Update an uploaded provisioning profile's attributes. You can fetch the provisioning profile's slug if you call the [GET /apps/{app-slug}/provisioning-profiles](https://api-docs.bitrise.io/#/provisioning-profile/provisioning-profile-list) endpoint. Read more in our [Updating an uploaded iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#confirming-the-ios-code-signing-file-upload) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let provisioningProfileSlug = "provisioningProfileSlug_example" // String | Provisioning profile slug
let provisioningProfile = v0.ProvProfileDocumentUpdateParams(isExpose: false, isProtected: false, processed: false) // V0ProvProfileDocumentUpdateParams | Provisioning profile parameters

// Update a provisioning profile
ProvisioningProfileAPI.provisioningProfileUpdate(appSlug: appSlug, provisioningProfileSlug: provisioningProfileSlug, provisioningProfile: provisioningProfile) { (response, error) in
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
 **provisioningProfileSlug** | **String** | Provisioning profile slug | 
 **provisioningProfile** | [**V0ProvProfileDocumentUpdateParams**](V0ProvProfileDocumentUpdateParams.md) | Provisioning profile parameters | 

### Return type

[**V0ProvisionProfileResponseModel**](V0ProvisionProfileResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

