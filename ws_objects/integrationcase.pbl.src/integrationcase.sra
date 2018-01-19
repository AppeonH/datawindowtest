$PBExportHeader$integrationcase.sra
$PBExportComments$Generated Application Object
forward
global type integrationcase from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
string gs_link = "http://192.0.1.201:8080/integrationcase"
end variables

global type integrationcase from application
string appname = "integrationcase"
end type
global integrationcase integrationcase

type prototypes
FUNCTION boolean SetCursorPos(long xpos,long ypos) LIBRARY "user32.dll"
FUNCTION uint FindWindowA (long classname,string windowname) LIBRARY "user32.dll" alias for "FindWindowA;Ansi"
FUNCTION uint FindWindowExA (long parentwin,long childwindow,long classname,string windowname) LIBRARY "user32.dll" alias for "FindWindowExA;Ansi"
end prototypes

on integrationcase.create
appname="integrationcase"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on integrationcase.destroy
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

RegistryGet('HKEY_LOCAL_MACHINE\SOFTWARE\INTEL\LANDesk\VirusProtect6\CurrentVersion\LiveUpdateSource','IPAddress',RegString!,gs_link)
open(w_main)
//open(w_mdi)
//open(w_slideupui)
end event

event close;disconnect;
end event

