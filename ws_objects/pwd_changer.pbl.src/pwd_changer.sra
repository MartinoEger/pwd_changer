$PBExportHeader$pwd_changer.sra
$PBExportComments$Generated Application Object
forward
global type pwd_changer from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type pwd_changer from application
string appname = "pwd_changer"
end type
global pwd_changer pwd_changer

on pwd_changer.create
appname="pwd_changer"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pwd_changer.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;Open (w_pwd_changer)


end event

