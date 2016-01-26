function New-DscSnippet {
 
   $resources = Get-DscResource | select -ExpandProperty name
 
   foreach ($resource in $resources) {
 
       $text = Get-DscResource -Name $resource -Syntax
       New-ISESnippet -Text $text -Title "DSC $resource Resource" -Description "Full DSC $resource resource syntax" -Force
   }
}