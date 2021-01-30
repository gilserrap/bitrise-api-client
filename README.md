# Swift5 API client for Bitrise

Official REST API for Bitrise.io

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 0.1
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://www.bitrise.io/contact](https://www.bitrise.io/contact)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://api.bitrise.io/v0.1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ActivityAPI* | [**activityList**](docs/ActivityAPI.md#activitylist) | **GET** /me/activities | Get list of Bitrise activity events
*AddonsAPI* | [**addonListByApp**](docs/AddonsAPI.md#addonlistbyapp) | **GET** /apps/{app-slug}/addons | Get list of the addons for apps
*AddonsAPI* | [**addonListByOrganization**](docs/AddonsAPI.md#addonlistbyorganization) | **GET** /organizations/{organization-slug}/addons | Get list of the addons for organization
*AddonsAPI* | [**addonListByUser**](docs/AddonsAPI.md#addonlistbyuser) | **GET** /users/{user-slug}/addons | Get list of the addons for user
*AddonsAPI* | [**addonsList**](docs/AddonsAPI.md#addonslist) | **GET** /addons | Get list of available Bitrise addons
*AddonsAPI* | [**addonsShow**](docs/AddonsAPI.md#addonsshow) | **GET** /addons/{addon-id} | Get a specific Bitrise addon
*AndroidKeystoreFileAPI* | [**androidKeystoreFileCreate**](docs/AndroidKeystoreFileAPI.md#androidkeystorefilecreate) | **POST** /apps/{app-slug}/android-keystore-files | Create an Android keystore file
*AndroidKeystoreFileAPI* | [**androidKeystoreFileList**](docs/AndroidKeystoreFileAPI.md#androidkeystorefilelist) | **GET** /apps/{app-slug}/android-keystore-files | Get a list of the android keystore files
*AppSetupAPI* | [**appConfigCreate**](docs/AppSetupAPI.md#appconfigcreate) | **POST** /apps/{app-slug}/bitrise.yml | Upload a new bitrise.yml for your application.
*AppSetupAPI* | [**appCreate**](docs/AppSetupAPI.md#appcreate) | **POST** /apps/register | Add a new app
*AppSetupAPI* | [**appFinish**](docs/AppSetupAPI.md#appfinish) | **POST** /apps/{app-slug}/finish | Save the application at the end of the app registration process
*AppSetupAPI* | [**appWebhookCreate**](docs/AppSetupAPI.md#appwebhookcreate) | **POST** /apps/{app-slug}/register-webhook | Register an incoming webhook for a specific application
*AppSetupAPI* | [**sshKeyCreate**](docs/AppSetupAPI.md#sshkeycreate) | **POST** /apps/{app-slug}/register-ssh-key | Add an SSH-key to a specific app
*AppleApiCredentialsAPI* | [**appleApiCredentialList**](docs/AppleApiCredentialsAPI.md#appleapicredentiallist) | **GET** /users/{user-slug}/apple-api-credentials | List Apple API credentials for a specific user
*ApplicationAPI* | [**appConfigDatastoreShow**](docs/ApplicationAPI.md#appconfigdatastoreshow) | **GET** /apps/{app-slug}/bitrise.yml | Get bitrise.yml of a specific app
*ApplicationAPI* | [**appList**](docs/ApplicationAPI.md#applist) | **GET** /apps | Get list of the apps
*ApplicationAPI* | [**appListByOrganization**](docs/ApplicationAPI.md#applistbyorganization) | **GET** /organizations/{org-slug}/apps | Get list of the apps for an organization
*ApplicationAPI* | [**appListByUser**](docs/ApplicationAPI.md#applistbyuser) | **GET** /users/{user-slug}/apps | Get list of the apps for a user
*ApplicationAPI* | [**appShow**](docs/ApplicationAPI.md#appshow) | **GET** /apps/{app-slug} | Get a specific app
*ApplicationAPI* | [**branchList**](docs/ApplicationAPI.md#branchlist) | **GET** /apps/{app-slug}/branches | List the branches of an app&#39;s repository
*AvatarCandidateAPI* | [**avatarCandidateCreate**](docs/AvatarCandidateAPI.md#avatarcandidatecreate) | **POST** /apps/{app-slug}/avatar-candidates | Create avatar candidates
*AvatarCandidateAPI* | [**avatarCandidateList**](docs/AvatarCandidateAPI.md#avatarcandidatelist) | **GET** /v0.1/apps/{app-slug}/avatar-candidates | Get list of the avatar candidates
*AvatarCandidateAPI* | [**avatarCandidatePromote**](docs/AvatarCandidateAPI.md#avatarcandidatepromote) | **PATCH** /apps/{app-slug}/avatar-candidates/{avatar-slug} | Promote an avatar candidate
*BuildArtifactAPI* | [**artifactDelete**](docs/BuildArtifactAPI.md#artifactdelete) | **DELETE** /apps/{app-slug}/builds/{build-slug}/artifacts/{artifact-slug} | Delete a build artifact
*BuildArtifactAPI* | [**artifactList**](docs/BuildArtifactAPI.md#artifactlist) | **GET** /apps/{app-slug}/builds/{build-slug}/artifacts | Get a list of all build artifacts
*BuildArtifactAPI* | [**artifactShow**](docs/BuildArtifactAPI.md#artifactshow) | **GET** /apps/{app-slug}/builds/{build-slug}/artifacts/{artifact-slug} | Get a specific build artifact
*BuildArtifactAPI* | [**artifactUpdate**](docs/BuildArtifactAPI.md#artifactupdate) | **PATCH** /apps/{app-slug}/builds/{build-slug}/artifacts/{artifact-slug} | Update a build artifact
*BuildCertificateAPI* | [**buildCertificateConfirm**](docs/BuildCertificateAPI.md#buildcertificateconfirm) | **POST** /apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded | Confirm a build certificate upload
*BuildCertificateAPI* | [**buildCertificateCreate**](docs/BuildCertificateAPI.md#buildcertificatecreate) | **POST** /apps/{app-slug}/build-certificates | Create a build certificate
*BuildCertificateAPI* | [**buildCertificateDelete**](docs/BuildCertificateAPI.md#buildcertificatedelete) | **DELETE** /apps/{app-slug}/build-certificates/{build-certificate-slug} | Delete a build certificate
*BuildCertificateAPI* | [**buildCertificateList**](docs/BuildCertificateAPI.md#buildcertificatelist) | **GET** /apps/{app-slug}/build-certificates | Get a list of the build certificates
*BuildCertificateAPI* | [**buildCertificateShow**](docs/BuildCertificateAPI.md#buildcertificateshow) | **GET** /apps/{app-slug}/build-certificates/{build-certificate-slug} | Get a specific build certificate
*BuildCertificateAPI* | [**buildCertificateUpdate**](docs/BuildCertificateAPI.md#buildcertificateupdate) | **PATCH** /apps/{app-slug}/build-certificates/{build-certificate-slug} | Update a build certificate
*BuildRequestAPI* | [**buildRequestList**](docs/BuildRequestAPI.md#buildrequestlist) | **GET** /apps/{app-slug}/build-requests | List the open build requests for an app
*BuildRequestAPI* | [**buildRequestUpdate**](docs/BuildRequestAPI.md#buildrequestupdate) | **PATCH** /apps/{app-slug}/build-requests/{build-request-slug} | Update a build request
*BuildsAPI* | [**buildAbort**](docs/BuildsAPI.md#buildabort) | **POST** /apps/{app-slug}/builds/{build-slug}/abort | Abort a specific build
*BuildsAPI* | [**buildBitriseYmlShow**](docs/BuildsAPI.md#buildbitriseymlshow) | **GET** /apps/{app-slug}/builds/{build-slug}/bitrise.yml | Get the bitrise.yml of a build
*BuildsAPI* | [**buildList**](docs/BuildsAPI.md#buildlist) | **GET** /apps/{app-slug}/builds | List all builds of an app
*BuildsAPI* | [**buildListAll**](docs/BuildsAPI.md#buildlistall) | **GET** /builds | List all builds
*BuildsAPI* | [**buildLog**](docs/BuildsAPI.md#buildlog) | **GET** /apps/{app-slug}/builds/{build-slug}/log | Get the build log of a build
*BuildsAPI* | [**buildShow**](docs/BuildsAPI.md#buildshow) | **GET** /apps/{app-slug}/builds/{build-slug} | Get a build of a given app
*BuildsAPI* | [**buildTrigger**](docs/BuildsAPI.md#buildtrigger) | **POST** /apps/{app-slug}/builds | Trigger a new build
*BuildsAPI* | [**buildWorkflowList**](docs/BuildsAPI.md#buildworkflowlist) | **GET** /apps/{app-slug}/build-workflows | List the workflows of an app
*GenericProjectFileAPI* | [**genericProjectFileConfirm**](docs/GenericProjectFileAPI.md#genericprojectfileconfirm) | **POST** /apps/{app-slug}/generic-project-files/{generic-project-file-slug}/uploaded | Confirm a generic project file upload
*GenericProjectFileAPI* | [**genericProjectFileDelete**](docs/GenericProjectFileAPI.md#genericprojectfiledelete) | **DELETE** /apps/{app-slug}/generic-project-files/{generic-project-file-slug} | Delete a generic project file
*GenericProjectFileAPI* | [**genericProjectFileList**](docs/GenericProjectFileAPI.md#genericprojectfilelist) | **GET** /apps/{app-slug}/generic-project-files | Get a list of the generic project files
*GenericProjectFileAPI* | [**genericProjectFileShow**](docs/GenericProjectFileAPI.md#genericprojectfileshow) | **GET** /apps/{app-slug}/generic-project-files/{generic-project-file-slug} | Get a specific generic project file
*GenericProjectFileAPI* | [**genericProjectFileUpdate**](docs/GenericProjectFileAPI.md#genericprojectfileupdate) | **PATCH** /apps/{app-slug}/generic-project-files/{generic-project-file-slug} | Update a generic project file
*GenericProjectFileAPI* | [**genericProjectFilesCreate**](docs/GenericProjectFileAPI.md#genericprojectfilescreate) | **POST** /apps/{app-slug}/generic-project-files | Create a generic project file
*OrganizationsAPI* | [**orgList**](docs/OrganizationsAPI.md#orglist) | **GET** /organizations | List the organizations that the user is part of
*OrganizationsAPI* | [**orgShow**](docs/OrganizationsAPI.md#orgshow) | **GET** /organizations/{org-slug} | Get a specified organization.
*OutgoingWebhookAPI* | [**outgoingWebhookCreate**](docs/OutgoingWebhookAPI.md#outgoingwebhookcreate) | **POST** /apps/{app-slug}/outgoing-webhooks | Create an outgoing webhook for an app
*OutgoingWebhookAPI* | [**outgoingWebhookDelete**](docs/OutgoingWebhookAPI.md#outgoingwebhookdelete) | **DELETE** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug} | Delete an outgoing webhook of an app
*OutgoingWebhookAPI* | [**outgoingWebhookList**](docs/OutgoingWebhookAPI.md#outgoingwebhooklist) | **GET** /apps/{app-slug}/outgoing-webhooks | List the outgoing webhooks of an app
*OutgoingWebhookAPI* | [**outgoingWebhookUpdate**](docs/OutgoingWebhookAPI.md#outgoingwebhookupdate) | **PUT** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug} | Update an outgoing webhook of an app
*ProvisioningProfileAPI* | [**provisioningProfileConfirm**](docs/ProvisioningProfileAPI.md#provisioningprofileconfirm) | **POST** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug}/uploaded | Confirm a provisioning profile upload
*ProvisioningProfileAPI* | [**provisioningProfileCreate**](docs/ProvisioningProfileAPI.md#provisioningprofilecreate) | **POST** /apps/{app-slug}/provisioning-profiles | Create a provisioning profile
*ProvisioningProfileAPI* | [**provisioningProfileDelete**](docs/ProvisioningProfileAPI.md#provisioningprofiledelete) | **DELETE** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug} | Delete a provisioning profile
*ProvisioningProfileAPI* | [**provisioningProfileList**](docs/ProvisioningProfileAPI.md#provisioningprofilelist) | **GET** /apps/{app-slug}/provisioning-profiles | Get a list of the provisioning profiles
*ProvisioningProfileAPI* | [**provisioningProfileShow**](docs/ProvisioningProfileAPI.md#provisioningprofileshow) | **GET** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug} | Get a specific provisioning profile
*ProvisioningProfileAPI* | [**provisioningProfileUpdate**](docs/ProvisioningProfileAPI.md#provisioningprofileupdate) | **PATCH** /apps/{app-slug}/provisioning-profiles/{provisioning-profile-slug} | Update a provisioning profile
*TestDevicesAPI* | [**testDeviceList**](docs/TestDevicesAPI.md#testdevicelist) | **GET** /apps/{app-slug}/test-devices | List the test devices for an app
*UserAPI* | [**userPlan**](docs/UserAPI.md#userplan) | **GET** /me/plan | The subscription plan of the user
*UserAPI* | [**userProfile**](docs/UserAPI.md#userprofile) | **GET** /me | Get your profile data
*UserAPI* | [**userShow**](docs/UserAPI.md#usershow) | **GET** /users/{user-slug} | Get a specific user
*WebhookDeliveryItemAPI* | [**webhookDeliveryItemList**](docs/WebhookDeliveryItemAPI.md#webhookdeliveryitemlist) | **GET** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items | List the webhook delivery items of an app
*WebhookDeliveryItemAPI* | [**webhookDeliveryItemRedeliver**](docs/WebhookDeliveryItemAPI.md#webhookdeliveryitemredeliver) | **POST** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug}/redeliver | Re-deliver the webhook delivery items of an app
*WebhookDeliveryItemAPI* | [**webhookDeliveryItemShow**](docs/WebhookDeliveryItemAPI.md#webhookdeliveryitemshow) | **GET** /apps/{app-slug}/outgoing-webhooks/{app-webhook-slug}/delivery-items/{webhook-delivery-item-slug} | Get a specific delivery item of a webhook


## Documentation For Models

 - [AddonsAddon](docs/AddonsAddon.md)
 - [AddonsDeveloperLink](docs/AddonsDeveloperLink.md)
 - [AddonsFeature](docs/AddonsFeature.md)
 - [AddonsPlan](docs/AddonsPlan.md)
 - [AddonsSetupGuide](docs/AddonsSetupGuide.md)
 - [AddonsSetupInstruction](docs/AddonsSetupInstruction.md)
 - [ServiceStandardErrorRespModel](docs/ServiceStandardErrorRespModel.md)
 - [V0ActivityEventListResponseModel](docs/V0ActivityEventListResponseModel.md)
 - [V0ActivityEventResponseItemModel](docs/V0ActivityEventResponseItemModel.md)
 - [V0AddOnAppResponseItemModel](docs/V0AddOnAppResponseItemModel.md)
 - [V0AddonsListResponseModel](docs/V0AddonsListResponseModel.md)
 - [V0AddonsShowResponseModel](docs/V0AddonsShowResponseModel.md)
 - [V0AndroidKeystoreFileUploadParams](docs/V0AndroidKeystoreFileUploadParams.md)
 - [V0AppAddOnResponseItemModel](docs/V0AppAddOnResponseItemModel.md)
 - [V0AppAddOnsListResponseModel](docs/V0AppAddOnsListResponseModel.md)
 - [V0AppConfigRequestParam](docs/V0AppConfigRequestParam.md)
 - [V0AppFinishParams](docs/V0AppFinishParams.md)
 - [V0AppFinishRespModel](docs/V0AppFinishRespModel.md)
 - [V0AppListResponseModel](docs/V0AppListResponseModel.md)
 - [V0AppRespModel](docs/V0AppRespModel.md)
 - [V0AppResponseItemModel](docs/V0AppResponseItemModel.md)
 - [V0AppShowResponseModel](docs/V0AppShowResponseModel.md)
 - [V0AppUploadParams](docs/V0AppUploadParams.md)
 - [V0AppWebhookCreateParams](docs/V0AppWebhookCreateParams.md)
 - [V0AppWebhookCreatedResponseModel](docs/V0AppWebhookCreatedResponseModel.md)
 - [V0AppWebhookDeletedResponseModel](docs/V0AppWebhookDeletedResponseModel.md)
 - [V0AppWebhookListResponseModel](docs/V0AppWebhookListResponseModel.md)
 - [V0AppWebhookResponseItemModel](docs/V0AppWebhookResponseItemModel.md)
 - [V0AppWebhookResponseModel](docs/V0AppWebhookResponseModel.md)
 - [V0AppWebhookUpdateParams](docs/V0AppWebhookUpdateParams.md)
 - [V0AppleAPICredentialResponseItem](docs/V0AppleAPICredentialResponseItem.md)
 - [V0AppleAPICredentialsListResponse](docs/V0AppleAPICredentialsListResponse.md)
 - [V0ArtifactDeleteResponseModel](docs/V0ArtifactDeleteResponseModel.md)
 - [V0ArtifactListElementResponseModel](docs/V0ArtifactListElementResponseModel.md)
 - [V0ArtifactListResponseModel](docs/V0ArtifactListResponseModel.md)
 - [V0ArtifactResponseItemModel](docs/V0ArtifactResponseItemModel.md)
 - [V0ArtifactShowResponseModel](docs/V0ArtifactShowResponseModel.md)
 - [V0ArtifactUpdateParams](docs/V0ArtifactUpdateParams.md)
 - [V0AvatarCandidateCreateParams](docs/V0AvatarCandidateCreateParams.md)
 - [V0AvatarCandidateCreateResponseItem](docs/V0AvatarCandidateCreateResponseItem.md)
 - [V0AvatarPromoteParams](docs/V0AvatarPromoteParams.md)
 - [V0AvatarPromoteResponseItemModel](docs/V0AvatarPromoteResponseItemModel.md)
 - [V0AvatarPromoteResponseModel](docs/V0AvatarPromoteResponseModel.md)
 - [V0BranchListResponseModel](docs/V0BranchListResponseModel.md)
 - [V0BuildAbortParams](docs/V0BuildAbortParams.md)
 - [V0BuildAbortResponseModel](docs/V0BuildAbortResponseModel.md)
 - [V0BuildCertificateListResponseModel](docs/V0BuildCertificateListResponseModel.md)
 - [V0BuildCertificateResponseItemModel](docs/V0BuildCertificateResponseItemModel.md)
 - [V0BuildCertificateResponseModel](docs/V0BuildCertificateResponseModel.md)
 - [V0BuildCertificateUpdateParams](docs/V0BuildCertificateUpdateParams.md)
 - [V0BuildCertificateUploadParams](docs/V0BuildCertificateUploadParams.md)
 - [V0BuildListAllResponseItemModel](docs/V0BuildListAllResponseItemModel.md)
 - [V0BuildListAllResponseModel](docs/V0BuildListAllResponseModel.md)
 - [V0BuildListResponseModel](docs/V0BuildListResponseModel.md)
 - [V0BuildLogChunkItemResponseModel](docs/V0BuildLogChunkItemResponseModel.md)
 - [V0BuildLogInfoResponseModel](docs/V0BuildLogInfoResponseModel.md)
 - [V0BuildParamsEnvironment](docs/V0BuildParamsEnvironment.md)
 - [V0BuildRequestListResponseModel](docs/V0BuildRequestListResponseModel.md)
 - [V0BuildRequestResponseItemModel](docs/V0BuildRequestResponseItemModel.md)
 - [V0BuildRequestUpdateParams](docs/V0BuildRequestUpdateParams.md)
 - [V0BuildRequestUpdateResponseModel](docs/V0BuildRequestUpdateResponseModel.md)
 - [V0BuildResponseItemModel](docs/V0BuildResponseItemModel.md)
 - [V0BuildShowResponseModel](docs/V0BuildShowResponseModel.md)
 - [V0BuildTriggerParams](docs/V0BuildTriggerParams.md)
 - [V0BuildTriggerParamsBuildParams](docs/V0BuildTriggerParamsBuildParams.md)
 - [V0BuildTriggerParamsHookInfo](docs/V0BuildTriggerParamsHookInfo.md)
 - [V0BuildTriggerRespModel](docs/V0BuildTriggerRespModel.md)
 - [V0BuildWorkflowListResponseModel](docs/V0BuildWorkflowListResponseModel.md)
 - [V0CommitPaths](docs/V0CommitPaths.md)
 - [V0FindAvatarCandidateResponse](docs/V0FindAvatarCandidateResponse.md)
 - [V0FindAvatarCandidateResponseItem](docs/V0FindAvatarCandidateResponseItem.md)
 - [V0OrganizationDataModel](docs/V0OrganizationDataModel.md)
 - [V0OrganizationListRespModel](docs/V0OrganizationListRespModel.md)
 - [V0OrganizationOwner](docs/V0OrganizationOwner.md)
 - [V0OrganizationRespModel](docs/V0OrganizationRespModel.md)
 - [V0OwnerAccountResponseModel](docs/V0OwnerAccountResponseModel.md)
 - [V0OwnerAddOnResponseItemModel](docs/V0OwnerAddOnResponseItemModel.md)
 - [V0OwnerAddOnsListResponseModel](docs/V0OwnerAddOnsListResponseModel.md)
 - [V0PagingResponseModel](docs/V0PagingResponseModel.md)
 - [V0PlanDataModel](docs/V0PlanDataModel.md)
 - [V0ProjectFileStorageDocumentUpdateParams](docs/V0ProjectFileStorageDocumentUpdateParams.md)
 - [V0ProjectFileStorageListResponseModel](docs/V0ProjectFileStorageListResponseModel.md)
 - [V0ProjectFileStorageResponseItemModel](docs/V0ProjectFileStorageResponseItemModel.md)
 - [V0ProjectFileStorageResponseModel](docs/V0ProjectFileStorageResponseModel.md)
 - [V0ProjectFileStorageUploadParams](docs/V0ProjectFileStorageUploadParams.md)
 - [V0ProvProfileDocumentUpdateParams](docs/V0ProvProfileDocumentUpdateParams.md)
 - [V0ProvisionProfileListResponseModel](docs/V0ProvisionProfileListResponseModel.md)
 - [V0ProvisionProfileResponseItemModel](docs/V0ProvisionProfileResponseItemModel.md)
 - [V0ProvisionProfileResponseModel](docs/V0ProvisionProfileResponseModel.md)
 - [V0ProvisionProfileUploadParams](docs/V0ProvisionProfileUploadParams.md)
 - [V0SSHKeyRespModel](docs/V0SSHKeyRespModel.md)
 - [V0SSHKeyUploadParams](docs/V0SSHKeyUploadParams.md)
 - [V0TestDeviceListResponseModel](docs/V0TestDeviceListResponseModel.md)
 - [V0TestDeviceResponseItemModel](docs/V0TestDeviceResponseItemModel.md)
 - [V0UserPlanDataModel](docs/V0UserPlanDataModel.md)
 - [V0UserPlanRespModel](docs/V0UserPlanRespModel.md)
 - [V0UserProfileDataModel](docs/V0UserProfileDataModel.md)
 - [V0UserProfileRespModel](docs/V0UserProfileRespModel.md)
 - [V0WebhookDeliveryItemResponseModel](docs/V0WebhookDeliveryItemResponseModel.md)
 - [V0WebhookDeliveryItemShowResponseModel](docs/V0WebhookDeliveryItemShowResponseModel.md)
 - [V0WebhookRespModel](docs/V0WebhookRespModel.md)


## Documentation For Authorization


## AddonAuthToken

- **Type**: API key
- **API key parameter name**: Bitrise-Addon-Auth-Token
- **Location**: HTTP header

## PersonalAccessToken

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

letsconnect@bitrise.io

