# V0AppFinishParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config** | **String** | Which config to use &#x60;default-android-config&#x60;, &#x60;default-cordova-config&#x60;, &#x60;default-fastlane-config&#x60;, &#x60;default-ionic-config&#x60;, &#x60;default-ios-config&#x60;,&#x60;default-macos-config&#x60;, &#x60;default-react-native-config&#x60;, &#x60;default-xamarin-config&#x60;, &#x60;other-config&#x60; (default if parameter is not speficied) | [optional] 
**envs** | **[String:String]** | Environment variables for the application workflows, e.g. {\&quot;env1\&quot;:\&quot;val1\&quot;,\&quot;env2\&quot;:\&quot;val2\&quot;} | [optional] 
**mode** | **String** | config specification mode, has to be specified with &#x60;manual&#x60; value | [optional] 
**organizationSlug** | **String** | The slug of the organization, who will be the owner of the application, if it&#39;s not specified, then the authenticated user will be the owner | [optional] 
**projectType** | **String** | The type of your project (&#x60;android&#x60;, &#x60;ios&#x60;, &#x60;cordova&#x60;, &#x60;other&#x60;, &#x60;xamarin&#x60;, &#x60;macos&#x60;, &#x60;ionic&#x60;, &#x60;react-native&#x60;, &#x60;fastlane&#x60;, null) | 
**stackId** | **String** | The id of the stack the application will be built (these can be found in the [system report](https://github.com/bitrise-io/bitrise.io/tree/master/system_reports) file names) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


