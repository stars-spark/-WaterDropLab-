name=Inputbox("��Ҫˢ���ٴ���Ļ������5���ִ�У��뼰ʱ����궨λˢ������")
WScript.Sleep 100
On Error Resume Next
Dim xda,ye
set xda=createobject("wscript.shell")
wscript.sleep 300
for i = 1 to name
wscript.sleep 50
xda.AppActivate
xda.sendKeys "^V"
xda.sendKeys "%s"
next
wscript.quit