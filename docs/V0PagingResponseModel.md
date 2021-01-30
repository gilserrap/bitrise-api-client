# V0PagingResponseModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next** | **String** | Next is the \&quot;anchor\&quot; for pagination. This value should be passed to the same endpoint to get the next page. Empty/not included if there&#39;s no \&quot;next\&quot; page. Stop paging when there&#39;s no \&quot;Next\&quot; item in the response! | [optional] 
**pageItemLimit** | **Int** | PageItemLimit - per-page item count. A given page might include less items if there&#39;s not enough items. This value is the \&quot;max item count per page\&quot;. | [optional] 
**totalItemCount** | **Int** | TotalItemCount - total item count, through \&quot;all pages\&quot; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


