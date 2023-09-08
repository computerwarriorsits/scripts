@FOR /F "tokens=* delims= " %%p in (C:\IT\SentinelOnePassphrase.txt) DO @FOR /R "C:\Program Files\SentinelOne" %%s in (*SentinelCtl.exe) DO @"%%s" unprotect -k "%%p"
