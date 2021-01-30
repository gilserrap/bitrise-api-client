# OutgoingWebhookAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**outgoingWebhookCreate**](OutgoingWebhookAPI.md#outgoingwebhookcreate) | **POST** /apps/{app-slug}/outgoing-webhooks | Create an outgoing webhook for an app
[**outgoingWebhookDelete**](OutgoingWebhookAPI.md#outgoingwebhookdelete) | **DELETE** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug} | Delete an outgoing webhook of an app
[**outgoingWebhookList**](OutgoingWebhookAPI.md#outgoingwebhooklist) | **GET** /apps/{app-slug}/outgoing-webhooks | List the outgoing webhooks of an app
[**outgoingWebhookUpdate**](OutgoingWebhookAPI.md#outgoingwebhookupdate) | **PUT** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug} | Update an outgoing webhook of an app


# **outgoingWebhookCreate**
```swift
    open class func outgoingWebhookCreate(appSlug: String, appWebhookCreateParams: V0AppWebhookCreateParams, completion: @escaping (_ data: V0AppWebhookCreatedResponseModel?, _ error: Error?) -> Void)
```

Create an outgoing webhook for an app

Create an outgoing webhook for a specified Bitrise app: this can be used to send build events to a specified URL with custom headers. Currently, only build events can trigger outgoing webhooks.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let appWebhookCreateParams = v0.AppWebhookCreateParams(events: ["events_example"], headers: "headers_example", secret: "secret_example", url: "url_example") // V0AppWebhookCreateParams | App webhook creation params

// Create an outgoing webhook for an app
OutgoingWebhookAPI.outgoingWebhookCreate(appSlug: appSlug, appWebhookCreateParams: appWebhookCreateParams) { (response, error) in
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
 **appWebhookCreateParams** | [**V0AppWebhookCreateParams**](V0AppWebhookCreateParams.md) | App webhook creation params | 

### Return type

[**V0AppWebhookCreatedResponseModel**](V0AppWebhookCreatedResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **outgoingWebhookDelete**
```swift
    open class func outgoingWebhookDelete(appSlug: String, appWebhookSlug: String, completion: @escaping (_ data: V0AppWebhookDeletedResponseModel?, _ error: Error?) -> Void)
```

Delete an outgoing webhook of an app

Delete an existing outgoing webhook for a specified Bitrise app.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let appWebhookSlug = "appWebhookSlug_example" // String | App webhook slug

// Delete an outgoing webhook of an app
OutgoingWebhookAPI.outgoingWebhookDelete(appSlug: appSlug, appWebhookSlug: appWebhookSlug) { (response, error) in
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
 **appWebhookSlug** | **String** | App webhook slug | 

### Return type

[**V0AppWebhookDeletedResponseModel**](V0AppWebhookDeletedResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **outgoingWebhookList**
```swift
    open class func outgoingWebhookList(appSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0AppWebhookListResponseModel?, _ error: Error?) -> Void)
```

List the outgoing webhooks of an app

List all the outgoing webhooks registered for a specified Bitrise app. This returns all the relevant data of the webhook, including the slug of the webhook and its URL.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let next = "next_example" // String | Slug of the first webhook in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// List the outgoing webhooks of an app
OutgoingWebhookAPI.outgoingWebhookList(appSlug: appSlug, next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first webhook in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0AppWebhookListResponseModel**](V0AppWebhookListResponseModel.md)

### Authorization

[AddonAuthToken](../README.md#AddonAuthToken), [PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **outgoingWebhookUpdate**
```swift
    open class func outgoingWebhookUpdate(appSlug: String, appWebhookSlug: String, appWebhookUpdateParams: V0AppWebhookUpdateParams, completion: @escaping (_ data: V0AppWebhookResponseModel?, _ error: Error?) -> Void)
```

Update an outgoing webhook of an app

Update an existing outgoing webhook (URL, events, secrets and headers) for a specified Bitrise app. Even if you do not want to change one of the parameters, you still have to provide that parameter as well: simply use its existing value.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let appWebhookSlug = "appWebhookSlug_example" // String | App webhook slug
let appWebhookUpdateParams = v0.AppWebhookUpdateParams(events: "events_example", headers: "headers_example", url: "url_example") // V0AppWebhookUpdateParams | App webhook update params

// Update an outgoing webhook of an app
OutgoingWebhookAPI.outgoingWebhookUpdate(appSlug: appSlug, appWebhookSlug: appWebhookSlug, appWebhookUpdateParams: appWebhookUpdateParams) { (response, error) in
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
 **appWebhookSlug** | **String** | App webhook slug | 
 **appWebhookUpdateParams** | [**V0AppWebhookUpdateParams**](V0AppWebhookUpdateParams.md) | App webhook update params | 

### Return type

[**V0AppWebhookResponseModel**](V0AppWebhookResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

