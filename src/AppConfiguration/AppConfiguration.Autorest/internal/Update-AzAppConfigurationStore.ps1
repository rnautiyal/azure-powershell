
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Updates a configuration store with the specified parameters.
.Description
Updates a configuration store with the specified parameters.
.Example
Update-AzAppConfigurationStore -Name azpstest-appstore -ResourceGroupName azpstest_gp -DisableLocalAuth -EnablePurgeProtection -PublicNetworkAccess 'Enabled'
.Example
Get-AzAppConfigurationStore -Name azpstest-appstore -ResourceGroupName azpstest_gp | Update-AzAppConfigurationStore -DisableLocalAuth -EnablePurgeProtection -PublicNetworkAccess 'Enabled'

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.IAppConfigurationIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IConfigurationStore
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IAppConfigurationIdentity>: Identity Parameter
  [ConfigStoreName <String>]: The name of the configuration store.
  [GroupName <String>]: The name of the private link resource group.
  [Id <String>]: Resource identity path
  [KeyValueName <String>]: Identifier of key and label combination. Key and label are joined by $ character. Label is optional.
  [Location <String>]: The location in which uniqueness will be verified.
  [PrivateEndpointConnectionName <String>]: Private endpoint connection name
  [ResourceGroupName <String>]: The name of the resource group to which the container registry belongs.
  [SubscriptionId <String>]: The Microsoft Azure subscription ID.
.Link
https://learn.microsoft.com/powershell/module/az.appconfiguration/update-azappconfigurationstore
#>
function Update-AzAppConfigurationStore {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IConfigurationStore])]
[CmdletBinding(DefaultParameterSetName='UpdateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Path')]
    [System.String]
    # The name of the configuration store.
    ${Name},

    [Parameter(ParameterSetName='UpdateExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Path')]
    [System.String]
    # The name of the resource group to which the container registry belongs.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='UpdateExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The Microsoft Azure subscription ID.
    ${SubscriptionId},

    [Parameter(ParameterSetName='UpdateViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.IAppConfigurationIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Disables all authentication methods other than AAD authentication.
    ${DisableLocalAuth},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Property specifying whether protection against purge is enabled for this configuration store.
    ${EnablePurgeProtection},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [System.String]
    # The URI of the key vault key used to encrypt data.
    ${EncryptionKeyIdentifier},

    [Parameter()]
    [ArgumentCompleter({'None', 'SystemAssigned', 'UserAssigned', 'SystemAssignedAndUserAssigned'})]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Support.IdentityType]
    # The type of managed identity used.
    # The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities.
    # The type 'None' will remove any identities.
    ${IdentityType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [System.String]
    # The client id of the identity which will be used to access key vault.
    ${KeyVaultIdentityClientId},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Support.PublicNetworkAccess])]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Support.PublicNetworkAccess]
    # Control permission for data plane traffic coming from public networks while private endpoint is enabled.
    ${PublicNetworkAccess},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [System.String]
    # The SKU name of the configuration store.
    ${Sku},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IConfigurationStoreUpdateParametersTags]))]
    [System.Collections.Hashtable]
    # The ARM resource tags.
    ${Tag},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Models.Api20220501.IResourceIdentityUserAssignedIdentities]))]
    [System.Collections.Hashtable]
    # The list of user-assigned identities associated with the resource.
    # The user-assigned identity dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'.
    ${UserAssignedIdentity},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.AppConfiguration.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        $mapping = @{
            UpdateExpanded = 'Az.AppConfiguration.private\Update-AzAppConfigurationStore_UpdateExpanded';
            UpdateViaIdentityExpanded = 'Az.AppConfiguration.private\Update-AzAppConfigurationStore_UpdateViaIdentityExpanded';
        }
        if (('UpdateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }

        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {

        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {

        throw
    }

}
end {
    try {
        $steppablePipeline.End()

    } catch {

        throw
    }
} 
}
