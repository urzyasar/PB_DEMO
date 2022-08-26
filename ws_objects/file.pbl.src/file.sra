$PBExportHeader$file.sra
forward
global type file from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
string current_file_name
end variables

global type file from application
string appname = "file"
string appruntimeversion = "19.2.0.2728"
end type
global file file

type prototypes
Function string CreateFile(char FileName) LIBRARY "user32.dll" alias for "CreateFile;Ansi"
end prototypes

on file.create
appname="file"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on file.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open(w_file)

end event

