$PBExportHeader$w_slideup.srw
forward
global type w_slideup from window
end type
type cb_3 from commandbutton within w_slideup
end type
type sle_2 from singlelineedit within w_slideup
end type
type sle_1 from singlelineedit within w_slideup
end type
type cb_1 from commandbutton within w_slideup
end type
type cb_2 from commandbutton within w_slideup
end type
type dw_bak from datawindow within w_slideup
end type
type cbx_showright from checkbox within w_slideup
end type
type dw_3 from datawindow within w_slideup
end type
type cb_run from commandbutton within w_slideup
end type
type st_message from statictext within w_slideup
end type
type lb_testitems from listbox within w_slideup
end type
type cb_autorun from commandbutton within w_slideup
end type
type cb_saveas from commandbutton within w_slideup
end type
type cb_error from commandbutton within w_slideup
end type
type cbx_right from checkbox within w_slideup
end type
type cb_max from commandbutton within w_slideup
end type
type cb_sort from commandbutton within w_slideup
end type
type cb_reset from commandbutton within w_slideup
end type
type dw_1 from datawindow within w_slideup
end type
type dw_output from datawindow within w_slideup
end type
type gb_4 from groupbox within w_slideup
end type
type gb_1 from groupbox within w_slideup
end type
type gb_2 from groupbox within w_slideup
end type
type gb_3 from groupbox within w_slideup
end type
type lb_1 from listbox within w_slideup
end type
end forward

global type w_slideup from window
integer width = 4878
integer height = 2672
boolean titlebar = true
string title = "SlideUpSlideLeft"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_3 cb_3
sle_2 sle_2
sle_1 sle_1
cb_1 cb_1
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
global w_slideup w_slideup

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
string is_control[] = {'compute_1','p_1','b_1','t_1','t_1'}
end variables

forward prototypes
public subroutine wf_script (string as_testitem)
public subroutine wf_describetestitem ()
public subroutine wf_output (string as_testitem, string as_orivalue, string as_curvalue, string as_type)
public function boolean wf_additem (string as_message, string as_testitem)
public subroutine wf_message (string as_operate, string as_problem)
public function string wf_ds (string as_string, string as_ds)
public function integer wf_returnerror ()
public subroutine wf_setproperty (string as_item[], string as_property, string as_value)
public subroutine wf_height (string as_item[], string as_value[])
public subroutine wf_font (string as_item[], string as_value[])
public subroutine wf_getproperty (string as_item[], string as_property, string as_value[])
public subroutine wf_testitem ()
public subroutine wf_modify (string as_item[], string as_property, string as_value[])
public subroutine wf_headertest (string as_item)
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


choose case as_testitem
	case 'GridHeader'						
		wf_headertest('tabular')

	case 'SetProperty'
		string ls_gridheader[],ls[]
	case 'Event'
		
	case 'Function'
		
	case 'Computedfield'
		
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
ls_message[]={'[±àºÅ]','','ShareData '+string(ii_number,"000"),''}
ii_number++
f_outputtext(dw_output,ls_message)
ls_message[]={'[ÈÕÆÚ]','',string(today(),"yyyyÄêmmÔÂddÈÕ"),''}
f_outputtext(dw_output,ls_message)

ls_message[]= {"[Á´½Ó]","","http://192.0.1.21:8080/integrationcase/",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[ÎÊÌâ]","",''+as_problem+'',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Ó°Ïì³Ì¶È]","","¡ï¡ï¡ï¡ï¡ï",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'click "Test"->"ShareData"',""}
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

public subroutine wf_setproperty (string as_item[], string as_property, string as_value);int i
for i = 1 to UpperBound(as_item)
	dw_1.modify(as_item[i] + "." + as_property + "=" + as_value)
next
end subroutine

public subroutine wf_height (string as_item[], string as_value[]);string ls
int i
for i = 1 to upperbound(as_item)
	dw_1.modify(as_item[i] + ".height" + "=" + as_value[i])
next
end subroutine

public subroutine wf_font (string as_item[], string as_value[]);int i 
for i = 1 to upperbound(as_item)
	dw_1.modify(as_item[i] + ".font.height" + "=" + as_value[i])
next
end subroutine

public subroutine wf_getproperty (string as_item[], string as_property, string as_value[]);string ls
int i
for i = 1 to upperbound(as_item)
	ls = dw_1.describe(as_item[i] + "." + as_property)
	wf_output('gridheader',as_value[i],ls,'dw_1.describe("'+as_item[i]+'.'+as_property+'")')
next
//ls = dw_1.describe("t_1.SlideUp")
//wf_output('gridheader',as_item[2],ls,'dw_1.describe("t_1.slideup")')
//ls = dw_1.describe("p_1.SlideUp")
//wf_output('gridheader',as_item[3],ls,'dw_1.describe("p_1.slideup")')
//ls = dw_1.describe("b_1.SlideUp")
//wf_output('gridheader',as_item[4],ls,'dw_1.describe("b_1.slideup")')
//ls = dw_1.describe("l_1.SlideUp")
//wf_output('gridheader',as_item[5],ls,'dw_1.describe("l_1.slideup")')
end subroutine

public subroutine wf_testitem ();////
end subroutine

public subroutine wf_modify (string as_item[], string as_property, string as_value[]);string ls
int i
for i = 1 to upperbound(as_item)
	dw_1.modify(as_item[i] + "." + as_property + "=" + as_value[i])
next
end subroutine

public subroutine wf_headertest (string as_item);string ls_result[],ls_item[],ls_value[]
choose case as_item
	case 'tabular'	
		dw_1.dataobject = "d_tabular_header"
		dw_1.settransobject(sqlca)
		dw_1.retrieve()
		//default property
		ls_result[] = {'no','no','no','no','no','no'}
		wf_getproperty(is_control,'slideup',ls_result)
			
		//set property
		ls_item[] = {'b_1'}
		ls_result[] = {'DirectlyAbove','no','no','no','no'}
		wf_setproperty(ls_item,'slideup','DirectlyAbove')
		wf_getproperty(is_control,'slideup',ls_result)
				
		//set height
		ls_item[] = {"emp_id_t"}
		ls_value[] = {"111"}
		ls_result[] = {'','','','',''}
		wf_height(ls_item,ls_value)
		wf_getproperty(is_control,'y',ls_result)
//				
//		//set font
//		ls_item[] = {''}
//		ls_value[] = {'244'}
//		ls_result[] = {'','','','',''}
//		wf_font(ls_item,ls_value)
//		wf_getproperty(is_control,'y',ls_result)
end choose
end subroutine

on w_slideup.create
this.cb_3=create cb_3
this.sle_2=create sle_2
this.sle_1=create sle_1
this.cb_1=create cb_1
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
this.Control[]={this.cb_3,&
this.sle_2,&
this.sle_1,&
this.cb_1,&
this.cb_2,&
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

on w_slideup.destroy
destroy(this.cb_3)
destroy(this.sle_2)
destroy(this.sle_1)
destroy(this.cb_1)
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

event timer;uint  val, val1,val2,val3

val = FindWindowA(0, "DataWindow")
val1 = FindWindowA(0,"Appeon Web Library")
val2 = FindWindowA(0,"DataWindow Error")
val3 = FindWindowA(0,"Alert")

if val > 0 then
	send(val,16,0,0)
end if
if val1> 0 then
	send(val1,16,0,0)
end if
if val2> 0 then
	send(val2,16,0,0)
end if
if val3> 0 then
	send(val3,16,0,0)
end if
end event

type cb_3 from commandbutton within w_slideup
integer x = 1531
integer y = 312
integer width = 402
integer height = 112
integer taborder = 170
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "modify"
end type

event clicked;messagebox('',dw_1.modify(sle_2.text))
end event

type sle_2 from singlelineedit within w_slideup
integer x = 96
integer y = 308
integer width = 1390
integer height = 112
integer taborder = 170
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_slideup
integer x = 91
integer y = 188
integer width = 1390
integer height = 112
integer taborder = 170
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_slideup
integer x = 1531
integer y = 180
integer width = 402
integer height = 112
integer taborder = 170
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "describe"
end type

event clicked;messagebox('',dw_1.describe(sle_1.text))

end event

type cb_2 from commandbutton within w_slideup
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

type dw_bak from datawindow within w_slideup
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

type cbx_showright from checkbox within w_slideup
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

type dw_3 from datawindow within w_slideup
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

type cb_run from commandbutton within w_slideup
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
wf_message(ls_Item,"SlideUpSlideLeft")
wf_script(trim(mid(ls_Item,pos(lb_testitems.text(lb_testitems.selectedindex())," "))))
if ii_errornumber = 0 and not(cbx_right.checked) then
	dw_output.rowsdiscard(li_rowcount + 1, li_rowcount + ii_rightnumber + 10,Primary!)
end if

cb_error.text = "All"
cb_error.TriggerEvent(clicked!)
end event

type st_message from statictext within w_slideup
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

type lb_testitems from listbox within w_slideup
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

this.additem(string(i,"00")+" GridHeader")
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

type cb_autorun from commandbutton within w_slideup
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
	wf_message(ls_Item,"SlideUpSlideLeft")
	ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
	wf_script(ls_Item)
	f_outputtext(dw_output,ls_message)
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
	end if 
Next

end event

type cb_saveas from commandbutton within w_slideup
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

type cb_error from commandbutton within w_slideup
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

type cbx_right from checkbox within w_slideup
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

type cb_max from commandbutton within w_slideup
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

type cb_sort from commandbutton within w_slideup
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

type cb_reset from commandbutton within w_slideup
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

type dw_1 from datawindow within w_slideup
integer x = 78
integer y = 476
integer width = 2551
integer height = 1732
integer taborder = 20
string title = "none"
string dataobject = "d_tabular_header"
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

type dw_output from datawindow within w_slideup
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

type gb_4 from groupbox within w_slideup
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

type gb_1 from groupbox within w_slideup
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

type gb_2 from groupbox within w_slideup
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

type gb_3 from groupbox within w_slideup
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

type lb_1 from listbox within w_slideup
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

