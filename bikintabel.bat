if exist index.html del index.html
dir /a /b /-p /o:gen *.jpg > filelisting.txt
for /F "delims=;" %%I in (filelisting.txt) do (if %%I NEQ filelisting.txt echo ^<a href="%%I"^>^<img class="col-md-3" src="%%I"^>^</a^> >> index.html)
if exist filelisting.txt del filelisting.txt