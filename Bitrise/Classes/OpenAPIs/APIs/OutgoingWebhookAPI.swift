//
// OutgoingWebhookAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class OutgoingWebhookAPI {
    /**
     Create an outgoing webhook for an app
     
     - parameter appSlug: (path) App slug 
     - parameter appWebhookCreateParams: (body) App webhook creation params 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func outgoingWebhookCreate(appSlug: String, appWebhookCreateParams: V0AppWebhookCreateParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0AppWebhookCreatedResponseModel?,_ error: Error?) -> Void)) {
        outgoingWebhookCreateWithRequestBuilder(appSlug: appSlug, appWebhookCreateParams: appWebhookCreateParams).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create an outgoing webhook for an app
     - POST /apps/{app-slug}/outgoing-webhooks
     - Create an outgoing webhook for a specified Bitrise app: this can be used to send build events to a specified URL with custom headers. Currently, only build events can trigger outgoing webhooks.
     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter appWebhookCreateParams: (body) App webhook creation params 
     - returns: RequestBuilder<V0AppWebhookCreatedResponseModel> 
     */
    open class func outgoingWebhookCreateWithRequestBuilder(appSlug: String, appWebhookCreateParams: V0AppWebhookCreateParams) -> RequestBuilder<V0AppWebhookCreatedResponseModel> {
        var path = "/apps/{app-slug}/outgoing-webhooks"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appWebhookCreateParams)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AppWebhookCreatedResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete an outgoing webhook of an app
     
     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func outgoingWebhookDelete(appSlug: String, appWebhookSlug: String, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0AppWebhookDeletedResponseModel?,_ error: Error?) -> Void)) {
        outgoingWebhookDeleteWithRequestBuilder(appSlug: appSlug, appWebhookSlug: appWebhookSlug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete an outgoing webhook of an app
     - DELETE /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}
     - Delete an existing outgoing webhook for a specified Bitrise app.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - returns: RequestBuilder<V0AppWebhookDeletedResponseModel> 
     */
    open class func outgoingWebhookDeleteWithRequestBuilder(appSlug: String, appWebhookSlug: String) -> RequestBuilder<V0AppWebhookDeletedResponseModel> {
        var path = "/apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let appWebhookSlugPreEscape = "\(APIHelper.mapValueToPathItem(appWebhookSlug))"
        let appWebhookSlugPostEscape = appWebhookSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-webhook-slug}", with: appWebhookSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AppWebhookDeletedResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List the outgoing webhooks of an app
     
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first webhook in the response (optional)
     - parameter limit: (query) Max number of elements per page (default: 50) (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func outgoingWebhookList(appSlug: String, next: String? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0AppWebhookListResponseModel?,_ error: Error?) -> Void)) {
        outgoingWebhookListWithRequestBuilder(appSlug: appSlug, next: next, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List the outgoing webhooks of an app
     - GET /apps/{app-slug}/outgoing-webhooks
     - List all the outgoing webhooks registered for a specified Bitrise app. This returns all the relevant data of the webhook, including the slug of the webhook and its URL.
     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first webhook in the response (optional)
     - parameter limit: (query) Max number of elements per page (default: 50) (optional)
     - returns: RequestBuilder<V0AppWebhookListResponseModel> 
     */
    open class func outgoingWebhookListWithRequestBuilder(appSlug: String, next: String? = nil, limit: Int? = nil) -> RequestBuilder<V0AppWebhookListResponseModel> {
        var path = "/apps/{app-slug}/outgoing-webhooks"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "next": next?.encodeToJSON(), 
            "limit": limit?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<V0AppWebhookListResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update an outgoing webhook of an app
     
     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter appWebhookUpdateParams: (body) App webhook update params 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func outgoingWebhookUpdate(appSlug: String, appWebhookSlug: String, appWebhookUpdateParams: V0AppWebhookUpdateParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0AppWebhookResponseModel?,_ error: Error?) -> Void)) {
        outgoingWebhookUpdateWithRequestBuilder(appSlug: appSlug, appWebhookSlug: appWebhookSlug, appWebhookUpdateParams: appWebhookUpdateParams).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update an outgoing webhook of an app
     - PUT /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}
     - Update an existing outgoing webhook (URL, events, secrets and headers) for a specified Bitrise app. Even if you do not want to change one of the parameters, you still have to provide that parameter as well: simply use its existing value.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter appWebhookSlug: (path) App webhook slug 
     - parameter appWebhookUpdateParams: (body) App webhook update params 
     - returns: RequestBuilder<V0AppWebhookResponseModel> 
     */
    open class func outgoingWebhookUpdateWithRequestBuilder(appSlug: String, appWebhookSlug: String, appWebhookUpdateParams: V0AppWebhookUpdateParams) -> RequestBuilder<V0AppWebhookResponseModel> {
        var path = "/apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let appWebhookSlugPreEscape = "\(APIHelper.mapValueToPathItem(appWebhookSlug))"
        let appWebhookSlugPostEscape = appWebhookSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-webhook-slug}", with: appWebhookSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: appWebhookUpdateParams)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AppWebhookResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
