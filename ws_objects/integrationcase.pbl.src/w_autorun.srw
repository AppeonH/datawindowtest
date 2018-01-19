$PBExportHeader$w_autorun.srw
forward
global type w_autorun from window
end type
type cbx_1 from checkbox within w_autorun
end type
type em_1 from editmask within w_autorun
end type
type cb_3 from commandbutton within w_autorun
end type
type cb_2 from commandbutton within w_autorun
end type
type rb_none from radiobutton within w_autorun
end type
type rb_all from radiobutton within w_autorun
end type
type dw_1 from datawindow within w_autorun
end type
type cb_1 from commandbutton within w_autorun
end type
type gb_1 from groupbox within w_autorun
end type
end forward

global type w_autorun from window
integer width = 3035
integer height = 2540
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cbx_1 cbx_1
em_1 em_1
cb_3 cb_3
cb_2 cb_2
rb_none rb_none
rb_all rb_all
dw_1 dw_1
cb_1 cb_1
gb_1 gb_1
end type
global w_autorun w_autorun

type variables
long il_index
boolean ib_saveas
end variables

forward prototypes
public subroutine wf_openwin (string as_win)
public subroutine wf_saveresult ()
public subroutine wf_selectitems ()
end prototypes

public subroutine wf_openwin (string as_win);int li_error,li_row

choose case as_win
	case "w_group"
		opensheet(w_group,w_main,0,layered!)
		w_group.event ue_autorun()
		w_group.windowstate = Minimized!
		li_error = w_group.wf_returnerror()
		li_row = dw_1.find("window = 'w_group'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))
		wf_saveresult()
	case "w_sharedata"
		opensheet(w_sharedata,w_main,0,layered!)
		w_sharedata.event ue_autorun()
		w_sharedata.windowstate = Minimized!
		li_error = w_sharedata.wf_returnerror()
		li_row = dw_1.find("window = 'w_sharedata'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))
		wf_saveresult()
	case "w_integration_case_freeform"
		opensheet(w_integration_case_freeform,w_main,0,layered!)
		w_integration_case_freeform.event ue_autorun()
		w_integration_case_freeform.windowstate = Minimized!
		li_error = w_integration_case_freeform.wf_returnerror()
		li_row = dw_1.find("window = 'w_integration_case_freeform'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case "w_integration_case_datastore"
		opensheet(w_integration_case_datastore,w_main,0,layered!)
		w_integration_case_datastore.event ue_autorun()
		w_integration_case_datastore.windowstate = Minimized!
		li_error = w_integration_case_datastore.wf_returnerror()
		li_row = dw_1.find("window = 'w_integration_case_datastore'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))
		wf_saveresult()
	case "w_integration_case_modify"
		opensheet(w_integration_case_modify,w_main,0,layered!)
		w_integration_case_modify.event ue_autorun()
		w_integration_case_modify.windowstate = Minimized!
		li_error = w_integration_case_modify.wf_returnerror()
		li_row = dw_1.find("window = 'w_integration_case_modify'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))
		wf_saveresult()
	case "w_dwitemstatus"
		opensheet(w_dwitemstatus,w_main,0,layered!)
		w_dwitemstatus.event ue_autorun()
		w_dwitemstatus.windowstate = Minimized!
		li_error = w_dwitemstatus.wf_returnerror()
		li_row = dw_1.find("window = 'w_dwitemstatus'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))
		wf_saveresult()
	case "w_expressionfun"
		opensheet(w_expressionfun,w_main,0,layered!)
		w_expressionfun.event ue_autorun()
		w_expressionfun.windowstate = Minimized!
		li_error = w_expressionfun.wf_returnerror()
		li_row = dw_1.find("window = 'w_expressionfun'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))
		wf_saveresult()
	case "w_dwdataaccess"
		opensheet(w_dwdataaccess,w_main,0,layered!)
		w_dwdataaccess.event ue_autorun()
		w_dwdataaccess.windowstate = Minimized!
		li_error = w_dwdataaccess.wf_returnerror()
		li_row = dw_1.find("window = 'w_dwdataaccess'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))
		wf_saveresult()
	case "w_integration_case_querymode"
		opensheet(w_integration_case_querymode,w_main,0,layered!)
		w_integration_case_querymode.event ue_autorun()
		w_integration_case_querymode.windowstate = Minimized!
		li_error = w_integration_case_querymode.wf_returnerror()
		li_row = dw_1.find("window = 'w_integration_case_querymode'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()	
	case "w_rowscopy"
		opensheet(w_rowscopy,w_main,0,layered!)
		w_rowscopy.event ue_autorun()
		w_rowscopy.windowstate = Minimized!
		li_error = w_rowscopy.wf_returnerror()
		li_row = dw_1.find("window = 'w_rowscopy'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()	
	case "w_rowsmove"
		opensheet(w_rowsmove,w_main,0,layered!)
		w_rowsmove.event ue_autorun()
		w_rowsmove.windowstate = Minimized!
		li_error = w_rowsmove.wf_returnerror()
		li_row = dw_1.find("window = 'w_rowsmove'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case "w_updaterowstatus"
		opensheet(w_updaterowstatus,w_main,0,layered!)
		w_updaterowstatus.event ue_autorun()
		w_updaterowstatus.windowstate = Minimized!
		li_error = w_updaterowstatus.wf_returnerror()
		li_row = dw_1.find("window = 'w_updaterowstatus'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case "w_updatecolumnstatus"
		opensheet(w_updatecolumnstatus,w_main,0,layered!)
		w_updatecolumnstatus.event ue_autorun()
		w_updatecolumnstatus.windowstate = Minimized!
		li_error = w_updatecolumnstatus.wf_returnerror()
		li_row = dw_1.find("window = 'w_updatecolumnstatus'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case "w_composite"
		opensheet(w_composite,w_main,0,layered!)
		w_composite.event ue_autorun()
		w_composite.windowstate = Minimized!
		li_error = w_composite.wf_returnerror()
		li_row = dw_1.find("window = 'w_composite'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case "w_dynamicdw"
		opensheet(w_dynamicdw,w_main,0,layered!)
		w_dynamicdw.event ue_autorun()
		w_dynamicdw.windowstate = Minimized!
		li_error = w_dynamicdw.wf_returnerror()
		li_row = dw_1.find("window = 'w_dynamicdw'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case "w_dynamiccreate_syntaxfromsql"
		opensheet(w_dynamiccreate_syntaxfromsql,w_main,0,layered!)
		w_dynamiccreate_syntaxfromsql.event ue_autorun()
		w_dynamiccreate_syntaxfromsql.windowstate = Minimized!
		li_error = w_dynamiccreate_syntaxfromsql.wf_returnerror()
		li_row = dw_1.find("window = 'w_dynamiccreate_syntaxfromsql'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case "w_eventseq"
		opensheet(w_eventseq,w_main,0,layered!)
		w_eventseq.event ue_autorun()
		w_eventseq.windowstate = Minimized!
		li_error = w_eventseq.wf_returnerror()
		li_row = dw_1.find("window = 'w_eventseq'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()	
	case "w_labeldw"
		opensheet(w_labeldw,w_main,0,layered!)
		w_labeldw.event ue_autorun()
		w_labeldw.windowstate = Minimized!
		li_error = w_labeldw.wf_returnerror()
		li_row = dw_1.find("window = 'w_labeldw'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
//	case 'w_graphtest'
//		opensheet(w_graphtest,w_main,0,layered!)
//		w_graphtest.event ue_autorun()
//		w_graphtest.windowstate = Minimized!
//		li_error = w_graphtest.wf_returnerror()
//		li_row = dw_1.find("window = 'w_graphtest'",1,dw_1.rowcount())
//		dw_1.setitem(li_row,'result',string(li_error))	
//		wf_saveresult()
	case 'w_reviewbug'
		opensheet(w_reviewbug,w_main,0,layered!)
		w_reviewbug.event ue_autorun()
		w_reviewbug.windowstate = Minimized!
		li_error = w_reviewbug.wf_returnerror()
		li_row = dw_1.find("window = 'w_reviewbug'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case 'w_nupdw'
		opensheet(w_nupdw,w_main,0,layered!)
		w_nupdw.event ue_autorun()
		w_nupdw.windowstate = Minimized!
		li_error = w_nupdw.wf_returnerror()
		li_row = dw_1.find("window = 'w_nupdw'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
	case 'w_crosstabdw'
		opensheet(w_crosstabdw,w_main,0,layered!)
		w_crosstabdw.event ue_autorun()
		w_crosstabdw.windowstate = Minimized!
		li_error = w_crosstabdw.wf_returnerror()
		li_row = dw_1.find("window = 'w_crosstabdw'",1,dw_1.rowcount())
		dw_1.setitem(li_row,'result',string(li_error))	
		wf_saveresult()
end choose
end subroutine

public subroutine wf_saveresult ();long ll_FileSource,ll_FileTarget
string ls_FileStream
//ll_FileSource = FileOpen("c:\output.txt",StreamMode!)
//FileRead(ll_FileSource,ls_FileStream)
//
//ll_FileTarget = FileOpen("c:\result.txt",StreamMode!,Write!,LockWrite!,Append!)
//FileWrite(ll_FileTarget,ls_FileStream)
//FileClose(ll_FileSource)
//FileClose(ll_FileTarget)

string ls_output = "c:\output.txt"
string ls_result = "c:\" + string(today(),"yyyyÄêmmÔÂddÈÕ") +"result.txt"

integer loops, i

long flen, bytes_read

// Get the file length, and open the file
flen = FileLength(ls_output)
ll_FileSource = FileOpen(ls_output,StreamMode!)

IF flen > 32765 THEN
        IF Mod(flen, 32765) = 0 THEN
            loops = flen/32765
        ELSE
            loops = (flen/32765) + 1
        END IF
ELSE
        loops = 1
END IF

// Read the file

ll_FileTarget = FileOpen(ls_result,StreamMode!,Write!,LockWrite!,Append!)
long j
FOR i = 1 to loops
	FileRead(ll_FileSource,ls_FileStream)
	j = 1
	DO WHILE j > 0
		j = Pos(ls_FileStream, "[±àºÅ",j)
		if j > 0 then 
			il_index ++
			ls_FileStream = replace(ls_FileStream,j,1,string(il_index) +".~r~n[")
			j = j + 14
		end if
		
	LOOP	
	//filewrite£¨£©ÎÒÃÇµÄbug.³¬³¤Ö®ºó£¬²»ÄÜÔÙ×·¼Ó
	if len(ls_FileStream) > 32765 then
		FileWrite(ll_FileTarget,mid(ls_FileStream,1,integer(len(ls_FileStream)/2)))
		FileWrite(ll_FileTarget,mid(ls_FileStream,integer(len(ls_FileStream)/2) + 1))
	else
		FileWrite(ll_FileTarget,ls_FileStream)
	end if
NEXT

FileClose(ll_FileSource)
FileClose(ll_FileTarget)
end subroutine

public subroutine wf_selectitems ();int i
string ls_check

if rb_all.checked  then
	ls_check = "1"
elseif rb_none.checked then
	ls_check = "0"
end if

for i = 1 to dw_1.rowcount()
	dw_1.SetItem(i,'status',ls_check)
next

end subroutine

on w_autorun.create
this.cbx_1=create cbx_1
this.em_1=create em_1
this.cb_3=create cb_3
this.cb_2=create cb_2
this.rb_none=create rb_none
this.rb_all=create rb_all
this.dw_1=create dw_1
this.cb_1=create cb_1
this.gb_1=create gb_1
this.Control[]={this.cbx_1,&
this.em_1,&
this.cb_3,&
this.cb_2,&
this.rb_none,&
this.rb_all,&
this.dw_1,&
this.cb_1,&
this.gb_1}
end on

on w_autorun.destroy
destroy(this.cbx_1)
destroy(this.em_1)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.rb_none)
destroy(this.rb_all)
destroy(this.dw_1)
destroy(this.cb_1)
destroy(this.gb_1)
end on

event open;//int li_current
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_integration_case_freeform ')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_integration_case_datastore')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_otertype                   ')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_eventseq                  ')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_integration_case_modify')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_dwitemstatus')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_expressionfun')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_dwdataaccess')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_integration_case_querymode')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_dw_nvo')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_format')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_ui_test')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_rowscopy')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_rowsmove')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_updaterowstatus')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_updatecolumnstatus')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_sharedata')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_composite')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_group')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_dynamicdw')
//dw_1.setitem(li_current,'status','1')
//
//li_current = dw_1.insertrow(0)
//dw_1.setitem(li_current,"window",'w_dynamiccreate_syntaxfromsql')
//dw_1.setitem(li_current,'status','1')
//
//dw_1.modify("result.color = 'if(result <> ~"0~",rgb(255,0,0),rgb(0,0,0))'")
//

int li_current
//string ls_window[] ={'w_integration_case_freeform','w_integration_case_datastore',&
//						 	'w_otertype','w_eventseq','w_integration_case_modify','w_dwitemstatus',&
//						 	'w_expressionfun','w_dwdataaccess','w_integration_case_querymode',&
//							'w_dw_nvo','w_format','w_ui_test','w_rowscopy','w_rowsmove',&
//							'w_updaterowstatus','w_updatecolumnstatus','w_sharedata',&
//							'w_composite','w_group','w_dynamicdw','w_dynamiccreate_syntaxfromsql'}
//
string ls_window[] ={'w_integration_case_freeform','w_integration_case_datastore',&
						 	'w_eventseq','w_integration_case_modify','w_dwitemstatus',&
						 	'w_expressionfun','w_dwdataaccess','w_integration_case_querymode',&
							'w_rowscopy','w_rowsmove',&
							'w_updaterowstatus','w_updatecolumnstatus','w_sharedata',&
							'w_composite','w_group','w_dynamicdw','w_dynamiccreate_syntaxfromsql',&
							'w_labeldw','w_graphtest','w_reviewbug','w_nupdw','w_crosstabdw'}

string ls_desc[] 	 ={'Datawindow Integration Test','DataStore Integrationcase Test',&
						 	'Event Occurs Sequence','Modify and Dscribe Test','Dw Item Status',&
						 	'DwExpressionFunction','DwDataAccess','QueryMode Test',&
							'RowsCopy Test','RowsMove Test',&
							'Update Row Status','Update Column Status','ShareData Test',&
							'Composite Dw','Group Dw','Dynamic Dw','DynamicDw SyntaxFromSql',&
							'Label Dw','GraphDW','ReviewBug','NupDW','CrosstabDW'}
int i					
for i = 1 to UpperBound(ls_window)
	li_current = dw_1.insertrow(0)
	dw_1.setitem(li_current,'status','1')

	dw_1.setitem(li_current,"window",string(ls_window[i],"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"))
	dw_1.setitem(li_current,"descript",string(ls_desc[i],"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"))
next

dw_1.modify("result.color = 'if(result <> ~"0~",rgb(255,0,0),rgb(0,0,0))'")
timer(1)
end event

event timer;if ib_saveas then//·ÅÔÚtimerÖÐÖ÷ÒªÊÇÎªÁËÒ»¸öuedit32.exeÊµÀý
	Run("C:\Program Files\UltraEdit\UEDIT32.EXE C:\autorun.txt", Normal!)
	Run("C:\Program Files\UltraEdit\UEDIT32.EXE C:\output.txt", Normal!)
	Run("C:\Program Files\UltraEdit\UEDIT32.EXE C:\result.txt", Normal!)
	
	timer(0)
	ib_saveas = false
	
end if


string ls
ls = string(now())
if cbx_1.checked then
	if (ls = em_1.text) then
			timer(0)
			cb_1.TriggerEvent(clicked!)
			timer(1)	
	end if
end if
end event

type cbx_1 from checkbox within w_autorun
integer x = 1051
integer y = 16
integer width = 343
integer height = 132
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "AutoTest"
boolean checked = true
end type

type em_1 from editmask within w_autorun
integer x = 1413
integer y = 40
integer width = 421
integer height = 88
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "15:22:00"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = timemask!
string mask = "[time]"
string displaydata = "~t/"
end type

type cb_3 from commandbutton within w_autorun
integer x = 622
integer y = 32
integer width = 288
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "OpenFile"
end type

event clicked;Run("C:\Program Files\UltraEdit\UEDIT32.EXE", Normal!)
ib_saveas = true
timer(2)

end event

type cb_2 from commandbutton within w_autorun
integer x = 329
integer y = 32
integer width = 288
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "SaveDw"
end type

event clicked;if dw_1.saveas("c:\"+string(today(),"yyyyÄêmmÔÂddÈÕ")+"autorun.txt",text!,false) <> 1 then
	messagebox("","save c:\autorun.txt false!")
end if
long ll_FileSource,ll_FileTarget
string ls_FileStream

string ls_output = "c:\autorun.txt"

long flen, bytes_read

// Get the file length, and open the file
flen = FileLength(ls_output)
ll_FileSource = FileOpen(ls_output,StreamMode! )
FileRead(ll_FileSource,ls_FileStream)
FileClose(ll_FileSource)

// Read the file
ll_FileTarget = FileOpen(ls_output,StreamMode!,Write!,LockWrite!,Replace! )
long j = 1
DO WHILE j > 0
	j = Pos(ls_FileStream, "1~t",j)
	if j = 0 then j = Pos(ls_FileStream, "0~t",max(j,1))
	if j > 0 then 
		il_index ++
		ls_FileStream = replace(ls_FileStream,j,2,"")
		j = j + 3
	end if
	
LOOP	
                                         
ls_FileStream = "´°¿Ú                                         ~t²âÊÔÃèÊö                                       ~t´íÎóÊý~r~n" + ls_FileStream
FileWrite(ll_FileTarget,ls_FileStream)

FileClose(ll_FileTarget)
end event

type rb_none from radiobutton within w_autorun
integer x = 2377
integer y = 56
integer width = 302
integer height = 72
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "None"
end type

event clicked;wf_selectitems()
end event

type rb_all from radiobutton within w_autorun
integer x = 1998
integer y = 56
integer width = 302
integer height = 72
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "All"
boolean checked = true
end type

event clicked;wf_selectitems()
end event

type dw_1 from datawindow within w_autorun
integer x = 32
integer y = 172
integer width = 2930
integer height = 2232
integer taborder = 20
string title = "none"
string dataobject = "d_autorun"
boolean hscrollbar = true
boolean vscrollbar = true
boolean hsplitscroll = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_autorun
integer x = 32
integer y = 32
integer width = 288
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "AutoRun"
end type

event clicked;int li,li_pos,loops
long ll_FileLength,ll_FileSource,ll_FileTarget
string ls_window,ls_run,ls_FileStream,ls_TotalFileStream
il_index = 0
for li = 1 to dw_1.RowCount()
	ls_run = dw_1.GetItemString(li,'status')
	if ls_run <> '1' then continue
	ls_window = trim(dw_1.GetItemString(li,'window'))
	wf_openwin(ls_window)
	

next
cb_2.TriggerEvent(clicked!)



//	
////	ll_FileLength = FileLength("c:\output.text")
////	
////	if ll_FileLength > 32765 then
////		if mod(ll_FileLength, 32765) = 0 then
////			loops = ll_FileLength / 32765
////		else
////			loops = (ll_FileLength / 32765) + 1
////		end if
////	else 
////		loops = 1
////	end if
//	
////	li_pos = 1
//	
////	for li_pos = 1 to loops
////		//open output.text
//		ll_FileSource = FileOpen("c:\output.text,StreamMode!")
//		//FileSeek(ll_FileSource,(li_pos - 1) * 32765 + 1,FromCurrent!)
//		FileRead(ll_FileSource,ls_FileStream)
//		//write result
//		ll_FileTarget = FileOpen("c:\result.text,StreamMode!,Write!,LockWrite!,Append!")
//		FileWrite(ll_FileTarget,ls_FileStream)
//		FileClose(ll_FileTarget)
//		FileClose(ll_FileSource)
////	next	
end event

type gb_1 from groupbox within w_autorun
integer x = 1957
integer y = 4
integer width = 805
integer height = 132
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Select"
end type

