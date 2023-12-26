C:\utils\curl-8.2.1_6-win64-mingw\bin\curl.exe --help  
https://httpie.io/

Windows has an alias for curl to call invoke request, this can be removed with the steps at https://superuser.com/questions/883914/how-do-i-permanently-remove-a-default-powershell-alias/890193#890193?newreg=6712ccdbdd3a4f129b24b0262d28674b
Skip this step if you already have a Powershell profile:

New-Item $profile -force -itemtype file
Then edit your profile:

notepad $profile
Add the following line to it:

remove-item alias:curl
Save, close notepad and reload the profile with the command below or close and open Powershell to apply the profile:

. $profile
