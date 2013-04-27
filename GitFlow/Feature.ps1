
function Start-GitFlowFeature {
<#
.SYNOPSIS 
    Start a new Flow Feature branch
#>
    param(
    # The name of the feature
    [Parameter(Mandatory)]
    [string] $Name,
    # For feature branches, Base must be a commit on 'develop'
    [Parameter()]
    [string] $Base
    )
	git flow feature start $FeatureName $Base
}


function Complete-GitFlowFeature {
<#
.SYNOPSIS
    finishes a git flow feature
#>
    param(
    [Parameter(Mandatory)]
    [string] $Name
    )
    git flow feature finish $Name
}

function Publish-GitFlowFeature {
<#
.SYNOPSIS
    push a feature branch to the remote repository,
#>
    [cmdletbinding()]

    param(
    [Parameter(Mandatory)]
    [string] $Name
    )
    git flow feature publish $Name
}

function Request-GitFlowFeature {
<#
.SYNOPSIS
    Pull a feature branch to the remote repository,
#>
    [cmdletbinding()]
    param(
    # the name of the feature
    [Parameter(Mandatory)]
    [string] $Name,
    # the name of the remote repository
    [Parameter(Mandatory)]
    [string] $Remote
    )
    git flow feature pull $Name
}


function Trace-GitFlowFeature {
<#
.SYNOPSIS
    Pull a feature branch to the remote repository,
#>
    param(
    [Parameter(Mandatory)]
    [string] $Name
    )
    git flow feature track $Name
}


function Get-GitFlowFeature {
<#
.SYNOPSIS
    Gets the existing git flow features
#>
    param(
    [switch] $Verbose
    )
    if ($Verbose){
        $v = "-v"
    }
    git flow feature $v
}

function Switch-GitFlowFeature {
<#
.SYNOPSIS
    checkouts another git flow feature
#>
    param(
    [Parameter(Mandatory)]
    [string] $Name
    )        
    git flow feature checkout $Name
}


Set-Alias stgff Start-GitFlowFeature
Set-Alias cpgff Complete-GitFlowFeature
Set-Alias pugff Publish-GitFlowFeature
Set-Alias trgff Trace-GitFlowFeature
Set-Alias ggff  Get-GitFlowFeature
Set-Alias swgff Switch-GitFlowFeature
