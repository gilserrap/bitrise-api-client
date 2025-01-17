//
// AppSetupAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class AppSetupAPI {
    /**
     Upload a new bitrise.yml for your application.
     
     - parameter appSlug: (path) App slug 
     - parameter appConfig: (body) App config parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appConfigCreate(appSlug: String, appConfig: V0AppConfigRequestParam, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: [String:String]?,_ error: Error?) -> Void)) {
        appConfigCreateWithRequestBuilder(appSlug: appSlug, appConfig: appConfig).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Upload a new bitrise.yml for your application.
     - POST /apps/{app-slug}/bitrise.yml
     - Upload a new bitrise.yml for your application.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter appConfig: (body) App config parameters 
     - returns: RequestBuilder<[String:String]> 
     */
    open class func appConfigCreateWithRequestBuilder(appSlug: String, appConfig: V0AppConfigRequestParam) -> RequestBuilder<[String:String]> {
        var path = "/apps/{app-slug}/bitrise.yml"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appConfig)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[String:String]>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Add a new app
     
     - parameter app: (body) App parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appCreate(app: V0AppUploadParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0AppRespModel?,_ error: Error?) -> Void)) {
        appCreateWithRequestBuilder(app: app).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add a new app
     - POST /apps/register
     - Add a new app to Bitrise. This is the first step of the app registration process. To successfully set it up, you need to provide the required app parameters: your git provider, the repository URL, the slug of the repository as it appears at the provider, and the slug of the owner of the repository. Read more about the app creation process in our [detailed guide](https://devcenter.bitrise.io/api/adding-and-managing-apps/#adding-a-new-app).
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter app: (body) App parameters 
     - returns: RequestBuilder<V0AppRespModel> 
     */
    open class func appCreateWithRequestBuilder(app: V0AppUploadParams) -> RequestBuilder<V0AppRespModel> {
        let path = "/apps/register"
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: app)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AppRespModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Save the application at the end of the app registration process
     
     - parameter appSlug: (path) App slug 
     - parameter app: (body) App finish parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appFinish(appSlug: String, app: V0AppFinishParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0AppFinishRespModel?,_ error: Error?) -> Void)) {
        appFinishWithRequestBuilder(appSlug: appSlug, app: app).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Save the application at the end of the app registration process
     - POST /apps/{app-slug}/finish
     - Save the application after registering it on Bitrise and registering an SSH key (and, optionally, adding a webhook). With this endpoint you can define the initial configuration, define application-level environment variables, determine the project type, and set an Organization to be the owner of the app. Read more about the app registration process in our [detailed guide](https://devcenter.bitrise.io/api/adding-and-managing-apps/#adding-a-new-app).
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter app: (body) App finish parameters 
     - returns: RequestBuilder<V0AppFinishRespModel> 
     */
    open class func appFinishWithRequestBuilder(appSlug: String, app: V0AppFinishParams) -> RequestBuilder<V0AppFinishRespModel> {
        var path = "/apps/{app-slug}/finish"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: app)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AppFinishRespModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Register an incoming webhook for a specific application
     
     - parameter appSlug: (path) App slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appWebhookCreate(appSlug: String, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0WebhookRespModel?,_ error: Error?) -> Void)) {
        appWebhookCreateWithRequestBuilder(appSlug: appSlug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Register an incoming webhook for a specific application
     - POST /apps/{app-slug}/register-webhook
     - [Register an incoming webhook](https://devcenter.bitrise.io/api/incoming-and-outgoing-webhooks/#incoming-webhooks) for a specific application. You can do this during the app registration process or at any other time in an app's life. When calling this endpoint, a webhook is registered at your git provider: this is necessary to automatically trigger builds on Bitrise.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - returns: RequestBuilder<V0WebhookRespModel> 
     */
    open class func appWebhookCreateWithRequestBuilder(appSlug: String) -> RequestBuilder<V0WebhookRespModel> {
        var path = "/apps/{app-slug}/register-webhook"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0WebhookRespModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Add an SSH-key to a specific app
     
     - parameter appSlug: (path) App slug 
     - parameter sshKey: (body) SSH key parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sshKeyCreate(appSlug: String, sshKey: V0SSHKeyUploadParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0SSHKeyRespModel?,_ error: Error?) -> Void)) {
        sshKeyCreateWithRequestBuilder(appSlug: appSlug, sshKey: sshKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Add an SSH-key to a specific app
     - POST /apps/{app-slug}/register-ssh-key
     - Add an SSH-key to a specific app. After creating an app, you need to register the SSH key so that Bitrise will be able to access and clone your repository during the build process. This requires the app slug of your newly created app.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter sshKey: (body) SSH key parameters 
     - returns: RequestBuilder<V0SSHKeyRespModel> 
     */
    open class func sshKeyCreateWithRequestBuilder(appSlug: String, sshKey: V0SSHKeyUploadParams) -> RequestBuilder<V0SSHKeyRespModel> {
        var path = "/apps/{app-slug}/register-ssh-key"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: sshKey)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0SSHKeyRespModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
