
function New-GitFlowFeature ([string] $FeatureName){
	git flow feature start $FeatureName
}