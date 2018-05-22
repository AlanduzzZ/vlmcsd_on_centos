打开windows CMD命令行，方法是win+R，输入cmd，回车，然后在CMD命令行里依次执行如下命令

激活Windows
cd /d "%SystemRoot%\system32"
slmgr /skms ssproxy.imalandu.com
slmgr /ato
slmgr /xpr

激活Office，这里是激活64位
cd /d "%ProgramFiles%\Microsoft Office\Office15"
cscript ospp.vbs /sethst:ssproxy.imalandu.com
cscript ospp.vbs /act
cscript ospp.vbs /dstatus

激活Office，这里是激活32位
cd /d "%ProgramFiles(x86)%\Microsoft Office\Office15"
cscript ospp.vbs /sethst:ssproxy.imalandu.com
cscript ospp.vbs /act
cscript ospp.vbs /dstatus
