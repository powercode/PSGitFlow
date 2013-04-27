. $PSScriptRoot\Feature.ps1
. $PSScriptRoot\Release.ps1


function Initialize-GitFlowDirectory {
<#
.SYNOPSIS 
    Initializes a git repository with the basic branch structure
#>
param(
    # The name of the feature
    [Parameter()]
    [switch] $AcceptAllDefaults    
)

    git flow init
}