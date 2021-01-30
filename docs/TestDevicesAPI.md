# TestDevicesAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testDeviceList**](TestDevicesAPI.md#testdevicelist) | **GET** /apps/{app-slug}/test-devices | List the test devices for an app


# **testDeviceList**
```swift
    open class func testDeviceList(appSlug: String, completion: @escaping (_ data: V0TestDeviceListResponseModel?, _ error: Error?) -> Void)
```

List the test devices for an app

List registered test devices of all members of a specified Bitrise app

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// List the test devices for an app
TestDevicesAPI.testDeviceList(appSlug: appSlug) { (response, error) in
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

[**V0TestDeviceListResponseModel**](V0TestDeviceListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

