# Get all pods, convert to objects
$pods = kubectl get po -A -o json
| ConvertFrom-Json | Select-Object -ExpandProperty items

# Get all nodes, convert to objects
$nodes = kubectl get nodes -o json
| ConvertFrom-Json | Select-Object -ExpandProperty items

# Output node names
$nodes.metadata.name

# Loop through pods and report status
$pods | ForEach-Object {
    Write-Host $_.metadata.name "=" $_.status.phase
}

# Basic example, create your own functions
function Get-Pods {
    kubectl get po -A -o json | ConvertFrom-Json | Select-Object -ExpandProperty items
}