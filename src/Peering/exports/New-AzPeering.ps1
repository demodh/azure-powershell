
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
Creates a new peering or updates an existing peering with the specified name under the given subscription and resource group.
.Description
Creates a new peering or updates an existing peering with the specified name under the given subscription and resource group.
.Example
$connection1 = New-AzPeeringDirectConnectionObject -BandwidthInMbps 10000 -BgpSessionMaxPrefixesAdvertisedV4 20000 ...
$directConnections = ,$connection1
New-AzPeering -Name TestPeeringPs -ResourceGroupName DemoRG -Kind Direct -Location "South Central US" -DirectConnection $directConnections -DirectPeeringType Cdn -DirectPeerAsnId $peerAsnId -PeeringLocation Dallas -Sku Premium_Direct_Unlimited

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Peering.Models.Api20221001.IPeering
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

DIRECTCONNECTION <IDirectConnection[]>: The set of connections that constitute a direct peering.
  [BandwidthInMbps <Int32?>]: The bandwidth of the connection.
  [BgpSessionMaxPrefixesAdvertisedV4 <Int32?>]: The maximum number of prefixes advertised over the IPv4 session.
  [BgpSessionMaxPrefixesAdvertisedV6 <Int32?>]: The maximum number of prefixes advertised over the IPv6 session.
  [BgpSessionMd5AuthenticationKey <String>]: The MD5 authentication key of the session.
  [BgpSessionMicrosoftSessionIPv4Address <String>]: The IPv4 session address on Microsoft's end.
  [BgpSessionMicrosoftSessionIPv6Address <String>]: The IPv6 session address on Microsoft's end.
  [BgpSessionPeerSessionIPv4Address <String>]: The IPv4 session address on peer's end.
  [BgpSessionPeerSessionIPv6Address <String>]: The IPv6 session address on peer's end.
  [BgpSessionPrefixV4 <String>]: The IPv4 prefix that contains both ends' IPv4 addresses.
  [BgpSessionPrefixV6 <String>]: The IPv6 prefix that contains both ends' IPv6 addresses.
  [ConnectionIdentifier <String>]: The unique identifier (GUID) for the connection.
  [PeeringDbFacilityId <Int32?>]: The PeeringDB.com ID of the facility at which the connection has to be set up.
  [SessionAddressProvider <SessionAddressProvider?>]: The field indicating if Microsoft provides session ip addresses.
  [UseForPeeringService <Boolean?>]: The flag that indicates whether or not the connection is used for peering service.

EXCHANGECONNECTION <IExchangeConnection[]>: The set of connections that constitute an exchange peering.
  [BgpSessionMaxPrefixesAdvertisedV4 <Int32?>]: The maximum number of prefixes advertised over the IPv4 session.
  [BgpSessionMaxPrefixesAdvertisedV6 <Int32?>]: The maximum number of prefixes advertised over the IPv6 session.
  [BgpSessionMd5AuthenticationKey <String>]: The MD5 authentication key of the session.
  [BgpSessionMicrosoftSessionIPv4Address <String>]: The IPv4 session address on Microsoft's end.
  [BgpSessionMicrosoftSessionIPv6Address <String>]: The IPv6 session address on Microsoft's end.
  [BgpSessionPeerSessionIPv4Address <String>]: The IPv4 session address on peer's end.
  [BgpSessionPeerSessionIPv6Address <String>]: The IPv6 session address on peer's end.
  [BgpSessionPrefixV4 <String>]: The IPv4 prefix that contains both ends' IPv4 addresses.
  [BgpSessionPrefixV6 <String>]: The IPv6 prefix that contains both ends' IPv6 addresses.
  [ConnectionIdentifier <String>]: The unique identifier (GUID) for the connection.
  [PeeringDbFacilityId <Int32?>]: The PeeringDB.com ID of the facility at which the connection has to be set up.
.Link
https://learn.microsoft.com/powershell/module/az.peering/new-azpeering
#>
function New-AzPeering {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Peering.Models.Api20221001.IPeering])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('PeeringName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Path')]
    [System.String]
    # The name of the peering.
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Path')]
    [System.String]
    # The name of the resource group.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The Azure subscription ID.
    ${SubscriptionId},

    [Parameter(Mandatory)]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Peering.Support.Kind])]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Support.Kind]
    # The kind of the peering.
    ${Kind},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [System.String]
    # The location of the resource.
    ${Location},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Models.Api20221001.IDirectConnection[]]
    # The set of connections that constitute a direct peering.
    # To construct, see NOTES section for DIRECTCONNECTION properties and create a hash table.
    ${DirectConnection},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [System.String]
    # The identifier of the referenced resource.
    ${DirectPeerAsnId},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Peering.Support.DirectPeeringType])]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Support.DirectPeeringType]
    # The type of direct peering.
    ${DirectPeeringType},

    [Parameter()]
    [AllowEmptyCollection()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Models.Api20221001.IExchangeConnection[]]
    # The set of connections that constitute an exchange peering.
    # To construct, see NOTES section for EXCHANGECONNECTION properties and create a hash table.
    ${ExchangeConnection},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [System.String]
    # The identifier of the referenced resource.
    ${ExchangePeerAsnId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [System.String]
    # The location of the peering.
    ${PeeringLocation},

    [Parameter()]
    [Alias('SkuName')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [System.String]
    # The name of the peering SKU.
    ${Sku},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.Peering.Models.Api20221001.IPeeringTags]))]
    [System.Collections.Hashtable]
    # The resource tags.
    ${Tag},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Peering.Category('Runtime')]
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

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $Host.Version.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.Peering.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            CreateExpanded = 'Az.Peering.private\New-AzPeering_CreateExpanded';
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Peering.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.Peering.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
