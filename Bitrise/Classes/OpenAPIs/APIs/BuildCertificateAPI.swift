//
// BuildCertificateAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class BuildCertificateAPI {
    /**
     Confirm a build certificate upload
     
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateConfirm(appSlug: String, buildCertificateSlug: String, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateConfirmWithRequestBuilder(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Confirm a build certificate upload
     - POST /apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded
     - This is the last step of uploading a build certificate to Bitrise. Confirm the build certificate upload and view the file on the Code Signing tab of a specific app. Read more in our [Confirming the iOS code signing file upload](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#confirming-the-ios-code-signing-file-upload) guide.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateConfirmWithRequestBuilder(appSlug: String, buildCertificateSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(APIHelper.mapValueToPathItem(buildCertificateSlug))"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Create a build certificate
     
     - parameter appSlug: (path) App slug 
     - parameter buildCertificate: (body) Build certificate parameters such as file name and its file size 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateCreate(appSlug: String, buildCertificate: V0BuildCertificateUploadParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateCreateWithRequestBuilder(appSlug: appSlug, buildCertificate: buildCertificate).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create a build certificate
     - POST /apps/{app-slug}/build-certificates
     - Create a temporary pre-signed upload URL for the build certificate and upload the file to AWS with a simple `curl` request. To complete the uploading process and view your files on the Code Signing tab of your app, continue with the [POST /apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded](https://api-docs.bitrise.io/#/build-certificate/build-certificate-confirm) endpoint. Read more in our [Creating and uploading an iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#creating--uploading-an-ios-code-signing-file) guide.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter buildCertificate: (body) Build certificate parameters such as file name and its file size 
     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateCreateWithRequestBuilder(appSlug: String, buildCertificate: V0BuildCertificateUploadParams) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: buildCertificate)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Delete a build certificate
     
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateDelete(appSlug: String, buildCertificateSlug: String, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateDeleteWithRequestBuilder(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete a build certificate
     - DELETE /apps/{app-slug}/build-certificates/{build-certificate-slug}
     - Delete an app's build certificate. You can fetch the build certificate slug for this endpoint if you first call the [GET /apps/{app-slug}/build-certificates](https://api-docs.bitrise.io/#/build-certificate/build-certificate-list) endpoint to list all available build certificates of an app. Read more in our [Deleting an iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#deleting-an-ios-code-signing-file) guide.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateDeleteWithRequestBuilder(appSlug: String, buildCertificateSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(APIHelper.mapValueToPathItem(buildCertificateSlug))"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a list of the build certificates
     
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first build certificate in the response (optional)
     - parameter limit: (query) Max number of build certificates per page is 50. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateList(appSlug: String, next: String? = nil, limit: Int? = nil, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildCertificateListResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateListWithRequestBuilder(appSlug: appSlug, next: next, limit: limit).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a list of the build certificates
     - GET /apps/{app-slug}/build-certificates
     - List all the build certificates that have been uploaded to a specific app. Read more in our [Listing the uploaded iOS code signing files of an app](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#listing-the-uploaded-ios-code-signing-files-of-an-app) guide.
     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first build certificate in the response (optional)
     - parameter limit: (query) Max number of build certificates per page is 50. (optional)
     - returns: RequestBuilder<V0BuildCertificateListResponseModel> 
     */
    open class func buildCertificateListWithRequestBuilder(appSlug: String, next: String? = nil, limit: Int? = nil) -> RequestBuilder<V0BuildCertificateListResponseModel> {
        var path = "/apps/{app-slug}/build-certificates"
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

        let requestBuilder: RequestBuilder<V0BuildCertificateListResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Get a specific build certificate
     
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateShow(appSlug: String, buildCertificateSlug: String, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateShowWithRequestBuilder(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get a specific build certificate
     - GET /apps/{app-slug}/build-certificates/{build-certificate-slug}
     - Retrieve data of a specific build certificate. You can fetch the build certificate slug for this endpoint if you first call the [GET /apps/{app-slug}/build-certificates](https://api-docs.bitrise.io/#/build-certificate/build-certificate-list) endpoint to list all available build certificates of an app. Read more in our [Getting a specific iOS code signing file's data](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#getting-a-specific-ios-code-signing-files-data) guide.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateShowWithRequestBuilder(appSlug: String, buildCertificateSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(APIHelper.mapValueToPathItem(buildCertificateSlug))"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a build certificate
     
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter buildCertificate: (body) Build certificate parameters 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateUpdate(appSlug: String, buildCertificateSlug: String, buildCertificate: V0BuildCertificateUpdateParams, apiResponseQueue: DispatchQueue = BitriseAPI.apiResponseQueue, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateUpdateWithRequestBuilder(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug, buildCertificate: buildCertificate).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update a build certificate
     - PATCH /apps/{app-slug}/build-certificates/{build-certificate-slug}
     - Update an uploaded build certificate's attributes. You can fetch the build certificate slug for this endpoint if you first call the [GET /apps/{app-slug}/build-certificates](https://api-docs.bitrise.io/#/build-certificate/build-certificate-list) endpoint. Read more in our [Updating an uploaded iOS code signing file](https://devcenter.bitrise.io/api/managing-ios-code-signing-files/#confirming-the-ios-code-signing-file-upload) guide.
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter buildCertificate: (body) Build certificate parameters 
     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateUpdateWithRequestBuilder(appSlug: String, buildCertificateSlug: String, buildCertificate: V0BuildCertificateUpdateParams) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}"
        let appSlugPreEscape = "\(APIHelper.mapValueToPathItem(appSlug))"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(APIHelper.mapValueToPathItem(buildCertificateSlug))"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = BitriseAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: buildCertificate)

        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = BitriseAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}
