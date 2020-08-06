#https://gist.github.com/MyITGuy/9628895
#http://stu.cbu.edu/java/docs/technotes/guides/deploy/properties.html

#<Windows Directory>\Sun\Java\Deployment\deployment.config
#- or -
#<JRE Installation Directory>\lib\deployment.config

$javapath64 = "C:\Program Files\Java"
$javapath32 = "C:\Program Files (x86)\Java"
$javadeploy = "C:\temp\java"

echo "Installing Java Configurations - Please Wait."
echo "Window will close after install is complete"
If (Test-Path -Path $javadeploy){
    Write-Host "Java Deployment Properties Installed"
}Else {
    Write-Host "Installing Java Deployment Properties"
    Mkdir "C:\temp"
    Mkdir "C:\temp\java"
    Copy-Item -Path .\Files\deployment.properties -Destination C:\temp\JAVA\deployment.properties -Force
    Copy-Item -Path .\Files\exception.sites -Destination C:\temp\JAVA\exception.sites -Force
}

If (Test-Path -Path $javapath64){
    for-each ($java64install in $javapath64){
    Copy-Item -Path .\Files\deployment.config -Destination $javapath64$java64install\lib\deployment.config -Force
    }
    Write-Host "java 64-Bit ConfigurationZ Installed"
}Else {
    Write-Host "java 64-Bit Is Not Installed"
}
If (Test-Path -Path $javapath32){
    for-each ($java32install in $javapath32){
    Copy-Item -Path .\Files\deployment.config -Destination $javapath32$java32install\lib\deployment.config -Force
    }
    Write-Host "java 32-Bit Configurations Installed"
}Else {
    Write-Host "java 32-Bit Is Not Installed"
}
