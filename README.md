
# Automate Oracle JRE 8 (JAVA) STIGS

[![VirusTotal Scan](https://github.com/simeononsecurity/Oracle-JRE-8-STIG-Script/actions/workflows/virustotal.yml/badge.svg)](https://github.com/simeononsecurity/Oracle-JRE-8-STIG-Script/actions/workflows/virustotal.yml)

The following script is an automation process for installing Java deployment configurations using PowerShell. The script first elevates the privileges of the current process and sets the directory to the location of the script. It then checks if the "deployment.config" file is present in the default JRE installation directory and the Windows directory. If not, the script installs the "deployment.config" file in the Windows directory, and checks for the "deployment.properties" and "exception.sites" files. If these files are not present, the script installs them in the Windows directory. The status of the installations is displayed with appropriate messages.

## Notes:

This will bring you to 100% compliance on the applicable STIG and might break your JAVA applications. As with any STIG, testing should be done before a full roleout.

## Ansible:
We now offer a playbook collection for this script. Please see the following:
- [Github Repo](https://github.com/simeononsecurity/Windows_STIG_Ansible)
- [Ansible Galaxy](https://galaxy.ansible.com/simeononsecurity/windows_stigs)

## STIGS/SRGs Applied:

- [Oracle JRE 8 V1R5](https://dl.dod.cyber.mil/wp-content/uploads/stigs/zip/U_Oracle_JRE_8_Windows_V1R5_STIG.zip)

## Sources:

- [MyITGuy - deployment.properties](https://gist.github.com/MyITGuy/9628895)

- [cbu.edu - Java Technotes](http://stu.cbu.edu/java/docs/technotes/guides/deploy/properties.html)

- [Oracle - Java Technotes](https://docs.oracle.com/javase/7/docs/technotes/guides/jweb/security/exception_site_list.html) 

## Download the files:

Download the required files from the [GitHub Repository](https://github.com/simeononsecurity/JAVA-STIG-Script)

## How to run the script:

**The script may be lauched from the extracted GitHub download like this:**

```
.\sos-install-java-config.ps1
```
