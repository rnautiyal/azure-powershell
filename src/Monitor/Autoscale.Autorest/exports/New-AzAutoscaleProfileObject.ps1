
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
Create an in-memory object for AutoscaleProfile.
.Description
Create an in-memory object for AutoscaleProfile.
.Example
$subscriptionId = (Get-AzContext).Subscription.Id
$rule1=New-AzAutoscaleScaleRuleObject -MetricTriggerMetricName "Percentage CPU" -MetricTriggerMetricResourceUri "/subscriptions/$subscriptionId/resourceGroups/test-group/providers/Microsoft.Compute/virtualMachineScaleSets/test-vmss" -MetricTriggerTimeGrain ([System.TimeSpan]::New(0,1,0)) -MetricTriggerStatistic "Average" -MetricTriggerTimeWindow ([System.TimeSpan]::New(0,5,0)) -MetricTriggerTimeAggregation "Average" -MetricTriggerOperator "GreaterThan" -MetricTriggerThreshold 10 -MetricTriggerDividePerInstance $false -ScaleActionDirection "Increase" -ScaleActionType "ChangeCount" -ScaleActionValue 1 -ScaleActionCooldown ([System.TimeSpan]::New(0,5,0))
New-AzAutoscaleProfileObject -Name "adios" -CapacityDefault 1 -CapacityMaximum 10 -CapacityMinimum 1 -Rule $rule1 -FixedDateEnd ([System.DateTime]::Parse("2022-12-31T14:00:00Z")) -FixedDateStart ([System.DateTime]::Parse("2022-12-31T13:00:00Z")) -FixedDateTimeZone "UTC"

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Models.Api20221001.AutoscaleProfile
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

RULE <IScaleRule[]>: the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified.
  MetricTriggerMetricName <String>: the name of the metric that defines what the rule monitors.
  MetricTriggerMetricResourceUri <String>: the resource identifier of the resource the rule monitors.
  MetricTriggerOperator <ComparisonOperationType>: the operator that is used to compare the metric data and the threshold.
  MetricTriggerStatistic <MetricStatisticType>: the metric statistic type. How the metrics from multiple instances are combined.
  MetricTriggerThreshold <Double>: the threshold of the metric that triggers the scale action.
  MetricTriggerTimeAggregation <TimeAggregationType>: time aggregation type. How the data that is collected should be combined over time. The default value is Average.
  MetricTriggerTimeGrain <TimeSpan>: the granularity of metrics the rule monitors. Must be one of the predefined values returned from metric definitions for the metric. Must be between 12 hours and 1 minute.
  MetricTriggerTimeWindow <TimeSpan>: the range of time in which instance data is collected. This value must be greater than the delay in metric collection, which can vary from resource-to-resource. Must be between 12 hours and 5 minutes.
  ScaleActionCooldown <TimeSpan>: the amount of time to wait since the last scaling action before this action occurs. It must be between 1 week and 1 minute in ISO 8601 format.
  ScaleActionDirection <ScaleDirection>: the scale direction. Whether the scaling action increases or decreases the number of instances.
  ScaleActionType <ScaleType>: the type of action that should occur when the scale rule fires.
  [MetricTriggerDimension <IScaleRuleMetricDimension[]>]: List of dimension conditions. For example: [{"DimensionName":"AppName","Operator":"Equals","Values":["App1"]},{"DimensionName":"Deployment","Operator":"Equals","Values":["default"]}].
    DimensionName <String>: Name of the dimension.
    Operator <ScaleRuleMetricDimensionOperationType>: the dimension operator. Only 'Equals' and 'NotEquals' are supported. 'Equals' being equal to any of the values. 'NotEquals' being not equal to all of the values
    Value <String[]>: list of dimension values. For example: ["App1","App2"].
  [MetricTriggerDividePerInstance <Boolean?>]: a value indicating whether metric should divide per instance.
  [MetricTriggerMetricNamespace <String>]: the namespace of the metric that defines what the rule monitors.
  [MetricTriggerMetricResourceLocation <String>]: the location of the resource the rule monitors.
  [ScaleActionValue <String>]: the number of instances that are involved in the scaling action. This value must be 1 or greater. The default value is 1.
.Link
https://learn.microsoft.com/powershell/module/Az.Monitor/new-AzAutoscaleProfileObject
#>
function New-AzAutoscaleProfileObject {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Models.Api20221001.AutoscaleProfile])]
[CmdletBinding(PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.String]
    # the number of instances that will be set if metrics are not available for evaluation.
    # The default is only used if the current instance count is lower than the default.
    ${CapacityDefault},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.String]
    # the maximum number of instances for the resource.
    # The actual maximum number of instances is limited by the cores that are available in the subscription.
    ${CapacityMaximum},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.String]
    # the minimum number of instances for the resource.
    ${CapacityMinimum},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.String]
    # the name of the profile.
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Models.Api20221001.IScaleRule[]]
    # the collection of rules that provide the triggers and parameters for the scaling action.
    # A maximum of 10 rules can be specified.
    # To construct, see NOTES section for RULE properties and create a hash table.
    ${Rule},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.DateTime]
    # the end time for the profile in ISO 8601 format.
    ${FixedDateEnd},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.DateTime]
    # the start time for the profile in ISO 8601 format.
    ${FixedDateStart},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.String]
    # the timezone of the start and end times for the profile.
    # Some examples of valid time zones are: Dateline Standard Time, UTC-11, Hawaiian Standard Time, Alaskan Standard Time, Pacific Standard Time (Mexico), Pacific Standard Time, US Mountain Standard Time, Mountain Standard Time (Mexico), Mountain Standard Time, Central America Standard Time, Central Standard Time, Central Standard Time (Mexico), Canada Central Standard Time, SA Pacific Standard Time, Eastern Standard Time, US Eastern Standard Time, Venezuela Standard Time, Paraguay Standard Time, Atlantic Standard Time, Central Brazilian Standard Time, SA Western Standard Time, Pacific SA Standard Time, Newfoundland Standard Time, E.
    # South America Standard Time, Argentina Standard Time, SA Eastern Standard Time, Greenland Standard Time, Montevideo Standard Time, Bahia Standard Time, UTC-02, Mid-Atlantic Standard Time, Azores Standard Time, Cape Verde Standard Time, Morocco Standard Time, UTC, GMT Standard Time, Greenwich Standard Time, W.
    # Europe Standard Time, Central Europe Standard Time, Romance Standard Time, Central European Standard Time, W.
    # Central Africa Standard Time, Namibia Standard Time, Jordan Standard Time, GTB Standard Time, Middle East Standard Time, Egypt Standard Time, Syria Standard Time, E.
    # Europe Standard Time, South Africa Standard Time, FLE Standard Time, Turkey Standard Time, Israel Standard Time, Kaliningrad Standard Time, Libya Standard Time, Arabic Standard Time, Arab Standard Time, Belarus Standard Time, Russian Standard Time, E.
    # Africa Standard Time, Iran Standard Time, Arabian Standard Time, Azerbaijan Standard Time, Russia Time Zone 3, Mauritius Standard Time, Georgian Standard Time, Caucasus Standard Time, Afghanistan Standard Time, West Asia Standard Time, Ekaterinburg Standard Time, Pakistan Standard Time, India Standard Time, Sri Lanka Standard Time, Nepal Standard Time, Central Asia Standard Time, Bangladesh Standard Time, N.
    # Central Asia Standard Time, Myanmar Standard Time, SE Asia Standard Time, North Asia Standard Time, China Standard Time, North Asia East Standard Time, Singapore Standard Time, W.
    # Australia Standard Time, Taipei Standard Time, Ulaanbaatar Standard Time, Tokyo Standard Time, Korea Standard Time, Yakutsk Standard Time, Cen.
    # Australia Standard Time, AUS Central Standard Time, E.
    # Australia Standard Time, AUS Eastern Standard Time, West Pacific Standard Time, Tasmania Standard Time, Magadan Standard Time, Vladivostok Standard Time, Russia Time Zone 10, Central Pacific Standard Time, Russia Time Zone 11, New Zealand Standard Time, UTC+12, Fiji Standard Time, Kamchatka Standard Time, Tonga Standard Time, Samoa Standard Time, Line Islands Standard Time.
    ${FixedDateTimeZone},

    [Parameter()]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Support.RecurrenceFrequency])]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Support.RecurrenceFrequency]
    # the recurrence frequency.
    # How often the schedule profile should take effect.
    # This value must be Week, meaning each week will have the same set of profiles.
    # For example, to set a daily schedule, set **schedule** to every day of the week.
    # The frequency property specifies that the schedule is repeated weekly.
    ${RecurrenceFrequency},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.String[]]
    # the collection of days that the profile takes effect on.
    # Possible values are Sunday through Saturday.
    ${ScheduleDay},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.Int32[]]
    # A collection of hours that the profile takes effect on.
    # Values supported are 0 to 23 on the 24-hour clock (AM/PM times are not supported).
    ${ScheduleHour},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.Int32[]]
    # A collection of minutes at which the profile takes effect at.
    ${ScheduleMinute},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Category('Body')]
    [System.String]
    # the timezone for the hours of the profile.
    # Some examples of valid time zones are: Dateline Standard Time, UTC-11, Hawaiian Standard Time, Alaskan Standard Time, Pacific Standard Time (Mexico), Pacific Standard Time, US Mountain Standard Time, Mountain Standard Time (Mexico), Mountain Standard Time, Central America Standard Time, Central Standard Time, Central Standard Time (Mexico), Canada Central Standard Time, SA Pacific Standard Time, Eastern Standard Time, US Eastern Standard Time, Venezuela Standard Time, Paraguay Standard Time, Atlantic Standard Time, Central Brazilian Standard Time, SA Western Standard Time, Pacific SA Standard Time, Newfoundland Standard Time, E.
    # South America Standard Time, Argentina Standard Time, SA Eastern Standard Time, Greenland Standard Time, Montevideo Standard Time, Bahia Standard Time, UTC-02, Mid-Atlantic Standard Time, Azores Standard Time, Cape Verde Standard Time, Morocco Standard Time, UTC, GMT Standard Time, Greenwich Standard Time, W.
    # Europe Standard Time, Central Europe Standard Time, Romance Standard Time, Central European Standard Time, W.
    # Central Africa Standard Time, Namibia Standard Time, Jordan Standard Time, GTB Standard Time, Middle East Standard Time, Egypt Standard Time, Syria Standard Time, E.
    # Europe Standard Time, South Africa Standard Time, FLE Standard Time, Turkey Standard Time, Israel Standard Time, Kaliningrad Standard Time, Libya Standard Time, Arabic Standard Time, Arab Standard Time, Belarus Standard Time, Russian Standard Time, E.
    # Africa Standard Time, Iran Standard Time, Arabian Standard Time, Azerbaijan Standard Time, Russia Time Zone 3, Mauritius Standard Time, Georgian Standard Time, Caucasus Standard Time, Afghanistan Standard Time, West Asia Standard Time, Ekaterinburg Standard Time, Pakistan Standard Time, India Standard Time, Sri Lanka Standard Time, Nepal Standard Time, Central Asia Standard Time, Bangladesh Standard Time, N.
    # Central Asia Standard Time, Myanmar Standard Time, SE Asia Standard Time, North Asia Standard Time, China Standard Time, North Asia East Standard Time, Singapore Standard Time, W.
    # Australia Standard Time, Taipei Standard Time, Ulaanbaatar Standard Time, Tokyo Standard Time, Korea Standard Time, Yakutsk Standard Time, Cen.
    # Australia Standard Time, AUS Central Standard Time, E.
    # Australia Standard Time, AUS Eastern Standard Time, West Pacific Standard Time, Tasmania Standard Time, Magadan Standard Time, Vladivostok Standard Time, Russia Time Zone 10, Central Pacific Standard Time, Russia Time Zone 11, New Zealand Standard Time, UTC+12, Fiji Standard Time, Kamchatka Standard Time, Tonga Standard Time, Samoa Standard Time, Line Islands Standard Time.
    ${ScheduleTimeZone}
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
            [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
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
            __AllParameterSets = 'Az.Autoscale.custom\New-AzAutoscaleProfileObject';
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
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
            [Microsoft.Azure.PowerShell.Cmdlets.Monitor.Autoscale.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
