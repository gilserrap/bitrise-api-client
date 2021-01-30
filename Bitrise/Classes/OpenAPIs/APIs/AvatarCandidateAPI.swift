//
// AvatarCandidateAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class AvatarCandidateAPI {
    /**
     Create avatar candidates
     
     - parameter appSlug: (path) App slug 
     - parameter avatarCandidate: (body) Avatar candidate parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func avatarCandidateCreate(appSlug: String, avatarCandidate: [V0AvatarCandidateCreateParams], apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: [V0AvatarCandidateCreateResponseItem]?,_ error: Error?) -> Void)) {
        avatarCandidateCreateWithRequestBuilder(appSlug: appSlug, avatarCandidate: avatarCandidate).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create avatar candidates
     - POST /apps/{app-slug}/avatar-candidates
     - Add new avatar candidates to a specific app
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter avatarCandidate: (body) Avatar candidate parameters 
     - returns: RequestBuilder<[V0AvatarCandidateCreateResponseItem]> 
     */
    open class func avatarCandidateCreateWithRequestBuilder(appSlug: String, avatarCandidate: [V0AvatarCandidateCreateParams]) -> RequestBuilder<[V0AvatarCandidateCreateResponseItem]> {
        var path = "/apps/{app-slug}/avatar-candidates"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: avatarCandidate)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[V0AvatarCandidateCreateResponseItem]>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get list of the avatar candidates
     
     - parameter appSlug: (path) App slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func avatarCandidateList(appSlug: String, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0FindAvatarCandidateResponse?,_ error: Error?) -> Void)) {
        avatarCandidateListWithRequestBuilder(appSlug: appSlug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get list of the avatar candidates
     - GET /v0.1/apps/{app-slug}/avatar-candidates
     - List all available avatar candidates for an application
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - returns: RequestBuilder<V0FindAvatarCandidateResponse> 
     */
    open class func avatarCandidateListWithRequestBuilder(appSlug: String) -> RequestBuilder<V0FindAvatarCandidateResponse> {
        var path = "/v0.1/apps/{app-slug}/avatar-candidates"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0FindAvatarCandidateResponse>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Promote an avatar candidate
     
     - parameter appSlug: (path) App slug 
     - parameter avatarSlug: (path) Avatar candidate slug 
     - parameter avatarPromoteParams: (body) Avatar promote parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func avatarCandidatePromote(appSlug: String, avatarSlug: String, avatarPromoteParams: V0AvatarPromoteParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0AvatarPromoteResponseModel?,_ error: Error?) -> Void)) {
        avatarCandidatePromoteWithRequestBuilder(appSlug: appSlug, avatarSlug: avatarSlug, avatarPromoteParams: avatarPromoteParams).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Promote an avatar candidate
     - PATCH /apps/{app-slug}/avatar-candidates/{avatar-slug}
     - Promotes an avatar candidate for an app
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter avatarSlug: (path) Avatar candidate slug 
     - parameter avatarPromoteParams: (body) Avatar promote parameters 
     - returns: RequestBuilder<V0AvatarPromoteResponseModel> 
     */
    open class func avatarCandidatePromoteWithRequestBuilder(appSlug: String, avatarSlug: String, avatarPromoteParams: V0AvatarPromoteParams) -> RequestBuilder<V0AvatarPromoteResponseModel> {
        var path = "/apps/{app-slug}/avatar-candidates/{avatar-slug}"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let avatarSlugPreEscape = "\(APIHelper.mapValueToPathItem(avatarSlug))"
        let avatarSlugPostEscape = avatarSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{avatar-slug}", with: avatarSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: avatarPromoteParams)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0AvatarPromoteResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
