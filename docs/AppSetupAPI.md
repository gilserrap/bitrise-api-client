# AppSetupAPI

All URIs are relative to *https://api.bitrise.io/v0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**appConfigCreate**](AppSetupAPI.md#appconfigcreate) | **POST** /apps/{app-slug}/bitrise.yml | Upload a new bitrise.yml for your application.
[**appCreate**](AppSetupAPI.md#appcreate) | **POST** /apps/register | Add a new app
[**appFinish**](AppSetupAPI.md#appfinish) | **POST** /apps/{app-slug}/finish | Save the application at the end of the app registration process
[**appWebhookCreate**](AppSetupAPI.md#appwebhookcreate) | **POST** /apps/{app-slug}/register-webhook | Register an incoming webhook for a specific application
[**sshKeyCreate**](AppSetupAPI.md#sshkeycreate) | **POST** /apps/{app-slug}/register-ssh-key | Add an SSH-key to a specific app


# **appConfigCreate**
```swift
    open class func appConfigCreate(appSlug: String, appConfig: V0AppConfigRequestParam, completion: @escaping (_ data: [String:String]?, _ error: Error?) -> Void)
```

Upload a new bitrise.yml for your application.

Upload a new bitrise.yml for your application.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let appConfig = v0.AppConfigRequestParam(appConfigDatastoreYaml: "appConfigDatastoreYaml_example") // V0AppConfigRequestParam | App config parameters

// Upload a new bitrise.yml for your application.
AppSetupAPI.appConfigCreate(appSlug: appSlug, appConfig: appConfig) { (response, error) in
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
 **appConfig** | [**V0AppConfigRequestParam**](V0AppConfigRequestParam.md) | App config parameters | 

### Return type

**[String:String]**

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appCreate**
```swift
    open class func appCreate(app: V0AppUploadParams, completion: @escaping (_ data: V0AppRespModel?, _ error: Error?) -> Void)
```

Add a new app

Add a new app to Bitrise. This is the first step of the app registration process. To successfully set it up, you need to provide the required app parameters: your git provider, the repository URL, the slug of the repository as it appears at the provider, and the slug of the owner of the repository. Read more about the app creation process in our [detailed guide](https://devcenter.bitrise.io/api/adding-and-managing-apps/#adding-a-new-app).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let app = v0.AppUploadParams(gitOwner: "gitOwner_example", gitRepoSlug: "gitRepoSlug_example", isPublic: false, provider: "provider_example", repoUrl: "repoUrl_example", type: "type_example") // V0AppUploadParams | App parameters

// Add a new app
AppSetupAPI.appCreate(app: app) { (response, error) in
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
 **app** | [**V0AppUploadParams**](V0AppUploadParams.md) | App parameters | 

### Return type

[**V0AppRespModel**](V0AppRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appFinish**
```swift
    open class func appFinish(appSlug: String, app: V0AppFinishParams, completion: @escaping (_ data: V0AppFinishRespModel?, _ error: Error?) -> Void)
```

Save the application at the end of the app registration process

Save the application after registering it on Bitrise and registering an SSH key (and, optionally, adding a webhook). With this endpoint you can define the initial configuration, define application-level environment variables, determine the project type, and set an Organization to be the owner of the app. Read more about the app registration process in our [detailed guide](https://devcenter.bitrise.io/api/adding-and-managing-apps/#adding-a-new-app).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let app = v0.AppFinishParams(config: "config_example", envs: "TODO", mode: "mode_example", organizationSlug: "organizationSlug_example", projectType: "projectType_example", stackId: "stackId_example") // V0AppFinishParams | App finish parameters

// Save the application at the end of the app registration process
AppSetupAPI.appFinish(appSlug: appSlug, app: app) { (response, error) in
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
 **app** | [**V0AppFinishParams**](V0AppFinishParams.md) | App finish parameters | 

### Return type

[**V0AppFinishRespModel**](V0AppFinishRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **appWebhookCreate**
```swift
    open class func appWebhookCreate(appSlug: String, completion: @escaping (_ data: V0WebhookRespModel?, _ error: Error?) -> Void)
```

Register an incoming webhook for a specific application

[Register an incoming webhook](https://devcenter.bitrise.io/api/incoming-and-outgoing-webhooks/#incoming-webhooks) for a specific application. You can do this during the app registration process or at any other time in an app's life. When calling this endpoint, a webhook is registered at your git provider: this is necessary to automatically trigger builds on Bitrise.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug

// Register an incoming webhook for a specific application
AppSetupAPI.appWebhookCreate(appSlug: appSlug) { (response, error) in
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

[**V0WebhookRespModel**](V0WebhookRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sshKeyCreate**
```swift
    open class func sshKeyCreate(appSlug: String, sshKey: V0SSHKeyUploadParams, completion: @escaping (_ data: V0SSHKeyRespModel?, _ error: Error?) -> Void)
```

Add an SSH-key to a specific app

Add an SSH-key to a specific app. After creating an app, you need to register the SSH key so that Bitrise will be able to access and clone your repository during the build process. This requires the app slug of your newly created app.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Bitrise

let appSlug = "appSlug_example" // String | App slug
let sshKey = v0.SSHKeyUploadParams(authSshPrivateKey: "authSshPrivateKey_example", authSshPublicKey: "authSshPublicKey_example", isRegisterKeyIntoProviderService: false) // V0SSHKeyUploadParams | SSH key parameters

// Add an SSH-key to a specific app
AppSetupAPI.sshKeyCreate(appSlug: appSlug, sshKey: sshKey) { (response, error) in
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
 **sshKey** | [**V0SSHKeyUploadParams**](V0SSHKeyUploadParams.md) | SSH key parameters | 

### Return type

[**V0SSHKeyRespModel**](V0SSHKeyRespModel.md)

### Authorization

[PersonalAccessToken](../README.md#PersonalAccessToken)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

