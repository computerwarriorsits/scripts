@ECHO OFF
IF NOT EXIST C:\ProgramData\MXB (
  IF NOT EXIST C:\ProgramData\MXB.bad (
    IF NOT EXIST C:\ProgramData\MXB.bak (
      IF NOT EXIST C:\ProgramData\MXB.old (
        IF NOT EXIST C:\ProgramData\MXB.old2 (
          IF NOT EXIST C:\ProgramData\MXB.older (
            IF NOT EXIST C:\Temp\MXB (
              IF NOT EXIST C:\Temp\MXB.bad (
                IF NOT EXIST C:\Temp\MXB.bak (
                  IF NOT EXIST C:\Temp\MXB.old (
                    IF NOT EXIST C:\Temp\MXB.old2 (
                      IF NOT EXIST C:\Temp\MXB.older (
                        ECHO No MXB folders were located in C:\ProgramData nor C:\Temp. Nothing to do...
                      )
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  )
)
IF EXIST C:\ProgramData\MXB ECHO Deleting C:\ProgramData\MXB...
IF EXIST C:\ProgramData\MXB RD/S/Q C:\ProgramData\MXB
IF EXIST C:\ProgramData\MXB.bad ECHO Deleting C:\ProgramData\MXB.bad...
IF EXIST C:\ProgramData\MXB.bad RD/S/Q C:\ProgramData\MXB.bad
IF EXIST C:\ProgramData\MXB.bak ECHO Deleting C:\ProgramData\MXB.bak...
IF EXIST C:\ProgramData\MXB.bak RD/S/Q C:\ProgramData\MXB.bak
IF EXIST C:\ProgramData\MXB.old ECHO Deleting C:\ProgramData\MXB.old...
IF EXIST C:\ProgramData\MXB.old RD/S/Q C:\ProgramData\MXB.old
IF EXIST C:\ProgramData\MXB.old2 ECHO Deleting C:\ProgramData\MXB.old2...
IF EXIST C:\ProgramData\MXB.old2 RD/S/Q C:\ProgramData\MXB.old2
IF EXIST C:\ProgramData\MXB.older ECHO Deleting C:\ProgramData\MXB.older...
IF EXIST C:\ProgramData\MXB.older RD/S/Q C:\ProgramData\MXB.older
IF EXIST C:\Temp\MXB ECHO Deleting C:\Temp\MXB...
IF EXIST C:\Temp\MXB RD/S/Q C:\Temp\MXB
IF EXIST C:\Temp\MXB.bad ECHO Deleting C:\Temp\MXB.bad...
IF EXIST C:\Temp\MXB.bad RD/S/Q C:\Temp\MXB.bad
IF EXIST C:\Temp\MXB.bak ECHO Deleting C:\Temp\MXB.bak...
IF EXIST C:\Temp\MXB.bak RD/S/Q C:\Temp\MXB.bak
IF EXIST C:\Temp\MXB.old ECHO Deleting C:\Temp\MXB.old...
IF EXIST C:\Temp\MXB.old RD/S/Q C:\Temp\MXB.old
IF EXIST C:\Temp\MXB.old2 ECHO Deleting C:\Temp\MXB.old2...
IF EXIST C:\Temp\MXB.old2 RD/S/Q C:\Temp\MXB.old2
IF EXIST C:\Temp\MXB.older ECHO Deleting C:\Temp\MXB.older...
IF EXIST C:\Temp\MXB.older RD/S/Q C:\Temp\MXB.older
