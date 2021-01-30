# AndroidKeystoreFileAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**androidKeystoreFileCreate**](AndroidKeystoreFileAPI.md#androidkeystorefilecreate) | **POST** /apps/{app-slug}/android-keystore-files | Create an Android keystore file
[**androidKeystoreFileList**](AndroidKeystoreFileAPI.md#androidkeystorefilelist) | **GET** /apps/{app-slug}/android-keystore-files | Get a list of the android keystore files


# **androidKeystoreFileCreate**
```swift
    open class func androidKeystoreFileCreate(appSlug: String, androidKeystoreFile: V0AndroidKeystoreFileUploadParams, completion: @escaping (_ data: V0ProjectFileStorageResponseModel?, _ error: Error?) -> Void)
```

Create an Android keystore file

Add a new Android keystore file to an app

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let androidKeystoreFile = v0.AndroidKeystoreFileUploadParams(alias: "alias_example", password: "password_example", privateKeyPassword: "privateKeyPassword_example", uploadFileName: "uploadFileName_example", uploadFileSize: 123) // V0AndroidKeystoreFileUploadParams | Android keystore file parameters

// Create an Android keystore file
AndroidKeystoreFileAPI.androidKeystoreFileCreate(appSlug: appSlug, androidKeystoreFile: androidKeystoreFile) { (response, error) in
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
 **androidKeystoreFile** | [**V0AndroidKeystoreFileUploadParams**](V0AndroidKeystoreFileUploadParams.md) | Android keystore file parameters | 

### Return type

[**V0ProjectFileStorageResponseModel**](V0ProjectFileStorageResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **androidKeystoreFileList**
```swift
    open class func androidKeystoreFileList(appSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0ProjectFileStorageListResponseModel?, _ error: Error?) -> Void)
```

Get a list of the android keystore files

List all the android keystore files that have been uploaded to a specific app.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let next = "next_example" // String | Slug of the first android keystore file in the response (optional)
let limit = 987 // Int | Max number of build certificates per page is 50. (optional)

// Get a list of the android keystore files
AndroidKeystoreFileAPI.androidKeystoreFileList(appSlug: appSlug, next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first android keystore file in the response | [optional] 
 **limit** | **Int** | Max number of build certificates per page is 50. | [optional] 

### Return type

[**V0ProjectFileStorageListResponseModel**](V0ProjectFileStorageListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

