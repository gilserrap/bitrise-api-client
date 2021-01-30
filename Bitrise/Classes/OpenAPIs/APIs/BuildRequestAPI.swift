//
// BuildRequestAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class BuildRequestAPI {
    /**
     List the open build requests for an app
     
     - parameter appSlug: (path) App slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildRequestList(appSlug: String, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildRequestListResponseModel?,_ error: Error?) -> Void)) {
        buildRequestListWithRequestBuilder(appSlug: appSlug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     List the open build requests for an app
     - GET /apps/{app-slug}/build-requests
     - List the existing open build requests of a specified Bitrise app
     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - returns: RequestBuilder<V0BuildRequestListResponseModel> 
     */
    open class func buildRequestListWithRequestBuilder(appSlug: String) -> RequestBuilder<V0BuildRequestListResponseModel> {
        var path = "/apps/{app-slug}/build-requests"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildRequestListResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a build request
     
     - parameter appSlug: (path) App slug 
     - parameter buildRequestSlug: (path) Build request slug 
     - parameter buildRequest: (body) Build request parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildRequestUpdate(appSlug: String, buildRequestSlug: String, buildRequest: V0BuildRequestUpdateParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildRequestUpdateResponseModel?,_ error: Error?) -> Void)) {
        buildRequestUpdateWithRequestBuilder(appSlug: appSlug, buildRequestSlug: buildRequestSlug, buildRequest: buildRequest).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a build request
     - PATCH /apps/{app-slug}/build-requests/{build-request-slug}
     - Update a specific build request of a specific app
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter buildRequestSlug: (path) Build request slug 
     - parameter buildRequest: (body) Build request parameters 
     - returns: RequestBuilder<V0BuildRequestUpdateResponseModel> 
     */
    open class func buildRequestUpdateWithRequestBuilder(appSlug: String, buildRequestSlug: String, buildRequest: V0BuildRequestUpdateParams) -> RequestBuilder<V0BuildRequestUpdateResponseModel> {
        var path = "/apps/{app-slug}/build-requests/{build-request-slug}"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildRequestSlugPreEscape = "\(APIHelper.mapValueToPathItem(buildRequestSlug))"
        let buildRequestSlugPostEscape = buildRequestSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-request-slug}", with: buildRequestSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: buildRequest)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildRequestUpdateResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
