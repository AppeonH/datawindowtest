$PBExportHeader$w_labeldw.srw
forward
global type w_labeldw from window
end type
type cb_2 from commandbutton within w_labeldw
end type
type dw_bak from datawindow within w_labeldw
end type
type cbx_showright from checkbox within w_labeldw
end type
type dw_3 from datawindow within w_labeldw
end type
type cb_run from commandbutton within w_labeldw
end type
type st_message from statictext within w_labeldw
end type
type lb_testitems from listbox within w_labeldw
end type
type cb_autorun from commandbutton within w_labeldw
end type
type cb_saveas from commandbutton within w_labeldw
end type
type cb_error from commandbutton within w_labeldw
end type
type cbx_right from checkbox within w_labeldw
end type
type cb_max from commandbutton within w_labeldw
end type
type cb_sort from commandbutton within w_labeldw
end type
type cb_reset from commandbutton within w_labeldw
end type
type dw_1 from datawindow within w_labeldw
end type
type dw_output from datawindow within w_labeldw
end type
type gb_4 from groupbox within w_labeldw
end type
type gb_1 from groupbox within w_labeldw
end type
type gb_2 from groupbox within w_labeldw
end type
type gb_3 from groupbox within w_labeldw
end type
type lb_1 from listbox within w_labeldw
end type
end forward

global type w_labeldw from window
integer width = 4768
integer height = 2384
boolean titlebar = true
string title = "LabelDw Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_2 cb_2
dw_bak dw_bak
cbx_showright cbx_showright
dw_3 dw_3
cb_run cb_run
st_message st_message
lb_testitems lb_testitems
cb_autorun cb_autorun
cb_saveas cb_saveas
cb_error cb_error
cbx_right cbx_right
cb_max cb_max
cb_sort cb_sort
cb_reset cb_reset
dw_1 dw_1
dw_output dw_output
gb_4 gb_4
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
lb_1 lb_1
end type
global w_labeldw w_labeldw

type prototypes
FUNCTION uint FindWindowA (long classname,string windowname) LIBRARY "user32.dll" alias for "FindWindowA;Ansi"
FUNCTION uint GetWindowText (uint classname,string windowname) LIBRARY "user32.dll" alias for "GetWindowText;Ansi"
FUNCTION uint GetActiveWindow() LIBRARY "user32.dll"
end prototypes

type variables
int ii_retrievestart = 0,ii_error = 0,ii_errornumber = 0,ii_rightnumber = 0
string is_sql
int ii_num,il_error_no
long ii_dwx,ii_gbx,ii_dwwidth,ii_gbwidth
int ii_number = 1
string is_event = ""
end variables

forward prototypes
public subroutine wf_script (string as_testitem)
public subroutine wf_describetestitem ()
public subroutine wf_testitem (string as_testitem)
public subroutine wf_output (string as_testitem, string as_orivalue, string as_curvalue, string as_type)
public function boolean wf_additem (string as_message, string as_testitem)
public subroutine wf_message (string as_operate, string as_problem)
public function string wf_ds (string as_string, string as_ds)
public function integer wf_returnerror ()
public subroutine wf_getproperty ()
public subroutine wf_setproperty ()
public subroutine wf_event ()
public subroutine wf_function ()
public subroutine wf_computedfield ()
end prototypes

event ue_autorun();cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
cb_error.TriggerEvent(clicked!)
cb_saveas.TriggerEvent(clicked!)
cbx_right.checked = true
end event

public subroutine wf_script (string as_testitem);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

integer li_ItemTotal, li_ItemCount

string ls_importstring, newsql, oldsql;
int li_currentrow,li_rowcount
any la_value, la_null
setnull(la_null)

choose case as_testitem
	case 'GetProperty'		
		wf_getproperty()
	case 'SetProperty'
		wf_SetProperty()
	case 'Event'
		wf_Event()
	case 'Function'
		wf_function()
	case 'Computedfield'
		wf_computedfield()
end choose
end subroutine

public subroutine wf_describetestitem ();//string ls_message[]
//
//ls_message[]= {"Right","JS",as_OriValue,as_type}
//if lower(as_OriValue) = lower(as_CurValue) then
//	if cbx_right.checked then
//		
//	end if
//else
//	ii_error ++
//	ls_message[1] = 'Error'
//	ls_message[2] = 'PB'
//	f_outputtext(dw_output,ls_message)
//	ls_message[2] = 'JS'
//	ls_message[3] = as_CurValue
//	f_outputtext(dw_output,ls_message)
//end if
//
//st_message.text = "Error:"+string(ii_error)
end subroutine

public subroutine wf_testitem (string as_testitem);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

string ls_message[] 
ls_message[]= {as_testitem}

f_outputtext(dw_output,ls_message)
end subroutine

public subroutine wf_output (string as_testitem, string as_orivalue, string as_curvalue, string as_type);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

string ls_message[]

ls_message[]= {"Right[" + as_testitem + "]","JS",as_type,as_OriValue}
if lower(as_OriValue) = lower(as_CurValue) then	
	if cbx_right.checked then
		ii_rightnumber++
		f_outputtext(dw_output,ls_message)
	end if
else
	ii_error++
	ii_errornumber++
	ls_message[1] = 'Error[' + as_testitem + ']'
	ls_message[2] = 'PB'
	f_outputtext(dw_output,ls_message)
	ls_message[2] = 'JS'
	ls_message[4] = as_CurValue
	f_outputtext(dw_output,ls_message)
end if

st_message.text = "Error:"+string(ii_error)
end subroutine

public function boolean wf_additem (string as_message, string as_testitem);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

long ll_index

as_message=as_message+" [Test:"+string(as_testitem)+"]"
if pos(lower(as_message),"error") > 0 then
	//il_error_no++
	ll_index=lb_1.additem(as_message)
	lb_1.SetState ( ll_index, true)
else
	if cbx_right.checked then 
		ll_index=lb_1.additem(as_message)
	end if

end if

return false
end function

public subroutine wf_message (string as_operate, string as_problem);/*
						[Á´½Ó]       http://192.0.1.21:8080/integrationcase/

						[ÎÊÌâ]       ±í´ïÊ½ÖÐº¯ÊýÖ´ÐÐ³ö´í
						
						[Ó°Ïì³Ì¶È] ¡ï¡ï¡ï¡ï¡ï
						
						[²Ù×÷]       click "Test"->"DwExpressionFunction"

						execute 05 "All Function View"
						
						[Êä³ö]  Çë´¦ÀíºìÉ«³ö´í²¿·Ý
						
											  ·µ»ØÖµ¡¡¡¡¡¡¡¡¡¡¡¡¡¡º¯Êý
*/
//wf_message(lb_testitems.text(1),"datawindow ¶ÔÏóÊôÐÔ")
string ls_message[]
ls_message[]={'[±àºÅ]','','LabelDW '+string(ii_number,"000"),''}
ii_number++
f_outputtext(dw_output,ls_message)
ls_message[]={'[ÈÕÆÚ]','',string(today(),"yyyyÄêmmÔÂddÈÕ"),''}
f_outputtext(dw_output,ls_message)

ls_message[]= {"[Á´½Ó]","",gs_link,""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[ÎÊÌâ]","",''+as_problem+'',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Ó°Ïì³Ì¶È]","","¡ï¡ï¡ï¡ï¡ï",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'click "Test"->"LabelDW"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public function string wf_ds (string as_string, string as_ds);int li_pos
li_pos = 1
li_pos = pos(as_string,as_ds,li_pos)
Do While li_pos >0 
	as_string = Replace(as_string,li_pos,1,'')
	li_pos = pos(as_string,as_ds,li_pos)
Loop
return as_string
end function

public function integer wf_returnerror ();return ii_error
end function

public subroutine wf_getproperty ();string ls
dw_1.dataobject = "d_label_default1"
dw_1.settransobject(sqlca)
dw_1.retrieve()

ls = dw_1.describe("DataWindow.Label.Columns")
wf_output("Columns",'0',ls,'dw_1.Describe("DataWindow.Label.Columns")=')
ls = dw_1.Object.DataWindow.Label.Columns
wf_output("Columns",'0',ls,'dw_1.Object.DataWindow.Label.Columns=')

ls = dw_1.describe("DataWindow.Label.Columns.Spacing")
wf_output("Columns.Spacing",'0',ls,'dw_1.Describe("DataWindow.Label.Columns.Spacing")=')
ls = dw_1.Object.DataWindow.Label.Columns.Spacing
wf_output("Columns.Spacing",'0',ls,'dw_1.Object.DataWindow.Label.Columns.Spacing=')

ls = dw_1.describe("DataWindow.Label.Ellipse_Height")
wf_output("Ellipse_Height",'0',ls,'dw_1.Describe("DataWindow.Label.Ellipse_Height")=')
ls = dw_1.Object.DataWindow.Label.Ellipse_Height
wf_output("Ellipse_Height",'0',ls,'dw_1.Object.DataWindow.Label.Ellipse_Height=')

ls = dw_1.describe("DataWindow.Label.Ellipse_Width")
wf_output("Ellipse_Width",'0',ls,'dw_1.Describe("DataWindow.Label.Ellipse_Width")=')
ls = dw_1.Object.DataWindow.Label.Ellipse_Width
wf_output("Ellipse_Width",'0',ls,'dw_1.Object.DataWindow.Label.Ellipse_Width=')

ls = dw_1.describe("DataWindow.Label.Height")
wf_output("Height",'0',ls,'dw_1.Describe("DataWindow.Label.Height")=')
ls = dw_1.Object.DataWindow.Label.Height
wf_output("Height",'0',ls,'dw_1.Object.DataWindow.Label.Height=')

ls = dw_1.describe("DataWindow.Label.Name")
wf_output("Name",'?',ls,'dw_1.Describe("DataWindow.Label.Name")=')
ls = dw_1.Object.DataWindow.Label.Name
wf_output("Name",'?',ls,'dw_1.Object.DataWindow.Label.Name=')

ls = dw_1.describe("DataWindow.Label.Rows")
wf_output("Rows",'0',ls,'dw_1.Describe("DataWindow.Label.Rows")=')
ls = dw_1.Object.DataWindow.Label.Rows
wf_output("Rows",'0',ls,'dw_1.Object.DataWindow.Label.Rows=')

ls = dw_1.describe("DataWindow.Label.Rows.Spacing")
wf_output("Columns",'0',ls,'dw_1.Describe("DataWindow.Label.Rows.Spacing")=')
ls = dw_1.Object.DataWindow.Label.Rows.Spacing
wf_output("Columns",'0',ls,'dw_1.Object.DataWindow.Label.Rows.Spacing=')

ls = dw_1.describe("DataWindow.Label.Shape")
wf_output("Shape",'roundrectangle',ls,'dw_1.Describe("DataWindow.Label.Shape")=')
ls = dw_1.Object.DataWindow.Label.Shape
wf_output("Shape",'roundrectangle',ls,'dw_1.Object.DataWindow.Label.Shape=')

ls = dw_1.describe("DataWindow.Label.Sheet")
wf_output("Sheet",'no',ls,'dw_1.Describe("DataWindow.Label.Sheet")=')
ls = dw_1.Object.DataWindow.Label.Sheet
wf_output("Sheet",'no',ls,'dw_1.Object.DataWindow.Label.Sheet=')

ls = dw_1.describe("DataWindow.Label.TopDown")
wf_output("TopDown",'no',ls,'dw_1.Describe("DataWindow.Label.TopDown")=')
ls = dw_1.Object.DataWindow.Label.TopDown
wf_output("TopDown",'no',ls,'dw_1.Object.DataWindow.Label.TopDown=')

ls = dw_1.describe("DataWindow.Label.Width")
wf_output("Width",'0',ls,'dw_1.Describe("DataWindow.Label.Width")=')
ls = dw_1.Object.DataWindow.Label.Width
wf_output("Width",'0',ls,'dw_1.Object.DataWindow.Label.Width=')

//for d_dabel_default
//ls = dw_1.describe("DataWindow.Label.Columns")
//wf_output("Columns",'1',ls,'dw_1.Describe("DataWindow.Label.Columns")=')
//ls = dw_1.Object.DataWindow.Label.Columns
//wf_output("Columns",'1',ls,'dw_1.Object.DataWindow.Label.Columns=')
//
//ls = dw_1.describe("DataWindow.Label.Columns.Spacing")
//wf_output("Columns",'1',ls,'dw_1.Describe("DataWindow.Label.Columns.Spacing")=')
//ls = dw_1.Object.DataWindow.Label.Columns.Spacing
//wf_output("Columns",'1',ls,'dw_1.Object.DataWindow.Label.Columns.Spacing=')
//
//ls = dw_1.describe("DataWindow.Label.Ellipse_Height")
//wf_output("Columns",'0',ls,'dw_1.Describe("DataWindow.Label.Ellipse_Height")=')
//ls = dw_1.Object.DataWindow.Label.Ellipse_Height
//wf_output("Columns",'0',ls,'dw_1.Object.DataWindow.Label.Ellipse_Height=')
//
//ls = dw_1.describe("DataWindow.Label.Ellipse_Width")
//wf_output("Columns",'0',ls,'dw_1.Describe("DataWindow.Label.Ellipse_Width")=')
//ls = dw_1.Object.DataWindow.Label.Ellipse_Width
//wf_output("Columns",'0',ls,'dw_1.Object.DataWindow.Label.Ellipse_Width=')
//
//ls = dw_1.describe("DataWindow.Label.Height")
//wf_output("Columns",'1000',ls,'dw_1.Describe("DataWindow.Label.Height")=')
//ls = dw_1.Object.DataWindow.Label.Height
//wf_output("Columns",'1000',ls,'dw_1.Object.DataWindow.Label.Height=')
//
//ls = dw_1.describe("DataWindow.Label.Name")
//wf_output("Columns",'',ls,'dw_1.Describe("DataWindow.Label.Name")=')
//ls = dw_1.Object.DataWindow.Label.Name
//wf_output("Columns",'',ls,'dw_1.Object.DataWindow.Label.Name=')
//
//ls = dw_1.describe("DataWindow.Label.Rows")
//wf_output("Columns",'1',ls,'dw_1.Describe("DataWindow.Label.Rows")=')
//ls = dw_1.Object.DataWindow.Label.Rows
//wf_output("Columns",'1',ls,'dw_1.Object.DataWindow.Label.Rows=')
//
//ls = dw_1.describe("DataWindow.Label.Rows.Spacing")
//wf_output("Columns",'1',ls,'dw_1.Describe("DataWindow.Label.Rows.Spacing")=')
//ls = dw_1.Object.DataWindow.Label.Rows.Spacing
//wf_output("Columns",'1',ls,'dw_1.Object.DataWindow.Label.Rows.Spacing=')
//
//ls = dw_1.describe("DataWindow.Label.Shape")
//wf_output("Columns",'roundrectangle',ls,'dw_1.Describe("DataWindow.Label.Shape")=')
//ls = dw_1.Object.DataWindow.Label.Shape
//wf_output("Columns",'roundrectangle',ls,'dw_1.Object.DataWindow.Label.Shape=')
//
//ls = dw_1.describe("DataWindow.Label.Sheet")
//wf_output("Columns",'yes',ls,'dw_1.Describe("DataWindow.Label.Sheet")=')
//ls = dw_1.Object.DataWindow.Label.Sheet
//wf_output("Columns",'yes',ls,'dw_1.Object.DataWindow.Label.Sheet=')
//
//ls = dw_1.describe("DataWindow.Label.TopDown")
//wf_output("Columns",'no',ls,'dw_1.Describe("DataWindow.Label.TopDown")=')
//ls = dw_1.Object.DataWindow.Label.TopDown
//wf_output("Columns",'no',ls,'dw_1.Object.DataWindow.Label.TopDown=')
//
//ls = dw_1.describe("DataWindow.Label.Width")
//wf_output("Columns",'1000',ls,'dw_1.Describe("DataWindow.Label.Width")=')
//ls = dw_1.Object.DataWindow.Label.Width
//wf_output("Columns",'1000',ls,'dw_1.Object.DataWindow.Label.Width=')
end subroutine

public subroutine wf_setproperty ();string ls
int li

dw_1.dataobject = "d_label"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//modify columns
ls = dw_1.modify("DataWindow.Label.Columns = 12")
wf_output('1Columns','',ls,'dw_1.modify("DataWindow.Label.Columns = 12")')
ls = dw_1.describe("DataWindow.Label.Columns")
wf_output('2Columns','12',ls,'dw_1.describe("DataWidnow.Label.Columns")')

ls = dw_1.modify("DataWindow.Label.Columns = '2'")
wf_output('3Columns','',ls,'dw_1.modify("DataWindow.Label.Columns = ~'2~'")')
ls = dw_1.describe("DataWindow.Label.Columns")
wf_output('4Columns','2',ls,'dw_1.describe("DataWidnow.Label.Columns")')

ls = dw_1.modify("DataWindow.Label.Columns = a2")
ls = mid(ls,1,4)
wf_output('5Columns','line',ls,'dw_1.modify("DataWindow.Label.Columns = 2")')
ls = dw_1.describe("DataWindow.Label.Columns")
wf_output("6Columns",'2',ls,'dw_1.Describe("DataWindow.Label.Columns")=')

dw_1.Object.DataWindow.Label.Columns = 12
ls = dw_1.describe("DataWindow.Label.Columns")
wf_output('7Columns','12',ls,'dw_1.describe("DataWidnow.Label.Columns")')

dw_1.Object.DataWindow.Label.Columns = '2'
ls = dw_1.describe("DataWindow.Label.Columns")
wf_output('8Columns','2',ls,'dw_1.describe("DataWidnow.Label.Columns")')

dw_1.Object.DataWindow.Label.Columns = 'a2'
ls = dw_1.describe("DataWindow.Label.Columns")
wf_output("9Columns",'2',ls,'dw_1.Describe("DataWindow.Label.Columns")=')

//modify spacing
ls = dw_1.modify("DataWindow.Label.Columns.Spacing = 12")
wf_output('1spacing','',ls,'dw_1.modify("DataWindow.Label.Columns.Spacing = 12")')
ls = dw_1.describe("DataWindow.Label.Columns.Spacing")
wf_output("2spacing",'12',ls,'dw_1.Describe("DataWindow.Label.Columns.Spacing")=')

dw_1.Object.DataWindow.Label.Columns.Spacing = 11
ls = dw_1.describe("DataWindow.Label.Columns.Spacing")
wf_output("3Spacing",'11',ls,'dw_1.describe("DataWindow.Label.Columns.Spacing")')

ls = dw_1.modify("DataWidnow.Label.Columns.Spacing = as")
ls = mid(ls,1,4)
wf_output('4spacing','line',ls,'dw_1.modify("DataWindow.Label.Columns.Spacing = as")')
ls = dw_1.Object.DataWindow.Label.Columns.Spacing
wf_output('5spacing','11',ls,'dw_1.Object.DataWindow.Lable.Columns.Spacing')

//modify Ellipse_Height
ls = dw_1.modify("DataWindow.Label.Ellipse_Height = 33")
wf_output('1Ellipse_Height','',ls,'dw_1.modify("DataWindow.Label.Ellipse_height = 33")')
ls = dw_1.describe("DataWindow.Label.Ellipse_Height")
wf_output("2Ellipse_Height",'33',ls,'dw_1.Describe("DataWindow.Label.Ellipse_Height")=')
dw_1.Object.DataWindow.Label.Ellipse_Height = 44
ls = dw_1.describe("DataWindow.Label.Ellipse_Height")
wf_output("3Ellipse_Height",'44',ls,'dw_1.Object.DataWindow.Label.Ellipse_Height=')

//modify ellipse_width right
//ls = dw_1.modify("DataWindow.Label.Ellipse_Width = 55")
//wf_output("1ellipse_width",'',ls,'dw_1.modify("DataWidnow.Label.Ellipse_Width = 55")')
//ls = dw_1.describe("DataWindow.Label.Ellipse_Width")
//wf_output('2ellipse_width','55',ls,'dw_1.describe("DataWindow.Label.Ellipse_width = ")')

//modify ellipse_width error
//ls = dw_1.modify("DataWindow.Label.Ellipse_Width = a5")
//ls = mid(ls,1,4)
//wf_output("3ellipse_width",'line',ls,'dw_1.modify("DataWidnow.Label.Ellipse_Width = a5")')
//ls = dw_1.describe("DataWindow.Label.Ellipse_Width") 
//wf_output("4ellipse_width",'55',ls,'dw_1.Describe("DataWindow.Label.Ellipse_Width")=')

////pb exist error
////donation ellipse_width right
//messagebox('',dw_1.Object.DataWindow.Label.Ellipse_Width = '4')
//wf_output("Columns",'44',ls,'dw_1.Object.DataWindow.Label.Ellipse_Width=')
//
////donation ellipse_width error
//messagebox('',dw_1.Object.DataWindow.Label.Ellipse_Width = 'a4')
//wf_output('Columns','55',ls,'dw_1.Object.DataWindow.Label.Ellipse_Width = ')

//modify height right
ls = dw_1.modify("DataWindow.Label.Height = 88")
wf_output('1Height','',ls,'dw_1.modify("DataWindow.Label.Height = 88")')
ls = dw_1.describe("DataWindow.Label.Height")
wf_output("2Height",'88',ls,'dw_1.Describe("DataWindow.Label.Height")=')

//modify height error
ls = dw_1.modify("DataWidnow.Label.Height = a88")
ls = mid(ls,1,4)
wf_output('3Height','line',ls,'dw_1.modify("DataWindow.Label.Height = a88")')
ls = dw_1.describe("DataWindow.Label.Height")
wf_output("4Height",'88',ls,'dw_1.Describe("DataWindow.Label.Height")=')

//pb exist error
////donation height right
//dw_1.Object.DataWindow.Label.Height = 77
//wf_output("Columns",'77',ls,'dw_1.Object.DataWindow.Label.Height=')
//
////donation height error
//dw_1.Object.DataWindow.Label.Height = 'a77'
//wf_output("Columns",'77',ls,'dw_1.Object.DataWindow.Label.Height=')

//modify name right
//ls = dw_1.modify("DataWindow.Label.Name = 'a'")
//wf_output('1Name','',ls,'dw_1.modify("DataWindow.Label.Name = ~'a~'")')
//ls = dw_1.describe("DataWindow.Label.Name")
//wf_output("2Name",'a',ls,'dw_1.Describe("DataWindow.Label.Name")=')

//modify name error
//ls = dw_1.modify("DataWindow.Label.Name = 1")
//ls = mid(ls,1,4)
//wf_output('3Name','line',ls,'dw_1.modify("DataWindow.Label.Name = 1")')
//ls = dw_1.describe("DataWindow.Label.Name")
//wf_output("4Name",'a',ls,'dw_1.Describe("DataWindow.Label.Name")=')
//ls = dw_1.Object.DataWindow.Label.Name
//wf_output("Columns",'',ls,'dw_1.Object.DataWindow.Label.Name=')

//modify rows right
ls = dw_1.modify("DataWindow.Label.Rows = 44")
wf_output('1Rows','',ls,'dw_1.modify("DataWindow.Label.Rows = 44")')
ls = dw_1.describe("DataWindow.Label.Rows")
wf_output("2Rows",'44',ls,'dw_1.Describe("DataWindow.Label.Rows")=')

//modify rows error
ls = dw_1.modify("DataWindow.Label.Rows = a44")
ls = mid(ls,1,4)
wf_output('3Rows','line',ls,'dw_1.modify("DataWindow.Label.Rows = 44")')
ls = dw_1.describe("DataWindow.Label.Rows")
wf_output("4Rows",'44',ls,'dw_1.Describe("DataWindow.Label.Rows")=')
//ls = dw_1.Object.DataWindow.Label.Rows
//wf_output("Columns",'1',ls,'dw_1.Object.DataWindow.Label.Rows=')

//modify Rows.spacing right
ls = dw_1.modify("DataWindow.Label.Rows.Spacing = 66")
wf_output('1Rows.Spacing','',ls,'dw_1.modify("DataWindow.Label.Rows.Spacing = 66")')
ls = dw_1.describe("DataWindow.Label.Rows.Spacing")
wf_output("2Rows.Spacing",'66',ls,'dw_1.Describe("DataWindow.Label.Rows.Spacing")=')
//modify spacing error
ls = dw_1.modify("DataWindow.Label.Rows.Spacing = a66")
ls = mid(ls,1,4)
wf_output('3Rows.Spacing','line',ls,'dw_1.modify("DataWindow.Label.Rows.Spacing = 66")')
ls = dw_1.describe("DataWindow.Label.Rows.Spacing")
wf_output("4Rows.Spacing",'66',ls,'dw_1.Describe("DataWindow.Label.Rows.Spacing")=')
//ls = dw_1.Object.DataWindow.Label.Rows.Spacing
//wf_output("Columns",'1',ls,'dw_1.Object.DataWindow.Label.Rows.Spacing=')

//modify shape right
ls = dw_1.modify("DataWindow.Label.Shape = oval")
wf_output('1Shape','',ls,'dw_1.modify("DataWindow.Label.Shape = oval")')
ls = dw_1.describe("DataWindow.Label.Shape")
wf_output("2Shapre",'oval',ls,'dw_1.Describe("DataWindow.Label.Shape")=')

////modify shape error
//ls = dw_1.modify("DataWindow.Label.Shape = 'oval'")
//ls = mid(ls,1,4)
//wf_output('3Shape','line',ls,'dw_1.modify("DataWindow.Label.Shape = ~'oval~'")')
//ls = dw_1.describe("DataWindow.Label.Shape")
//wf_output("4Shapre",'oval',ls,'dw_1.Describe("DataWindow.Label.Shape")=')

//modify shape error
//ls = dw_1.modify("DataWindow.Label.Shape = a")
//wf_output('5Shape','',ls,'dw_1.modify("DataWindow.Label.Shape = a")')
//ls = dw_1.describe("DataWindow.Label.Shape")
//wf_output("6Shapre",'oval',ls,'dw_1.Describe("DataWindow.Label.Shape")=')
//ls = dw_1.Object.DataWindow.Label.Shape
//wf_output("Columns",'roundrectangle',ls,'dw_1.Object.DataWindow.Label.Shape=')

//modify sheet right
ls = dw_1.modify("DataWindow.Label.Sheet = no")
wf_output('1Sheet','',ls,'dw_1.modify("DataWindow.Label.Sheet = no")')
ls = dw_1.describe("DataWindow.Label.Sheet")
wf_output("2Sheet",'no',ls,'dw_1.Describe("DataWindow.Label.Sheet")=')

//modify sheet error
ls = dw_1.modify("DataWindow.Label.Sheet = ano")
ls = mid(ls,1,4)
wf_output('3Sheet','line',ls,'dw_1.modify("DataWindow.Label.Sheet = ano")')
ls = dw_1.describe("DataWindow.Label.Sheet")
wf_output("4Sheet",'no',ls,'dw_1.Describe("DataWindow.Label.Sheet")=')
//ls = dw_1.Object.DataWindow.Label.Sheet
//wf_output("Columns",'yes',ls,'dw_1.Object.DataWindow.Label.Sheet=')

//modify topdown right
ls = dw_1.modify("DataWindow.Label.TopDown = yes")
wf_output('1TopDown','',ls,'dw_1.modify("DataWindow.Label.TopDown = yes")')
ls = dw_1.describe("DataWindow.Label.TopDown")
wf_output("2TopDown",'yes',ls,'dw_1.Describe("DataWindow.Label.TopDown")=')

//modify topdown error
ls = dw_1.modify("DataWindow.Label.TopDown = yesa")
ls = mid(ls,1,4)
wf_output('3TopDown','line',ls,'dw_1.modify("DataWindow.Label.TopDown = yes")')
ls = dw_1.describe("DataWindow.Label.TopDown")
wf_output("4TopDown",'yes',ls,'dw_1.Describe("DataWindow.Label.TopDown")=')

//ls = dw_1.Object.DataWindow.Label.TopDown
//wf_output("Columns",'no',ls,'dw_1.Object.DataWindow.Label.TopDown=')

//modify width right
ls = dw_1.modify("DataWindow.Label.Width = 88")
wf_output("1Width",'',ls,'dw_1.modify("DataWindow.Label.Width = 88")')
ls = dw_1.describe("DataWindow.Label.Width")
wf_output("2Width",'88',ls,'dw_1.Describe("DataWindow.Label.Width")=')

//modify width error
ls = dw_1.modify("DataWindow.Label.Width = a88")
ls = mid(ls,1,4)
wf_output("3Width",'line',ls,'dw_1.modify("DataWindow.Label.Width = a88")')
ls = dw_1.describe("DataWindow.Label.Width")
wf_output("4Width",'88',ls,'dw_1.Describe("DataWindow.Label.Width")=')
//ls = dw_1.Object.DataWindow.Label.Width
//wf_output("Columns",'1000',ls,'dw_1.Object.DataWindow.Label.Width=')

dw_1.dataobject = "d_label"
dw_1.settransobject(sqlca)
dw_1.retrieve()
//modify	Rows_per_detail
ls = dw_1.modify("DataWindow.Rows_per_detail = 7")
ls = mid(ls,1,4)
wf_output('1Rows_per_detail','line',ls,'dw_1.modify("DataWindow.Rows_per_detail = 7")')
ls = dw_1.describe("DataWindow.Rows_per_detail")
wf_output('2Rows_per_detail','30',ls,'dw_1.describe("DataWindow.Label.Rows_per_detail")')

//modify detail.height
wf_output('1detail.height','11250',dw_1.describe("DataWindow.Detail.Height"),'dw_1.describe("DataWidnow.detail.height")')
wf_output('2detail.height','',dw_1.modify("DataWindow.detail.height = 30"),'dw_1.modify("DataWindow.detail.height = 30")')
wf_output('3detail.height','30',dw_1.describe("DataWindow.Detail.Height"),'dw_1.describe("DataWidnow.detail.height")')

//detail.height.autosize
wf_output('1detail.height.autosize','no',dw_1.describe("DataWindow.Detail.Height.autosize"),'dw_1.describe("DataWidnow.detail.height.autosize")')
wf_output('2detail.height.autosize','',dw_1.modify("DataWindow.detail.height.autosize = yes"),'dw_1.modify("DataWindow.detail.height.autosize = yes")')
wf_output('3detail.height.autosize','yes',dw_1.describe("DataWindow.Detail.Height.autosize"),'dw_1.describe("DataWidnow.detail.height.autosize")')

//header.height
wf_output('1header.height','0',dw_1.describe("DataWindow.header.height"),'dw_1.describe("DataWidnow.header.height")')
wf_output('2header.height','',dw_1.modify("DataWindow.header.height = 55"),'dw_1.modify("DataWindow.header.height = 55")')
wf_output('3header.height','55',dw_1.describe("DataWindow.header.height"),'dw_1.describe("DataWidnow.header.height")')

//footer.height
wf_output('1footer.height','0',dw_1.describe("DataWindow.footer.height"),'dw_1.describe("DataWidnow.footer.height")')
wf_output('2footer.height','',dw_1.modify("DataWindow.footer.height = 55"),'dw_1.modify("DataWindow.footer.height = 55")')
wf_output('3footer.height','55',dw_1.describe("DataWindow.footer.height"),'dw_1.describe("DataWidnow.footer.height")')

//summary.height
wf_output('1summary.height','0',dw_1.describe("DataWindow.summary.height"),'dw_1.describe("DataWidnow.summary.height")')
wf_output('2summary.height','',dw_1.modify("DataWindow.summary.height = 55"),'dw_1.modify("DataWindow.summary.height = 55")')
wf_output('3summary.height','55',dw_1.describe("DataWindow.summary.height"),'dw_1.describe("DataWidnow.summary.height")')

//Row.resize
//wf_output('1Row.resize','0',dw_1.describe("DataWindow.Row.resize"),'dw_1.describe("DataWidnow.Row.resize")')
//wf_output('2Row.resize','',dw_1.modify("DataWindow.Row.resize = 55"),'dw_1.modify("DataWindow.Row.resize = 55")')
//wf_output('3Row.resize','55',dw_1.describe("DataWindow.Row.resize"),'dw_1.describe("DataWidnow.Row.resize")')

//Querymode
wf_output('1querymode','no',dw_1.describe("DataWindow.querymode"),'dw_1.describe("Datawindow.querymode")')
ls = dw_1.modify("DataWindow.querymode = yes")
ls = mid(ls,1,4)
wf_output('2querymode','line',ls,'dw_1.modify("DataWindow.querymode = yes")')

//querysort
wf_output('1querysort','no',dw_1.describe("DataWindow.querysort"),'dw_1.describe("Datawindow.querysort")')
ls = dw_1.modify("DataWindow.querysort = yes")
ls = mid(ls,1,4)
wf_output('2querysort','line',ls,'dw_1.modify("DataWindow.querysort = yes")')

//Zoom
wf_output('1zoom','',dw_1.modify("DataWindow.zoom = 50"),'dw_1.modify("DataWindow.zoom = 50")')
wf_output('2zoom','50',dw_1.describe("DataWindow.zoom"),'dw_1.describe("DataWindow.zoom")')

//visibel
wf_output('1visible','0',dw_1.describe("emp_id.visible"),'dw_1.describe("emp_id.visible")')
wf_output('2visibel','',dw_1.modify("emp_id.visible = 1"),'dw_1.modify("emp_id.visible = 1")')
wf_output('3visible','0',dw_1.describe("emp_id.visible"),'dw_1.describe("emp_id.visible")')
//Tabsequence
wf_output('1tabsequence','0',dw_1.describe("emp_id.Tabsequence"),'dw_1.describe("emp_id.Tabsequence")')
wf_output('2Tabsequence','',dw_1.modify("emp_id.Tabsequence = 10"),'dw_1.modify("emp_id.Tabsequence = 10")')
wf_output('3tabsequence','10',dw_1.describe("emp_id.Tabsequence"),'dw_1.describe("emp_id.Tabsequence")')
end subroutine

public subroutine wf_event ();string ls

//retrieve
is_event = ""
dw_1.dataobject = "d_computed"
dw_1.settransobject(sqlca)
dw_1.retrieve()
wf_output('retrieve','retrievestart,sqlpreview,rowfocuschanging,rowfocuschanged,retrieveend,',is_event,'dw_1.retrieve()')

//insertrow
is_event = ""
dw_1.insertrow(0)
wf_output('insertrow','',is_event,'dw_1.insertrow(0)')

//rowscopy
is_event = ""
dw_1.rowscopy(1,3,primary!,dw_1,1,primary!)
wf_output('rowscopy','rowfocuschanged,',is_event,'dw_1.rowscopy(1,3,primary!,dw_1,1,primary!)')

//rowsmove
is_event = ""
dw_1.rowsmove(1,3,primary!,dw_1,1,delete!)
wf_output('rowsmove','rowfocuschanged,',is_event,'dw_1.rowsmove(1,3,primary!,dw_1,1,delete!)')

//delete
is_event = ""
dw_1.deleterow(0)
wf_output('deleterow','',is_event,'dw_1.deleterow(0)')

//rowsdiscard
//is_event = ""
//dw_1.rowsdiscard(1,3,primary!)
//wf_output('rowsdiscard','rowfocuschanged,',is_event,'dw_1.rowsdiscard(1,3,primary!)')

//setitem
is_event = ""
dw_1.setitem(1,"emp_id","setitem")
wf_output('setitem','',is_event,'dw_1.setitem(1,"emp_id","setitem")')

//setrow
is_event = ""
dw_1.setrow(3)
wf_output('setrow','rowfocuschanging,rowfocuschanged,',is_event,'dw_1.setrow(3)')

//scrolltorow
is_event = ""
dw_1.scrolltorow(1)
wf_output('scrolltorow','',is_event,'dw_1.scrolltorow(1)')

//setcolumn
is_event = ""
dw_1.setcolumn("emp_id")
wf_output('setcolumn','',is_event,'dw_1.setcolumn("emp_id")')

//filter
is_event = ""
dw_1.setfilter("emp_id > 300")
dw_1.filter()
wf_output('filter','',is_event,'dw_1.filter()')

//sort
is_event = ""
dw_1.setsort("emp_id,a")
dw_1.sort()
wf_output('sort','',is_event,'dw_1.sort()')





end subroutine

public subroutine wf_function ();string ls,ls_create
int li_count,li

dw_1.dataobject = "d_computed"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//insertrow
li = dw_1.rowcount()
dw_1.insertrow(0)
wf_output('insertrow(0)','1',f_string(dw_1.getrow()),'dw_1.getrow()')
wf_output('insertrow(0)',f_string(li + 1),f_string(dw_1.rowcount()),'dw_1.pagecount()')

//rowscopy
li_count = dw_1.rowcount()
dw_1.RowsCopy(1,3,primary!,dw_1,1,primary!)
wf_output('rowscopy',f_string(li_count + 3),f_string(dw_1.rowcount()),'dw_1.rowscopy(1,3,primary!,dw_1,1,primary!)')

//rowsmove
li_count = dw_1.rowcount()
dw_1.RowsMove(1,3,primary!,dw_1,1,delete!)
wf_output('rowsmove',f_string(li_count - 3),f_string(dw_1.rowcount()),'dw_1.rowscopy(1,3,primary!,dw_1,1,delete)')

//deleterow
li_count = dw_1.rowcount()
dw_1.deleterow(1)
wf_output('deleterow',f_string(li_count - 1),f_string(dw_1.rowcount()),'dw_1.deleterow(1)')

//rowsdiscard
li_count = dw_1.rowcount()
dw_1.rowsdiscard(1,3,primary!)
wf_output('rowsdiscard',f_string(li_count - 3),f_string(dw_1.rowcount()),'dw_1.rowsdiscard(1,3,primary!)')

//setitem
dw_1.setitem(1,1,500)
wf_output('setitem','500',f_string(dw_1.getitemnumber(1,1)),'dw_1.setitem(1,1,500)')
dw_1.setitem(1,3,'setitem')
wf_output('setitem','setitem',f_string(dw_1.getitemstring(1,3)),'dw_1.setitem(1,3,~'setitem~')')

//scrolltorow
li = dw_1.getrow()
dw_1.scrolltorow(4)
wf_output('scrolltorow','1',f_string(dw_1.getrow()),'dw_1.scrolltorow(4)')

//print
li = dw_1.print()
wf_output('print','1', f_string(li),'dw_1.print()')

//getColumn
li = dw_1.getcolumn()
wf_output('getcolumn','0',f_string(li),'dw_1.getcolumn()')

//getColumnName
ls = dw_1.getcolumnName()
wf_output('getcolumnname','',ls,'dw_1.getcolumnname()')

//setColumn
li = dw_1.setcolumn(4)
wf_output('setcolumn','1',f_string(li),'dw_1.setcolumn(4)')
li = dw_1.getcolumn()
wf_output('getcolumn','0',f_string(li),'dw_1.getcolumn()')

//getText
ls = dw_1.gettext()
wf_output('gettext','',ls,'dw_1.gettext()')

//setText
li = dw_1.settext('settext')
wf_output('settext','-1',f_string(li),'dw_1.settext(~'settext~')')

//AcceptText
li = dw_1.accepttext()
wf_output('accepttext','1',f_string(li),'dw_1.accepttext()')
wf_output('gettext','',dw_1.gettext(),'dw_1.gettext()')

//clear
li = dw_1.clear()
wf_output('clear','-1',f_string(li),'dw_1.clear()')

//copy
li = dw_1.copy()
wf_output('copy','-1',f_string(li),'dw_1.copy()')

//cut
li = dw_1.cut()
wf_output('cut','-1',f_string(li),'dw_1.cut()')

//paste
ls = "paste"
clipboard(ls)
dw_1.setrow(1)
dw_1.setcolumn(1)
li = dw_1.paste()
wf_output('paste','-1',f_string(li),'dw_1.paste()')

//selecttext
li = dw_1.selecttext(1,3)
wf_output('selecttext','-1',f_string(li),'dw_1.selecttext(1,3)')

//selectedtext
ls = dw_1.selectedtext()
wf_output('selectedtext','',ls,'dw_1.selectedtext()')

//selectedlength
wf_output('selectedlength','-1',f_string(dw_1.selectedlength()),'dw_1.selectedlength()')

//selectedline
wf_output('selectedline','-1',f_string(dw_1.selectedline()),'dw_1.selectedline()')

//selectedstart
wf_output('selectedstart','-1',f_string(dw_1.selectedstart()),'dw_1.selectedstart()')

//selecttextall
wf_output('selecttextall','-1',f_string(dw_1.selecttextall()),'dw_1.selecttextall()')
//selecttextline
wf_output('selecttextline','-1',f_string(dw_1.selecttextline()),'dw_1.selecttextline()')

//selecttextword
wf_output('selecttextword','-1',f_string(dw_1.selecttextword()),'dw_1.selecttextword()')

//replacetext
wf_output('replacetext','-1',f_string(dw_1.replacetext("replacetext")),'dw_1.replacetext()')

//create
ls_create = "CREATE column(band=detail id=2 alignment='1' tabsequence=1 border='0' color='10' x='10' y='4' height='64' width='0' name=create_test font.face='Arial' font.height='-10' protect='0	if (IsRowNew(), 0, 1)' font.weight='400'  font.family='2' font.pitch='2' font.charset='0' background.mode='2' background.color='16777215	if (IsRowNew(), rgb(255,255,255), 79741120)' )"
ls = dw_1.modify(ls_create)
wf_output('create','',ls,'dw_1.modify(ls_create)')
wf_output('create','10',dw_1.describe("create_test.color"),'dw_1.describe("create_test.color")')

//destroy
ls = dw_1.Modify("destroy column create_test")
wf_output('destroy','',ls,'dw_1.modify("destroy column create_test")')
ls = dw_1.describe("create_test.color")
ls = mid(ls,1,4)
wf_output('destroy','10',ls,'dw_1.describe("create_test.color")')

ls = dw_1.modify("destroy column emp_id")
wf_output('destroy','',ls,'dw_1.modify("destroy column emp_id")')
ls = dw_1.describe("emp_id.color")
ls = mid(ls,1,4)
wf_output('destroy','!',ls,'dw_1.describe("emp_id.color")')















end subroutine

public subroutine wf_computedfield ();string ls
int li
dw_1.dataobject = "d_computed"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//getrow
ls = dw_1.getitemstring(1,'getrow')
wf_output('1getrow','getrow() = 1',ls,"dw_1.getitemstring(1,'getrow')")

ls = dw_1.getitemstring(11,'getrow')
wf_output('2getrow','getrow() = 11',ls,"dw_1.getitemstring(11,'getrow')")

//page
//ls = dw_1.getitemstring(1,'page')
//wf_output('1page','page() = 1',ls,"dw_1.getitemstring(1,'page')")
//
//ls = dw_1.getitemstring(11,'page')
//wf_output('2page','page() = 1',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(30,'page')
//wf_output('3page','page() = 3',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(dw_1.rowcount(),'page')
//wf_output('4page','page() = 5',ls,"dw_1.getitemstring(dw_1.rowcount(),'page')")

//pagecount
ls = dw_1.getitemstring(1,'pagecount')
wf_output('1pagecount','pagecount() = 5',ls,"dw_1.getitemstring(1,'pagecount')")

ls = dw_1.getitemstring(11,'pagecount')
wf_output('2pagecount','pagecount() = 5',ls,"dw_1.getitemstring(11,'pagecount')")

dw_1.setsort("emp_id d")
dw_1.sort()
//getrow
ls = dw_1.getitemstring(1,'getrow')
wf_output('11getrow','getrow() = 1',ls,"dw_1.getitemstring(1,'getrow')")

ls = dw_1.getitemstring(11,'getrow')
wf_output('12getrow','getrow() = 11',ls,"dw_1.getitemstring(11,'getrow')")

////page
//ls = dw_1.getitemstring(1,'page')
//wf_output('11page','page() = 1',ls,"dw_1.getitemstring(1,'page')")
//
//ls = dw_1.getitemstring(11,'page')
//wf_output('12page','page() = 1',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(30,'page')
//wf_output('13page','page() = 3',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(dw_1.rowcount(),'page')
//wf_output('14page','page() = 5',ls,"dw_1.getitemstring(dw_1.rowcount(),'page')")

//pagecount
ls = dw_1.getitemstring(1,'pagecount')
wf_output('11pagecount','pagecount() = 5',ls,"dw_1.getitemstring(1,'pagecount')")

ls = dw_1.getitemstring(11,'pagecount')
wf_output('12pagecount','pagecount() = 5',ls,"dw_1.getitemstring(11,'pagecount')")

dw_1.setfilter("emp_id > 500")
dw_1.filter()
//getrow
ls = dw_1.getitemstring(1,'getrow')
wf_output('21getrow','getrow() = 1',ls,"dw_1.getitemstring(1,'getrow')")

ls = dw_1.getitemstring(11,'getrow')
wf_output('22getrow','getrow() = 11',ls,"dw_1.getitemstring(11,'getrow')")

//page
//ls = dw_1.getitemstring(1,'page')
//wf_output('21page','page() = 1',ls,"dw_1.getitemstring(1,'page')")
//
//ls = dw_1.getitemstring(11,'page')
//wf_output('22page','page() = 1',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(30,'page')
//wf_output('23page','page() = 3',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(dw_1.rowcount(),'page')
//wf_output('24page','page() = 4',ls,"dw_1.getitemstring(dw_1.rowcount(),'page')")

//pagecount
ls = dw_1.getitemstring(1,'pagecount')
wf_output('21pagecount','pagecount() = 4',ls,"dw_1.getitemstring(1,'pagecount')")

ls = dw_1.getitemstring(11,'pagecount')
wf_output('22pagecount','pagecount() = 4',ls,"dw_1.getitemstring(11,'pagecount')")

dw_1.setfilter("getrow() > 30")
dw_1.filter()
//getrow
ls = dw_1.getitemstring(1,'getrow')
wf_output('31getrow','getrow() = 1',ls,"dw_1.getitemstring(1,'getrow')")

ls = dw_1.getitemstring(11,'getrow')
wf_output('31getrow','getrow() = 11',ls,"dw_1.getitemstring(11,'getrow')")

////page
//ls = dw_1.getitemstring(1,'page')
//wf_output('31page','page() = 1',ls,"dw_1.getitemstring(1,'page')")
//
//ls = dw_1.getitemstring(11,'page')
//wf_output('32page','page() = 1',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(30,'page')
//wf_output('33page','page() = 3',ls,"dw_1.getitemstring(11,'page')")
//
//ls = dw_1.getitemstring(dw_1.rowcount(),'page')
//wf_output('34page','page() = 3',ls,"dw_1.getitemstring(dw_1.rowcount(),'page')")

//pagecount
ls = dw_1.getitemstring(1,'pagecount')
wf_output('31pagecount','pagecount() = 3',ls,"dw_1.getitemstring(1,'pagecount')")

ls = dw_1.getitemstring(11,'pagecount')
wf_output('32pagecount','pagecount() = 3',ls,"dw_1.getitemstring(11,'pagecount')")

////setrow
//li = dw_1.getrow()
//wf_output('getrow','1',f_string(li),'dw_1.getrow()')
//dw_1.setrow(3)
//li = dw_1.getrow()
//wf_output('getrow','3',f_string(li),'dw_1.getrow()')
//
////setcolumn
//li = dw_1.getcolumn()
//wf_output('getcolumn','0',f_string(li),'dw_1.getcolumn()')
//dw_1.setcolumn(1)
//li = dw_1.getcolumn()
//wf_output('getcolumn','',f_string(li),'dw_1.getcolumn()')
//
end subroutine

on w_labeldw.create
this.cb_2=create cb_2
this.dw_bak=create dw_bak
this.cbx_showright=create cbx_showright
this.dw_3=create dw_3
this.cb_run=create cb_run
this.st_message=create st_message
this.lb_testitems=create lb_testitems
this.cb_autorun=create cb_autorun
this.cb_saveas=create cb_saveas
this.cb_error=create cb_error
this.cbx_right=create cbx_right
this.cb_max=create cb_max
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_1=create dw_1
this.dw_output=create dw_output
this.gb_4=create gb_4
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.lb_1=create lb_1
this.Control[]={this.cb_2,&
this.dw_bak,&
this.cbx_showright,&
this.dw_3,&
this.cb_run,&
this.st_message,&
this.lb_testitems,&
this.cb_autorun,&
this.cb_saveas,&
this.cb_error,&
this.cbx_right,&
this.cb_max,&
this.cb_sort,&
this.cb_reset,&
this.dw_1,&
this.dw_output,&
this.gb_4,&
this.gb_1,&
this.gb_2,&
this.gb_3,&
this.lb_1}
end on

on w_labeldw.destroy
destroy(this.cb_2)
destroy(this.dw_bak)
destroy(this.cbx_showright)
destroy(this.dw_3)
destroy(this.cb_run)
destroy(this.st_message)
destroy(this.lb_testitems)
destroy(this.cb_autorun)
destroy(this.cb_saveas)
destroy(this.cb_error)
destroy(this.cbx_right)
destroy(this.cb_max)
destroy(this.cb_sort)
destroy(this.cb_reset)
destroy(this.dw_1)
destroy(this.dw_output)
destroy(this.gb_4)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
destroy(this.lb_1)
end on

event open;dw_1.SetTransObject(sqlca)
dw_1.Retrieve()
is_sql = dw_1.GetSQLSelect()
dw_output.modify("result.color = '33554432~tIf( mid(result ,1,5) = ~"Error~", rgb(255,0,0),rgb(0,0,0))'")
dw_output.modify("result.width = 600'")
Timer(1)
ii_dwx = dw_output.x
ii_dwwidth = dw_output.width
ii_gbx = gb_4.x
ii_gbwidth = gb_4.width
end event

event timer;//uint  val, val1,val2,val3
//
//val = FindWindowA(0, "DataWindow")
//val1 = FindWindowA(0,"Appeon Web Library")
//val2 = FindWindowA(0,"DataWindow Error")
//val3 = FindWindowA(0,"Alert")
//
//if val > 0 then
//	send(val,16,0,0)
//end if
//if val1> 0 then
//	send(val1,16,0,0)
//end if
//if val2> 0 then
//	send(val2,16,0,0)
//end if
//if val3> 0 then
//	send(val3,16,0,0)
//end if

string ls_string[] ={	"Save PDF File As",&
								"Specify Filter",&
								"Specify Sort Columns",&
								"DataWindow",&
								"Appeon Web Library",&
								"DataWindow Error",&
								"Alert",&
								"Specify Retrieval Arguments"}

uint  lu_val,lu_val1

int i
for i = 1 to upperbound(ls_string)
	lu_val = FindWindowA(0, ls_string[i])


	if lu_val>0 then
		if i = 2 or i = 3 or i = 6 then 
			lu_val1 = FindWindowExA(lu_val,0, 0,"OK") 
			send(lu_val1,256,32,0)
			send(lu_val1,257,32,0)
		else 
			send(lu_val,16,0,0)
		end if
	end if
next

end event

type cb_2 from commandbutton within w_labeldw
integer x = 2281
integer y = 292
integer width = 302
integer height = 92
integer taborder = 160
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "save"
end type

type dw_bak from datawindow within w_labeldw
boolean visible = false
integer x = 338
integer y = 200
integer width = 1810
integer height = 600
integer taborder = 70
string title = "none"
string dataobject = "d_bak"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cbx_showright from checkbox within w_labeldw
boolean visible = false
integer x = 2743
integer y = 140
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "showright"
boolean checked = true
end type

type dw_3 from datawindow within w_labeldw
boolean visible = false
integer x = 1554
integer y = 1120
integer width = 686
integer height = 400
integer taborder = 70
string title = "none"
string dataobject = "d_sharedata_grid"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_run from commandbutton within w_labeldw
integer x = 2281
integer y = 184
integer width = 297
integer height = 88
integer taborder = 160
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Run"
end type

event clicked;string ls_Item
int li_rowcount
IF not lb_testitems.selectedindex() > 0 THEN
	MessageBox("Warning","Please select a test item")
	return 
END IF

ii_number = 1
dw_output.Reset()
ii_error = 0
st_message.text = ""

ls_Item = lb_testitems.text(lb_testitems.selectedindex())
ii_errornumber = 0
ii_rightnumber = 0
li_rowcount = dw_output.rowcount()
wf_message(ls_Item,"LabelDw")
wf_script(trim(mid(ls_Item,pos(lb_testitems.text(lb_testitems.selectedindex())," "))))
if ii_errornumber = 0 and not(cbx_right.checked) then
	dw_output.rowsdiscard(li_rowcount + 1, li_rowcount + ii_rightnumber + 10,Primary!)
end if

cb_error.text = "All"
cb_error.TriggerEvent(clicked!)
end event

type st_message from statictext within w_labeldw
integer x = 4192
integer y = 332
integer width = 320
integer height = 64
integer textsize = -9
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 134217857
long backcolor = 67108864
long bordercolor = 255
boolean focusrectangle = false
end type

type lb_testitems from listbox within w_labeldw
integer x = 73
integer y = 52
integer width = 2126
integer height = 336
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
boolean multiselect = true
borderstyle borderstyle = stylelowered!
boolean extendedselect = true
end type

event constructor;int i = 1

this.additem(string(i,"00")+" GetProperty")
i += 1

this.additem(string(i,"00")+" SetProperty")
i += 1

this.additem(string(i,"00")+" Event")
i += 1

this.additem(string(i,"00")+" Function")
i += 1

this.additem(string(i,"00")+" Computedfield")
i += 1

end event

event doubleclicked;//string ls_Item
//ls_Item = lb_testitems.text(index)
//ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
//wf_script(ls_Item)
cb_run.TriggerEvent(clicked!)
end event

type cb_autorun from commandbutton within w_labeldw
integer x = 2281
integer y = 60
integer width = 297
integer height = 88
integer taborder = 100
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "AutoRun"
end type

event clicked;integer li_ItemTotal, li_ItemCount,li_rowcount
string ls_Item, ls_message[]
int li_currentrow
any la_value

ls_message[]={'','','',''}
li_ItemTotal = lb_testitems.TotalItems()

dw_output.Reset()
ii_error = 0
st_message.text = ""

dw_1.Retrieve()
ii_number = 1
For li_itemCount = 1 to li_ItemTotal
	ls_Item = lb_testitems.text(li_ItemCount)
	ii_errornumber = 0
	ii_rightnumber = 0
	li_rowcount = dw_output.rowcount()
	wf_message(ls_Item,"LabelDw")
	ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
	wf_script(ls_Item)
	f_outputtext(dw_output,ls_message)
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
	end if 
Next

end event

type cb_saveas from commandbutton within w_labeldw
integer x = 4224
integer y = 224
integer width = 270
integer height = 88
integer taborder = 150
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Saveas"
end type

event clicked;
//long li_i,li_row,li_ItemTotal
//
//string  ls_Mysql
//
////Çå¿Õ±í
//ls_Mysql="truncate table output"
//
//EXECUTE IMMEDIATE :ls_Mysql USING SQLCA ;
//
//commit;
//
//IF dw_output.update()	 = 1  THEN
//		COMMIT USING SQLCA;
//
//ELSE
//		ROLLBACK USING SQLCA;
//      messagebox("Alert","Save to DataBase False!")
//		
//END IF
//
////±£´æÎÄ¼þ
//dw_output.retrieve()
if dw_output.SaveAs("c:\output.txt", Text!	, FALSE)=1 then
	messagebox("Alert","save to output.text,OK!")
end if



end event

type cb_error from commandbutton within w_labeldw
integer x = 3954
integer y = 224
integer width = 270
integer height = 88
integer taborder = 110
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Error"
end type

event clicked;if this.text="Error" then
	dw_output.setfilter("mid(result,1,5)<>'Right'")//mid(result ,1,5) = "Error"
	dw_output.filter()
	this.text="All"
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_labeldw
integer x = 2743
integer y = 64
integer width = 411
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "output Right"
boolean checked = true
end type

type cb_max from commandbutton within w_labeldw
integer x = 3685
integer y = 224
integer width = 270
integer height = 88
integer taborder = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Max"
end type

event clicked;if cb_max.text = "Max" then
	dw_output.x = dw_1.x
	gb_4.x = gb_3.x

	dw_output.width += 90 + dw_1.width
	gb_4.width += 105 + dw_1.width

	cb_max.text = "Min"
	gb_3.visible = false
	//gb_5.visible = false
	dw_1.visible = false
	//dw_2.visible = false
	dw_output.modify("operation.width = 2000")
	dw_output.modify("result.width = 1000")
	gb_4.setposition(totop!)
	dw_output.setposition(totop!)
else
	
	dw_output.x= ii_dwx
	gb_4.x = ii_gbx
	dw_output.width = ii_dwwidth
	gb_4.width = ii_gbwidth

	cb_max.text="Max"
	gb_3.visible = true
	//gb_5.visible = true
	dw_1.visible = true
	//dw_2.visible = true
	dw_output.visible=true
	dw_output.modify("operation.width = 864")
	dw_output.modify("result.width = 600")
end if
end event

type cb_sort from commandbutton within w_labeldw
integer x = 3415
integer y = 224
integer width = 270
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Sort"
end type

event clicked;dw_output.SetSort("#1 A, #2 A,#3 A")

dw_output.Sort()
end event

type cb_reset from commandbutton within w_labeldw
integer x = 3145
integer y = 224
integer width = 270
integer height = 88
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Reset"
end type

event clicked;dw_output.reset()
ii_error = 0
st_message.text = ""
end event

type dw_1 from datawindow within w_labeldw
integer x = 78
integer y = 476
integer width = 2551
integer height = 1732
integer taborder = 20
string title = "none"
string dataobject = "d_label"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event retrievestart;is_event += "retrievestart,"
end event

event itemchanged;is_event += "itemchanged,"
end event

event itemfocuschanged;is_event += "itemfocuschanged,"
end event

event rowfocuschanged;is_event += "rowfocuschanged,"
end event

event rowfocuschanging;is_event += "rowfocuschanging,"
end event

event retrieveend;is_event += "retrieveend,"
end event

event sqlpreview;is_event += "sqlpreview,"
end event

event updatestart;is_event += "updatestart,"
end event

event updateend;is_event += "updateend,"
end event

type dw_output from datawindow within w_labeldw
integer x = 2720
integer y = 480
integer width = 1810
integer height = 1732
integer taborder = 60
string title = "none"
string dataobject = "d_output"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)

end event

type gb_4 from groupbox within w_labeldw
integer x = 2683
integer y = 416
integer width = 1879
integer height = 1832
integer taborder = 130
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = " output "
end type

type gb_1 from groupbox within w_labeldw
integer x = 37
integer width = 2629
integer height = 416
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "IE"
end type

type gb_2 from groupbox within w_labeldw
integer x = 2683
integer width = 1879
integer height = 416
integer taborder = 90
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
end type

type gb_3 from groupbox within w_labeldw
integer x = 37
integer y = 416
integer width = 2629
integer height = 1832
integer taborder = 140
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = " Primary Datawindow"
end type

type lb_1 from listbox within w_labeldw
integer x = 2720
integer y = 480
integer width = 1810
integer height = 1736
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

