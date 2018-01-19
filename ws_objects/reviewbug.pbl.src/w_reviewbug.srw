$PBExportHeader$w_reviewbug.srw
forward
global type w_reviewbug from window
end type
type dw_bug21355 from datawindow within w_reviewbug
end type
type dw_2 from datawindow within w_reviewbug
end type
type cb_1 from commandbutton within w_reviewbug
end type
type dw_defaultproperty_result from datawindow within w_reviewbug
end type
type dw_bak from datawindow within w_reviewbug
end type
type cbx_showright from checkbox within w_reviewbug
end type
type cb_2 from commandbutton within w_reviewbug
end type
type cb_run from commandbutton within w_reviewbug
end type
type st_message from statictext within w_reviewbug
end type
type lb_testitems from listbox within w_reviewbug
end type
type cb_autorun from commandbutton within w_reviewbug
end type
type cb_10 from commandbutton within w_reviewbug
end type
type cb_3 from commandbutton within w_reviewbug
end type
type cbx_right from checkbox within w_reviewbug
end type
type cb_max from commandbutton within w_reviewbug
end type
type cb_save from commandbutton within w_reviewbug
end type
type cb_sort from commandbutton within w_reviewbug
end type
type cb_reset from commandbutton within w_reviewbug
end type
type dw_1 from datawindow within w_reviewbug
end type
type dw_output from datawindow within w_reviewbug
end type
type gb_4 from groupbox within w_reviewbug
end type
type gb_1 from groupbox within w_reviewbug
end type
type gb_2 from groupbox within w_reviewbug
end type
type gb_3 from groupbox within w_reviewbug
end type
type lb_1 from listbox within w_reviewbug
end type
end forward

global type w_reviewbug from window
integer width = 5499
integer height = 4596
boolean titlebar = true
string title = "ReviewBug"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
dw_bug21355 dw_bug21355
dw_2 dw_2
cb_1 cb_1
dw_defaultproperty_result dw_defaultproperty_result
dw_bak dw_bak
cbx_showright cbx_showright
cb_2 cb_2
cb_run cb_run
st_message st_message
lb_testitems lb_testitems
cb_autorun cb_autorun
cb_10 cb_10
cb_3 cb_3
cbx_right cbx_right
cb_max cb_max
cb_save cb_save
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
global w_reviewbug w_reviewbug

type prototypes
FUNCTION boolean GetCursorPos(point ppos) LIBRARY "user32.dll" alias for "GetCursorPos;Ansi"
FUNCTION boolean GetWindowRect(uint hwnd,point rect) LIBRARY "user32.dll" alias for "GetWindowRect;Ansi"
FUNCTION uint FindWindowA (long classname,string windowname) LIBRARY "user32.dll" alias for "FindWindowA;Ansi"
FUNCTION uint ReadFile (uint hwnd,string dwbuffer,uint read,uint readed) LIBRARY "user32.dll" alias for "ReadFile;Ansi"


end prototypes

type variables
int ii_retrievestart = 0,ii_error = 0,ii_errornumber = 0,ii_rightnumber = 0
string is_sql
int ii_num,il_error_no
int ii_number = 1
boolean ib_message = false
boolean ib_save
long ii_dwx,ii_gbx,ii_dwwidth,ii_gbwidth
point str_point
end variables

forward prototypes
public subroutine wf_output (string as_testitem, string as_orivalue, string as_curvalue, string as_type)
public subroutine wf_message (string as_operate, string as_problem)
public subroutine wf_expression (string as_testitem)
public function integer wf_returnerror ()
public subroutine wf_script (string as_testitem, boolean ab_save)
public function string wf_selectresult (string as_testitem, string as_result)
public subroutine wf_run ()
public subroutine wf_reset ()
end prototypes

event ue_autorun();cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
cb_3.TriggerEvent(clicked!)
cb_10.TriggerEvent(clicked!)
cbx_right.checked = true
end event

public subroutine wf_output (string as_testitem, string as_orivalue, string as_curvalue, string as_type);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

string ls_message[]
if not ib_save then
	ls_message[]= {"Right[" + as_testitem + "]","JS",as_type,as_OriValue}
	if lower(as_OriValue) = lower(as_CurValue) then
		if cbx_right.checked then
			ii_rightnumber++
			f_outputtext(dw_output,ls_message)
		end if
	else
		ii_error ++
		ii_errornumber ++
		ls_message[1] = 'Error[' + as_testitem + ']'
		ls_message[2] = 'PB'
		f_outputtext(dw_output,ls_message)
		ls_message[2] = 'JS'
		ls_message[4] = as_CurValue
		f_outputtext(dw_output,ls_message)
	end if
	
	st_message.text = "Error:"+string(ii_error)
end if

end subroutine

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
ls_message[]={'[±àºÅ]','','GraphDatawindow '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"GroupDW"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public subroutine wf_expression (string as_testitem);
end subroutine

public function integer wf_returnerror ();return ii_error
end function

public subroutine wf_script (string as_testitem, boolean ab_save);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
long li_ret
string ls_newresult,ls_oldresult
choose case as_testitem
	case 'bug 20996'
		int i
		wf_reset()
		for i = 1 to 1000
			dw_1.rowscopy(1,10,primary!,dw_1,2147483647,primary!)
		next
		ls_newresult = string(dw_1.rowcount())
		ls_oldresult = wf_selectresult("bug 20996",ls_newresult)
		wf_output("bug 20996",ls_oldresult,ls_newresult,&
		'dw_1.rowcount()')
	case 'bug 20761'
		string ls_sql,ls_pst,ls_syntax,ls_err
		ls_sql = "SELECT  * FROM employee "
		
		ls_pst = "style(type=label) datawindow(label.columns=-1 label.rows=2 Label.width=800 Label.height=1000)"
		ls_syntax = sqlca.syntaxfromsql(ls_sql,ls_pst,ls_err)
		li_ret = dw_2.create(ls_syntax,ls_err)
		dw_2.settransobject(sqlca)
		dw_2.retrieve()
		ls_newresult = string(li_ret)
		ls_oldresult = wf_selectresult('bug 20761(1)',ls_newresult)
		wf_output('bug 20761',ls_oldresult,ls_newresult,&
		'dw_2.create()')	
		
		ls_pst = "style(type=label) datawindow(label.columns=0 label.rows=2 Label.width=800 Label.height=1000)"
		ls_syntax = sqlca.syntaxfromsql(ls_sql,ls_pst,ls_err)
		li_ret = dw_2.create(ls_syntax,ls_err)
		dw_2.settransobject(sqlca)
		dw_2.retrieve()
		ls_newresult = string(li_ret)
		ls_oldresult = wf_selectresult('bug 20761(2)',ls_newresult)
		wf_output('bug 20761',ls_oldresult,ls_newresult,&
		'dw_2.create()')
		
		ls_pst = "style(type=label) datawindow(label.columns=3 label.rows=2 Label.width=800 Label.height=1000)"
		ls_syntax = sqlca.syntaxfromsql(ls_sql,ls_pst,ls_err)
		li_ret = dw_2.create(ls_syntax,ls_err)
		dw_2.settransobject(sqlca)
		dw_2.retrieve()
		ls_newresult = string(li_ret)
		ls_oldresult = wf_selectresult('bug 20761(3)',ls_newresult)
		wf_output('bug 20761',ls_oldresult,ls_newresult,&
		'dw_2.create()')
		
		ls_pst = "style(type=label) datawindow(LABEL.COLUMNS=2 label.rows=2 Label.width=800 Label.height=1000 LABEL.COLUMNS.SPACING=-50)"
		ls_syntax = sqlca.syntaxfromsql(ls_sql,ls_pst,ls_err)
		li_ret = dw_2.create(ls_syntax,ls_err)
		dw_2.settransobject(sqlca)
		dw_2.retrieve()
		ls_newresult = string(li_ret)
		ls_oldresult = wf_selectresult('bug 20761(4)',ls_newresult)
		wf_output('bug 20761',ls_oldresult,ls_newresult,&
		'dw_2.create()')
		
		ls_pst = "style(type=label) datawindow(LABEL.COLUMNS=2 label.rows=2 Label.width=800 Label.height=1000 LABEL.COLUMNS.SPACING=0)"
		ls_syntax = sqlca.syntaxfromsql(ls_sql,ls_pst,ls_err)
		li_ret = dw_2.create(ls_syntax,ls_err)
		dw_2.settransobject(sqlca)
		dw_2.retrieve()
		ls_newresult = string(li_ret)
		ls_oldresult = wf_selectresult('bug 20761(5)',ls_newresult)
		wf_output('bug 20761',ls_oldresult,ls_newresult,&
		'dw_2.create()')
		
		ls_pst = "style(type=label) datawindow(LABEL.COLUMNS=2 label.rows=2 Label.width=800 Label.height=1000 LABEL.COLUMNS.SPACING=100)"
		ls_syntax = sqlca.syntaxfromsql(ls_sql,ls_pst,ls_err)
		li_ret = dw_2.create(ls_syntax,ls_err)
		dw_2.settransobject(sqlca)
		dw_2.retrieve()
		ls_newresult = string(li_ret)
		ls_oldresult = wf_selectresult('bug 20761(6)',ls_newresult)
		wf_output('bug 20761',ls_oldresult,ls_newresult,&
		'dw_2.create()')
		
		ls_pst = "style(type=label) datawindow(LABEL.COLUMNS=2 label.rows=2 Label.width=800 Label.height=1000 LABEL.COLUMNS.SPACING=32000)"
		ls_syntax = sqlca.syntaxfromsql(ls_sql,ls_pst,ls_err)
		li_ret = dw_2.create(ls_syntax,ls_err)
		dw_2.settransobject(sqlca)
		dw_2.retrieve()
		ls_newresult = string(li_ret)
		ls_oldresult = wf_selectresult('bug 20761(7)',ls_newresult)
		wf_output('bug 20761',ls_oldresult,ls_newresult,&
		'dw_2.create()')
	case "bug 21355"
		messagebox('',dw_bug21355.modify('create report(band=detail dataobject="d_bug21355" x="1" y="2" height="315"  width="100"   border="0"  height.autosize=yes criteria=""  trail_footer = yes  slideup=AllAbove )' ))
		dw_bug21355.settransobject(sqlca)
		messagebox('',dw_bug21355.retrieve())
end choose
end subroutine

public function string wf_selectresult (string as_testitem, string as_result);string ls_value
SELECT reviewbug.result
INTO :ls_value
FROM reviewbug 
WHERE reviewbug.bugid = :as_testitem;

if ib_save then
	if sqlca.sqlcode = 100 then 
		INSERT INTO reviewbug (reviewbug.bugid,reviewbug.result)
		VALUES (:as_testitem,:as_result);
		if sqlca.sqlcode = 0 then
			COMMIT using sqlca;
			//messagebox("","Executed successed")
		else
			Rollback using sqlca;
			Messagebox("Insert Failed!",string(sqlca.sqlerrtext))
		end if
	else
		UPDATE reviewbug
		SET reviewbug.result = :as_result
		WHERE reviewbug.bugid =:as_testitem;
		if sqlca.sqlcode = 0 then
			commit using sqlca;
		else
			rollback using sqlca;
			messagebox("Update Failed!",sqlca.sqlerrtext)
		end if
	end if
end if

return ls_value
end function

public subroutine wf_run ();string ls_Item
int li_rowcount
IF not lb_testitems.selectedindex() > 0 THEN
	MessageBox("Warning","Please select a test item")
	return 
END IF

dw_output.Reset()
ii_error = 0
st_message.text = ""

ls_Item = lower(lb_testitems.text(lb_testitems.selectedindex()))
ii_errornumber = 0
ii_rightnumber = 0
li_rowcount = dw_output.rowcount()
wf_message(ls_Item,"Review Bug")
wf_script(trim(mid(ls_item,pos(ls_item,"bug"))),ib_save)
if ii_errornumber = 0 and not(cbx_right.checked) then
	dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
end if

cb_3.TriggerEvent(clicked!)
cb_3.text = "All"
end subroutine

public subroutine wf_reset ();dw_1.dataobject = 'd_reviewbug_grid'
dw_1.settransobject(sqlca)
dw_1.retrieve()
end subroutine

on w_reviewbug.create
this.dw_bug21355=create dw_bug21355
this.dw_2=create dw_2
this.cb_1=create cb_1
this.dw_defaultproperty_result=create dw_defaultproperty_result
this.dw_bak=create dw_bak
this.cbx_showright=create cbx_showright
this.cb_2=create cb_2
this.cb_run=create cb_run
this.st_message=create st_message
this.lb_testitems=create lb_testitems
this.cb_autorun=create cb_autorun
this.cb_10=create cb_10
this.cb_3=create cb_3
this.cbx_right=create cbx_right
this.cb_max=create cb_max
this.cb_save=create cb_save
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_1=create dw_1
this.dw_output=create dw_output
this.gb_4=create gb_4
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.lb_1=create lb_1
this.Control[]={this.dw_bug21355,&
this.dw_2,&
this.cb_1,&
this.dw_defaultproperty_result,&
this.dw_bak,&
this.cbx_showright,&
this.cb_2,&
this.cb_run,&
this.st_message,&
this.lb_testitems,&
this.cb_autorun,&
this.cb_10,&
this.cb_3,&
this.cbx_right,&
this.cb_max,&
this.cb_save,&
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

on w_reviewbug.destroy
destroy(this.dw_bug21355)
destroy(this.dw_2)
destroy(this.cb_1)
destroy(this.dw_defaultproperty_result)
destroy(this.dw_bak)
destroy(this.cbx_showright)
destroy(this.cb_2)
destroy(this.cb_run)
destroy(this.st_message)
destroy(this.lb_testitems)
destroy(this.cb_autorun)
destroy(this.cb_10)
destroy(this.cb_3)
destroy(this.cbx_right)
destroy(this.cb_max)
destroy(this.cb_save)
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
//dw_2.SetTransObject(sqlca)
//dw_2.Retrieve()
//dw_bak.SettransObject(sqlca)
//dw_bak.Retrieve()
is_sql = dw_1.GetSQLSelect()
//dw_1.modify("datawindow.zoom = 70")
dw_output.modify("result.color = '33554432~tIf( mid(result ,1,5) = ~"Error~", rgb(255,0,0),rgb(0,0,0))'")
dw_output.modify("result.width = 600'")
//dw_output.modify("contrast.width = 100'")
ii_dwx = dw_output.x
ii_dwwidth = dw_output.width
ii_gbx = gb_4.x
ii_gbwidth = gb_4.width


timer(1)	
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

type dw_bug21355 from datawindow within w_reviewbug
boolean visible = false
integer x = 635
integer y = 620
integer width = 686
integer height = 400
integer taborder = 80
string title = "none"
string dataobject = "d_bug21355"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_2 from datawindow within w_reviewbug
boolean visible = false
integer x = 635
integer y = 976
integer width = 686
integer height = 400
integer taborder = 90
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_reviewbug
integer x = 2295
integer y = 320
integer width = 320
integer height = 76
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Delete DB"
end type

event clicked;string ls_mysql
int li_ret

ls_mysql = 'truncate table reviewbug'
li_ret = Messagebox('Delete','Are you want to delete all data in table reviewbug',Question!,OKCancel!,2)

if li_ret = 1 then 
	EXECUTE IMMEDIATE :ls_Mysql USING SQLCA;
	if sqlca.sqlcode = 0 then
		COMMIT using sqlca;
	else
		Rollback using sqlca;
		Messagebox('','Executed Failed!')
	end if
end if
//dw_output.retrieve()
end event

type dw_defaultproperty_result from datawindow within w_reviewbug
boolean visible = false
integer x = 1330
integer y = 936
integer width = 1157
integer height = 768
integer taborder = 80
string title = "none"
string dataobject = "d_graph_defaultproperty_result"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_bak from datawindow within w_reviewbug
boolean visible = false
integer x = 462
integer y = 116
integer width = 1298
integer height = 404
integer taborder = 170
string title = "none"
string dataobject = "d_bak"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cbx_showright from checkbox within w_reviewbug
boolean visible = false
integer x = 2743
integer y = 132
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
string text = "ShowRight"
boolean checked = true
end type

type cb_2 from commandbutton within w_reviewbug
boolean visible = false
integer x = 777
integer y = 536
integer width = 343
integer height = 104
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "none"
end type

event clicked;dw_1.saveas()
end event

type cb_run from commandbutton within w_reviewbug
integer x = 2295
integer y = 140
integer width = 320
integer height = 76
integer taborder = 160
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Run"
end type

event clicked;ib_save = false
wf_run()


end event

type st_message from statictext within w_reviewbug
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

type lb_testitems from listbox within w_reviewbug
integer x = 73
integer y = 52
integer width = 2126
integer height = 340
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

this.additem(string(i,"00")+" bug 20996")
i += 1
this.additem(string(i,"00")+" bug 20761")
i += 1
this.additem(string(i,"00")+" bug 21355")

end event

event doubleclicked;//string ls_Item
//ls_Item = lb_testitems.text(index)
//ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
//wf_script(ls_Item)
cb_run.TriggerEvent(clicked!)
end event

type cb_autorun from commandbutton within w_reviewbug
integer x = 2295
integer y = 52
integer width = 320
integer height = 76
integer taborder = 100
integer textsize = -10
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

ls_message[] = {'','','',''}
li_ItemTotal = lb_testitems.TotalItems()

dw_output.Reset()
ii_error = 0
st_message.text = ""

dw_1.Retrieve()
ii_number = 1
ib_message = true
For li_itemCount = 1 to li_ItemTotal
	ls_Item = lower(lb_testitems.text(li_ItemCount))
	ii_errornumber = 0
	ii_rightnumber = 0
	li_rowcount = dw_output.rowcount()
	wf_message(ls_Item,"Review Bug")
	wf_script(trim(mid(ls_item,pos(ls_item,"bug"))),ib_save)
	f_outputtext(dw_output,ls_message)	
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,primary!)
	end if
Next
end event

type cb_10 from commandbutton within w_reviewbug
integer x = 4229
integer y = 228
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

//±£´æÎÄ¼þ
//dw_output.retrieve()
if dw_output.SaveAs("c:\output.txt", Text!	, FALSE)=1 then
	messagebox("Alert","save to c:\output.text,OK!")
end if



end event

type cb_3 from commandbutton within w_reviewbug
integer x = 3959
integer y = 228
integer width = 270
integer height = 88
integer taborder = 110
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "All"
end type

event clicked;if this.text="Error" then
	dw_output.setfilter("mid(#1,1,5) <> 'Right'")//mid(result ,1,5) = "Error"
	dw_output.filter()
	this.text="All"
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_reviewbug
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

type cb_max from commandbutton within w_reviewbug
integer x = 3689
integer y = 228
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

type cb_save from commandbutton within w_reviewbug
integer x = 2295
integer y = 228
integer width = 320
integer height = 76
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Save DB"
end type

event clicked;ib_save = true
wf_run()

end event

type cb_sort from commandbutton within w_reviewbug
integer x = 3419
integer y = 228
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

type cb_reset from commandbutton within w_reviewbug
integer x = 3150
integer y = 228
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

event clicked;//wf_init()
dw_output.reset()
ii_error = 0
st_message.text = ""
end event

type dw_1 from datawindow within w_reviewbug
integer x = 78
integer y = 476
integer width = 2551
integer height = 1732
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

event retrievestart;//return ii_retrievestart
end event

event clicked;//messagebox(string(dw_1.x + xpos) + "  dw_1.x=" + string(dw_1.x) + "  xpos=" + string(xpos),&
//string(dw_1.y + ypos) + "  dw_1.y=" + string(dw_1.y) + "  ypos=" + string(ypos))
//
////messagebox(string(PixelsToUnits(dw_1.x + xpos,XPixelsToUnits!)),string(PixelsToUnits(dw_1.y + ypos,YPixelsToUnits!)))

end event

type dw_output from datawindow within w_reviewbug
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

type gb_4 from groupbox within w_reviewbug
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

type gb_1 from groupbox within w_reviewbug
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

type gb_2 from groupbox within w_reviewbug
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

type gb_3 from groupbox within w_reviewbug
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

type lb_1 from listbox within w_reviewbug
boolean visible = false
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

