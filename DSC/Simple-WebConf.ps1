configuration MyWebConfig
{
   # A Configuration block can have zero or more Node blocks
   Node ("localhost")
   {
      # Next, specify one or more resource blocks

      # WindowsFeature is one of the built-in resources you can use in a Node block
      # This example ensures the Web Server (IIS) role is installed
      WindowsFeature webserver
      {
          Ensure = "Present" # To uninstall the role, set Ensure to "Absent"
          Name = "Web-Server"  
      }

     
   }
} 


MyWebConfig
Start-DscConfiguration -Wait -Verbose -Path .\MyWebConfig