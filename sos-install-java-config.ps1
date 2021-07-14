#https://gist.github.com/MyITGuy/9628895
#http://stu.cbu.edu/java/docs/technotes/guides/deploy/properties.html
#https://github.com/simeononsecurity/JAVA-STIG-Script

#<Windows Directory>\Sun\Java\Deployment\deployment.config
#- or -
#<JRE Installation Directory>\lib\deployment.config

If (Test-Path -Path "C:\Windows\Sun\Java\Deployment\deployment.config"){
    Write-Host "JAVA Deployment Config Already Installed" -ForegroundColor Green -BackgroundColor Black
}Else {
    Write-Host "Installing JAVA Deployment Config...." -ForegroundColor Green -BackgroundColor Black
    Mkdir "C:\Windows\Sun\Java\Deployment\"
    Copy-Item -Path .\Files\deployment.config -Destination "C:\Windows\Sun\Java\Deployment\" -Force
    Write-Host "JAVA Configs Installed" -ForegroundColor White -BackgroundColor Black
}
If (Test-Path -Path "C:\temp\JAVA\"){
    Write-Host " JAVA Configs Already Deployed" -ForegroundColor Green -BackgroundColor Black
}Else {
    Write-Host "Installing JAVA Configurations...." -ForegroundColor Green -BackgroundColor Black
    Mkdir "C:\temp\JAVA"
    Copy-Item -Path .\Files\deployment.properties -Destination "C:\temp\JAVA\" -Force
    Copy-Item -Path .\Files\exception.sites -Destination "C:\temp\JAVA\" -Force
    Write-Host "JAVA Configs Installed" -ForegroundColor White -BackgroundColor Black
}
