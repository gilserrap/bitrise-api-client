# OrganizationsAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**orgList**](OrganizationsAPI.md#orglist) | **GET** /organizations | List the organizations that the user is part of
[**orgShow**](OrganizationsAPI.md#orgshow) | **GET** /organizations/{org-slug} | Get a specified organization.


# **orgList**
```swift
    open class func orgList(completion: @escaping (_ data: V0OrganizationListRespModel?, _ error: Error?) -> Void)
```

List the organizations that the user is part of

List all Bitrise organizations that the user is part of

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise


// List the organizations that the user is part of
OrganizationsAPI.orgList() { (response, error) in
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

[**V0OrganizationListRespModel**](V0OrganizationListRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orgShow**
```swift
    open class func orgShow(orgSlug: String, completion: @escaping (_ data: V0OrganizationRespModel?, _ error: Error?) -> Void)
```

Get a specified organization.

Get a specified Bitrise organization that the user is part of.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let orgSlug = "orgSlug_example" // String | The organization slug

// Get a specified organization.
OrganizationsAPI.orgShow(orgSlug: orgSlug) { (response, error) in
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
 **orgSlug** | **String** | The organization slug | 

### Return type

[**V0OrganizationRespModel**](V0OrganizationRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

