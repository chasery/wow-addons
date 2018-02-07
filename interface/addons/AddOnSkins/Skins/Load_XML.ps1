New-Item Load_XML.xml -Force
Add-Content Load_XML.xml `<Ui>
$files = Get-ChildItem –name *.lua
foreach ($file in $files) {Add-Content Load_XML.xml `t`<Script` file=`"$file`"/>}
Add-Content Load_XML.xml `</Ui>

foreach ($file in $files) {$file}