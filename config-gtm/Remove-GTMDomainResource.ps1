function Remove-GTMDomainResource
{
    Param(
        [Parameter(Mandatory=$true)]  [string] $DomainName,
        [Parameter(Mandatory=$true)]  [string] $ResourceName,
        [Parameter(Mandatory=$false)] [string] $EdgeRCFile = '~\.edgerc',
        [Parameter(Mandatory=$false)] [string] $Section = 'default',
        [Parameter(Mandatory=$false)] [string] $AccountSwitchKey
    )

    $Path = "/config-gtm/v1/domains/$DomainName/resources/$ResourceName`?accountSwitchKey=$AccountSwitchKey"

    try {
        $Result = Invoke-AkamaiRestMethod -Method DELETE -Path $Path -EdgeRCFile $EdgeRCFile -Section $Section
        return $Result
    }
    catch {
        throw $_.Exception
    }  
}