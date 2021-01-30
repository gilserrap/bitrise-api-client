# BuildCertificateAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildCertificateConfirm**](BuildCertificateAPI.md#buildcertificateconfirm) | **POST** /apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded | Confirm a build certificate upload
[**buildCertificateCreate**](BuildCertificateAPI.md#buildcertificatecreate) | **POST** /apps/{app-slug}/build-certificates | Create a build certificate
[**buildCertificateDelete**](BuildCertificateAPI.md#buildcertificatedelete) | **DELETE** /apps/{app-slug}/build-certificates/{build-certificate-slug} | Delete a build certificate
[**buildCertificateList**](BuildCertificateAPI.md#buildcertificatelist) | **GET** /apps/{app-slug}/build-certificates | Get a list of the build certificates
[**buildCertificateShow**](BuildCertificateAPI.md#buildcertificateshow) | **GET** /apps/{app-slug}/build-certificates/{build-certificate-slug} | Get a specific build certificate
[**buildCertificateUpdate**](BuildCertificateAPI.md#buildcertificateupdate) | **PATCH** /apps/{app-slug}/build-certificates/{build-certificate-slug} | Update a build certificate


# **buildCertificateConfirm**
```swift
    open class func buildCertificateConfirm(appSlug: String, buildCertificateSlug: String, completion: @escaping (_ data: V0BuildCertificateResponseModel?, _ error: Error?) -> Void)
```

Confirm a build certificate upload

This is the last step of uploading a build certificate to Bitrise. Confirm the build certificate upload and view the file on the Code Signing tab of a specific app. Read more in our [Confirming the iOS code signing file upload](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#confirming-the-ios-code-signing-file-upload) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildCertificateSlug = "buildCertificateSlug_example" // String | Build certificate slug

// Confirm a build certificate upload
BuildCertificateAPI.buildCertificateConfirm(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug) { (response, error) in
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
 **buildCertificateSlug** | **String** | Build certificate slug | 

### Return type

[**V0BuildCertificateResponseModel**](V0BuildCertificateResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildCertificateCreate**
```swift
    open class func buildCertificateCreate(appSlug: String, buildCertificate: V0BuildCertificateUploadParams, completion: @escaping (_ data: V0BuildCertificateResponseModel?, _ error: Error?) -> Void)
```

Create a build certificate

Create a temporary pre-signed upload URL for the build certificate and upload the file to AWS with a simple `curl` request. To complete the uploading process and view your files on the Code Signing tab of your app, continue with the [POST /apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded](https://api-docs.bitrise.io/#/build-certificate/build-certificate-confirm) endpoint. Read more in our [Creating and uploading an iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#creating--uploading-an-ios-code-signing-file) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildCertificate = v0.BuildCertificateUploadParams(uploadFileName: "uploadFileName_example", uploadFileSize: 123) // V0BuildCertificateUploadParams | Build certificate parameters such as file name and its file size

// Create a build certificate
BuildCertificateAPI.buildCertificateCreate(appSlug: appSlug, buildCertificate: buildCertificate) { (response, error) in
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
 **buildCertificate** | [**V0BuildCertificateUploadParams**](V0BuildCertificateUploadParams.md) | Build certificate parameters such as file name and its file size | 

### Return type

[**V0BuildCertificateResponseModel**](V0BuildCertificateResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildCertificateDelete**
```swift
    open class func buildCertificateDelete(appSlug: String, buildCertificateSlug: String, completion: @escaping (_ data: V0BuildCertificateResponseModel?, _ error: Error?) -> Void)
```

Delete a build certificate

Delete an app's build certificate. You can fetch the build certificate slug for this endpoint if you first call the [GET /apps/{app-slug}/build-certificates](https://api-docs.bitrise.io/#/build-certificate/build-certificate-list) endpoint to list all available build certificates of an app. Read more in our [Deleting an iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#deleting-an-ios-code-signing-file) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildCertificateSlug = "buildCertificateSlug_example" // String | Build certificate slug

// Delete a build certificate
BuildCertificateAPI.buildCertificateDelete(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug) { (response, error) in
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
 **buildCertificateSlug** | **String** | Build certificate slug | 

### Return type

[**V0BuildCertificateResponseModel**](V0BuildCertificateResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildCertificateList**
```swift
    open class func buildCertificateList(appSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0BuildCertificateListResponseModel?, _ error: Error?) -> Void)
```

Get a list of the build certificates

List all the build certificates that have been uploaded to a specific app. Read more in our [Listing the uploaded iOS code signing files of an app](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#listing-the-uploaded-ios-code-signing-files-of-an-app) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let next = "next_example" // String | Slug of the first build certificate in the response (optional)
let limit = 987 // Int | Max number of build certificates per page is 50. (optional)

// Get a list of the build certificates
BuildCertificateAPI.buildCertificateList(appSlug: appSlug, next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first build certificate in the response | [optional] 
 **limit** | **Int** | Max number of build certificates per page is 50. | [optional] 

### Return type

[**V0BuildCertificateListResponseModel**](V0BuildCertificateListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildCertificateShow**
```swift
    open class func buildCertificateShow(appSlug: String, buildCertificateSlug: String, completion: @escaping (_ data: V0BuildCertificateResponseModel?, _ error: Error?) -> Void)
```

Get a specific build certificate

Retrieve data of a specific build certificate. You can fetch the build certificate slug for this endpoint if you first call the [GET /apps/{app-slug}/build-certificates](https://api-docs.bitrise.io/#/build-certificate/build-certificate-list) endpoint to list all available build certificates of an app. Read more in our [Getting a specific iOS code signing file's data](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#getting-a-specific-ios-code-signing-files-data) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildCertificateSlug = "buildCertificateSlug_example" // String | Build certificate slug

// Get a specific build certificate
BuildCertificateAPI.buildCertificateShow(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug) { (response, error) in
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
 **buildCertificateSlug** | **String** | Build certificate slug | 

### Return type

[**V0BuildCertificateResponseModel**](V0BuildCertificateResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **buildCertificateUpdate**
```swift
    open class func buildCertificateUpdate(appSlug: String, buildCertificateSlug: String, buildCertificate: V0BuildCertificateUpdateParams, completion: @escaping (_ data: V0BuildCertificateResponseModel?, _ error: Error?) -> Void)
```

Update a build certificate

Update an uploaded build certificate's attributes. You can fetch the build certificate slug for this endpoint if you first call the [GET /apps/{app-slug}/build-certificates](https://api-docs.bitrise.io/#/build-certificate/build-certificate-list) endpoint. Read more in our [Updating an uploaded iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#confirming-the-ios-code-signing-file-upload) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let buildCertificateSlug = "buildCertificateSlug_example" // String | Build certificate slug
let buildCertificate = v0.BuildCertificateUpdateParams(certificatePassword: "certificatePassword_example", isExpose: false, isProtected: false, processed: false) // V0BuildCertificateUpdateParams | Build certificate parameters

// Update a build certificate
BuildCertificateAPI.buildCertificateUpdate(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug, buildCertificate: buildCertificate) { (response, error) in
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
 **buildCertificateSlug** | **String** | Build certificate slug | 
 **buildCertificate** | [**V0BuildCertificateUpdateParams**](V0BuildCertificateUpdateParams.md) | Build certificate parameters | 

### Return type

[**V0BuildCertificateResponseModel**](V0BuildCertificateResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

