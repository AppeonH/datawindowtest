$PBExportHeader$compositetest.sra
$PBExportComments$Generated Application Object
forward
global type compositetest from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
string		gs_link
end variables

global type compositetest from application
string appname = "compositetest"
end type
global compositetest compositetest

type prototypes
Function   ulong   FindWindowA   (long   lpClassName,String   lpWindowName)   Library   "user32.dll " alias for "FindWindowA;Ansi"
Function long FindWindowExA   (long hWnd, long hWndChild, long lpszClassName, string lpszWindow) library 'user32.dll' alias for "FindWindowExA;Ansi"
end prototypes

on compositetest.create
appname="compositetest"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on compositetest.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;// Profile appeonsample
SQLCA.DBMS = "ODBC"
SQLCA.AutoCommit = false
SQLCA.DBParm = "ConnectString='DSN=integrationcase;UID=dba;PWD=sql'"
connect using sqlca;
//open(w_composite_fun)
open(w_mdi)
end event

event close;disconnect;
end event

