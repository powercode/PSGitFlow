function Start-GitFlowRelease {
<#
.SYNOPSIS 
    Start a new Flow release branch
#>
    param(
    # The name of the release
    [Parameter(Mandatory)]
    [string] $Name,
    # For release branches, Base must be a commit on 'develop'
    [Parameter()]
    [string] $Base
    )
	git flow Release start $ReleaseName $Base
}


function Complete-GitFlowRelease {
<#
.SYNOPSIS
    finishes a git flow release
#>
    param(
    # the name of a release
    [Parameter(Mandatory)]
    [string] $Name
    )
    git flow release finish $Name
}