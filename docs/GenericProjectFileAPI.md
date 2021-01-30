# GenericProjectFileAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**genericProjectFileConfirm**](GenericProjectFileAPI.md#genericprojectfileconfirm) | **POST** /apps/{app-slug}/generic-project-files/{generic-project-file-slug}/uploaded | Confirm a generic project file upload
[**genericProjectFileDelete**](GenericProjectFileAPI.md#genericprojectfiledelete) | **DELETE** /apps/{app-slug}/generic-project-files/{generic-project-file-slug} | Delete a generic project file
[**genericProjectFileList**](GenericProjectFileAPI.md#genericprojectfilelist) | **GET** /apps/{app-slug}/generic-project-files | Get a list of the generic project files
[**genericProjectFileShow**](GenericProjectFileAPI.md#genericprojectfileshow) | **GET** /apps/{app-slug}/generic-project-files/{generic-project-file-slug} | Get a specific generic project file
[**genericProjectFileUpdate**](GenericProjectFileAPI.md#genericprojectfileupdate) | **PATCH** /apps/{app-slug}/generic-project-files/{generic-project-file-slug} | Update a generic project file
[**genericProjectFilesCreate**](GenericProjectFileAPI.md#genericprojectfilescreate) | **POST** /apps/{app-slug}/generic-project-files | Create a generic project file


# **genericProjectFileConfirm**
```swift
    open class func genericProjectFileConfirm(appSlug: String, genericProjectFileSlug: String, completion: @escaping (_ data: V0ProjectFileStorageResponseModel?, _ error: Error?) -> Void)
```

Confirm a generic project file upload

This is the last step of uploading a generic project file to Bitrise. Confirm the generic project file upload and view the file on the Code Signing tab of a specific app. Read more in our [Confirming the upload](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#confirming-the-file-upload) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let genericProjectFileSlug = "genericProjectFileSlug_example" // String | Generic project file slug

// Confirm a generic project file upload
GenericProjectFileAPI.genericProjectFileConfirm(appSlug: appSlug, genericProjectFileSlug: genericProjectFileSlug) { (response, error) in
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
 **genericProjectFileSlug** | **String** | Generic project file slug | 

### Return type

[**V0ProjectFileStorageResponseModel**](V0ProjectFileStorageResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **genericProjectFileDelete**
```swift
    open class func genericProjectFileDelete(appSlug: String, genericProjectFileSlug: String, completion: @escaping (_ data: V0ProjectFileStorageResponseModel?, _ error: Error?) -> Void)
```

Delete a generic project file

Delete an app's generic project file. You can fetch an app's generic project file slug if you first list all the uploaded files with the [GET /apps/{app-slug}/generic-project-files](https://api-docs.bitrise.io/#/generic-project-file/generic-project-file-list) endpoint. Read more in our [Deleting a file](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#deleting-a-file) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let genericProjectFileSlug = "genericProjectFileSlug_example" // String | Generic project file slug

// Delete a generic project file
GenericProjectFileAPI.genericProjectFileDelete(appSlug: appSlug, genericProjectFileSlug: genericProjectFileSlug) { (response, error) in
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
 **genericProjectFileSlug** | **String** | Generic project file slug | 

### Return type

[**V0ProjectFileStorageResponseModel**](V0ProjectFileStorageResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **genericProjectFileList**
```swift
    open class func genericProjectFileList(appSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0ProjectFileStorageListResponseModel?, _ error: Error?) -> Void)
```

Get a list of the generic project files

List all the generic project files that have been uploaded to a specific app. Read more in our [Listing the uploaded files of an app](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#listing-the-uploaded-files-of-an-app) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let next = "next_example" // String | Slug of the first generic project file in the response (optional)
let limit = 987 // Int | Max number of build certificates per page is 50. (optional)

// Get a list of the generic project files
GenericProjectFileAPI.genericProjectFileList(appSlug: appSlug, next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first generic project file in the response | [optional] 
 **limit** | **Int** | Max number of build certificates per page is 50. | [optional] 

### Return type

[**V0ProjectFileStorageListResponseModel**](V0ProjectFileStorageListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **genericProjectFileShow**
```swift
    open class func genericProjectFileShow(appSlug: String, genericProjectFileSlug: String, completion: @escaping (_ data: V0ProjectFileStorageResponseModel?, _ error: Error?) -> Void)
```

Get a specific generic project file

Retrieve data of a specific generic project file to check its attributes and optionally modify them with the [PATCH /apps/](https://api-docs.bitrise.io/#/generic-project-file/generic-project-file-update) endpoint. Read more in our [Retrieving a specific file's data](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#retrieving-a-specific-files-data) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let genericProjectFileSlug = "genericProjectFileSlug_example" // String | Generic project file slug

// Get a specific generic project file
GenericProjectFileAPI.genericProjectFileShow(appSlug: appSlug, genericProjectFileSlug: genericProjectFileSlug) { (response, error) in
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
 **genericProjectFileSlug** | **String** | Generic project file slug | 

### Return type

[**V0ProjectFileStorageResponseModel**](V0ProjectFileStorageResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **genericProjectFileUpdate**
```swift
    open class func genericProjectFileUpdate(appSlug: String, genericProjectFileSlug: String, genericProjectFile: V0ProjectFileStorageDocumentUpdateParams, completion: @escaping (_ data: V0ProjectFileStorageResponseModel?, _ error: Error?) -> Void)
```

Update a generic project file

Update a generic project file's attributes. You can fetch an app's generic project file slug if you first list all the uploaded files with the [GET /apps/{app-slug}/generic-project-files](https://api-docs.bitrise.io/#/generic-project-file/generic-project-file-list) endpoint. Read more in our [Updating an uploaded file](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#updating-an-uploaded-file) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let genericProjectFileSlug = "genericProjectFileSlug_example" // String | Generic project file slug
let genericProjectFile = v0.ProjectFileStorageDocumentUpdateParams(exposedMetaDatastore: "exposedMetaDatastore_example", isExpose: false, isProtected: false, processed: false, userEnvKey: "userEnvKey_example") // V0ProjectFileStorageDocumentUpdateParams | Generic project file parameters

// Update a generic project file
GenericProjectFileAPI.genericProjectFileUpdate(appSlug: appSlug, genericProjectFileSlug: genericProjectFileSlug, genericProjectFile: genericProjectFile) { (response, error) in
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
 **genericProjectFileSlug** | **String** | Generic project file slug | 
 **genericProjectFile** | [**V0ProjectFileStorageDocumentUpdateParams**](V0ProjectFileStorageDocumentUpdateParams.md) | Generic project file parameters | 

### Return type

[**V0ProjectFileStorageResponseModel**](V0ProjectFileStorageResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **genericProjectFilesCreate**
```swift
    open class func genericProjectFilesCreate(appSlug: String, genericProjectFile: V0ProjectFileStorageUploadParams, completion: @escaping (_ data: V0ProjectFileStorageResponseModel?, _ error: Error?) -> Void)
```

Create a generic project file

Create a temporary pre-signed upload URL (expires in 10 minutes) for the generic project file and upload it to AWS with a simple `curl` request. To complete the uploading process and view your files on the Code Signing tab of your app, continue with the [POST /apps/{app-slug}/generic-project-files/{generic-project-file-slug}/uploaded](https://api-docs.bitrise.io/#/generic-project-file/generic-project-file-confirm) endpoint. Read more in our [Creating and uploading files to Generic File Storage](https://devcenter.bitrise.io/api/managing-files-in-generic-file-storage/#creating-and-uploading-files-to-generic-file-storage) guide.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let genericProjectFile = v0.ProjectFileStorageUploadParams(uploadFileName: "uploadFileName_example", uploadFileSize: 123, userEnvKey: "userEnvKey_example") // V0ProjectFileStorageUploadParams | Generic project file parameters

// Create a generic project file
GenericProjectFileAPI.genericProjectFilesCreate(appSlug: appSlug, genericProjectFile: genericProjectFile) { (response, error) in
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
 **genericProjectFile** | [**V0ProjectFileStorageUploadParams**](V0ProjectFileStorageUploadParams.md) | Generic project file parameters | 

### Return type

[**V0ProjectFileStorageResponseModel**](V0ProjectFileStorageResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

