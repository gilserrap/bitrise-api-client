# WebhookDeliveryItemAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhookDeliveryItemList**](WebhookDeliveryItemAPI.md#webhookdeliveryitemlist) | **GET** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items | List the webhook delivery items of an app
[**webhookDeliveryItemRedeliver**](WebhookDeliveryItemAPI.md#webhookdeliveryitemredeliver) | **POST** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug}/redeliver | Re-deliver the webhook delivery items of an app
[**webhookDeliveryItemShow**](WebhookDeliveryItemAPI.md#webhookdeliveryitemshow) | **GET** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug} | Get a specific delivery item of a webhook


# **webhookDeliveryItemList**
```swift
    open class func webhookDeliveryItemList(appSlug: String, appWebhookSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping (_ data: V0WebhookDeliveryItemShowResponseModel?, _ error: Error?) -> Void)
```

List the webhook delivery items of an app

List all the delivery items of an outgoing webhook of a Bitrise application

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let appWebhookSlug = "appWebhookSlug_example" // String | App webhook slug
let next = "next_example" // String | Slug of the first delivery item in the response (optional)
let limit = 987 // Int | Max number of elements per page (default: 50) (optional)

// List the webhook delivery items of an app
WebhookDeliveryItemAPI.webhookDeliveryItemList(appSlug: appSlug, appWebhookSlug: appWebhookSlug, next: next, limit: limit) { (response, error) in
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
 **next** | **String** | Slug of the first delivery item in the response | [optional] 
 **limit** | **Int** | Max number of elements per page (default: 50) | [optional] 

### Return type

[**V0WebhookDeliveryItemShowResponseModel**](V0WebhookDeliveryItemShowResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhookDeliveryItemRedeliver**
```swift
    open class func webhookDeliveryItemRedeliver(appSlug: String, appWebhookSlug: String, webhookDeliveryItemSlug: String, completion: @escaping (_ data: ServiceStandardErrorRespModel?, _ error: Error?) -> Void)
```

Re-deliver the webhook delivery items of an app

Re-deliver the delivery item of a specified webhook of a Bitrise application

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let appWebhookSlug = "appWebhookSlug_example" // String | App webhook slug
let webhookDeliveryItemSlug = "webhookDeliveryItemSlug_example" // String | Webhook delivery item slug

// Re-deliver the webhook delivery items of an app
WebhookDeliveryItemAPI.webhookDeliveryItemRedeliver(appSlug: appSlug, appWebhookSlug: appWebhookSlug, webhookDeliveryItemSlug: webhookDeliveryItemSlug) { (response, error) in
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
 **webhookDeliveryItemSlug** | **String** | Webhook delivery item slug | 

### Return type

[**ServiceStandardErrorRespModel**](ServiceStandardErrorRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhookDeliveryItemShow**
```swift
    open class func webhookDeliveryItemShow(appSlug: String, appWebhookSlug: String, webhookDeliveryItemSlug: String, completion: @escaping (_ data: V0WebhookDeliveryItemResponseModel?, _ error: Error?) -> Void)
```

Get a specific delivery item of a webhook

Get the specified delivery item of an outgoing webhook of a Bitrise application

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let appWebhookSlug = "appWebhookSlug_example" // String | App webhook slug
let webhookDeliveryItemSlug = "webhookDeliveryItemSlug_example" // String | Webhook delivery item slug

// Get a specific delivery item of a webhook
WebhookDeliveryItemAPI.webhookDeliveryItemShow(appSlug: appSlug, appWebhookSlug: appWebhookSlug, webhookDeliveryItemSlug: webhookDeliveryItemSlug) { (response, error) in
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
 **webhookDeliveryItemSlug** | **String** | Webhook delivery item slug | 

### Return type

[**V0WebhookDeliveryItemResponseModel**](V0WebhookDeliveryItemResponseModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

