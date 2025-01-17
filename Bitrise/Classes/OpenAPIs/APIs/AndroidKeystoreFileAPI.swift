//
// AndroidKeystoreFileAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class AndroidKeystoreFileAPI {
    /**
     Create an Android keystore file
     
     - parameter appSlug: (path) App slug 
     - parameter androidKeystoreFile: (body) Android keystore file parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func androidKeystoreFileCreate(appSlug: String, androidKeystoreFile: V0AndroidKeystoreFileUploadParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0ProjectFileStorageResponseModel?,_ error: Error?) -> Void)) {
        androidKeystoreFileCreateWithRequestBuilder(appSlug: appSlug, androidKeystoreFile: androidKeystoreFile).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create an Android keystore file
     - POST /apps/{app-slug}/android-keystore-files
     - Add a new Android keystore file to an app
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter androidKeystoreFile: (body) Android keystore file parameters 
     - returns: RequestBuilder<V0ProjectFileStorageResponseModel> 
     */
    open class func androidKeystoreFileCreateWithRequestBuilder(appSlug: String, androidKeystoreFile: V0AndroidKeystoreFileUploadParams) -> RequestBuilder<V0ProjectFileStorageResponseModel> {
        var path = "/apps/{app-slug}/android-keystore-files"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: androidKeystoreFile)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0ProjectFileStorageResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Get a list of the android keystore files
     
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first android keystore file in the response (optional)
     - parameter limit: (query) Max number of build certificates per page is 50. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func androidKeystoreFileList(appSlug: String, next: String? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0ProjectFileStorageListResponseModel?,_ error: Error?) -> Void)) {
        androidKeystoreFileListWithRequestBuilder(appSlug: appSlug, next: next, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a list of the android keystore files
     - GET /apps/{app-slug}/android-keystore-files
     - List all the android keystore files that have been uploaded to a specific app.
     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first android keystore file in the response (optional)
     - parameter limit: (query) Max number of build certificates per page is 50. (optional)
     - returns: RequestBuilder<V0ProjectFileStorageListResponseModel> 
     */
    open class func androidKeystoreFileListWithRequestBuilder(appSlug: String, next: String? = nil, limit: Int? = nil) -> RequestBuilder<V0ProjectFileStorageListResponseModel> {
        var path = "/apps/{app-slug}/android-keystore-files"
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

        let requestBuilder: RequestBuilder<V0ProjectFileStorageListResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
