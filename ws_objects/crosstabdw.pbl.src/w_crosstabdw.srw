$PBExportHeader$w_crosstabdw.srw
forward
global type w_crosstabdw from window
end type
type dw_result from datawindow within w_crosstabdw
end type
type cb_1 from commandbutton within w_crosstabdw
end type
type dw_defaultproperty_result from datawindow within w_crosstabdw
end type
type dw_bak from datawindow within w_crosstabdw
end type
type cbx_showright from checkbox within w_crosstabdw
end type
type cb_2 from commandbutton within w_crosstabdw
end type
type cb_run from commandbutton within w_crosstabdw
end type
type st_message from statictext within w_crosstabdw
end type
type lb_testitems from listbox within w_crosstabdw
end type
type cb_autorun from commandbutton within w_crosstabdw
end type
type cb_10 from commandbutton within w_crosstabdw
end type
type cb_3 from commandbutton within w_crosstabdw
end type
type cbx_right from checkbox within w_crosstabdw
end type
type cb_max from commandbutton within w_crosstabdw
end type
type cb_save from commandbutton within w_crosstabdw
end type
type cb_sort from commandbutton within w_crosstabdw
end type
type cb_reset from commandbutton within w_crosstabdw
end type
type dw_1 from datawindow within w_crosstabdw
end type
type dw_output from datawindow within w_crosstabdw
end type
type gb_4 from groupbox within w_crosstabdw
end type
type gb_1 from groupbox within w_crosstabdw
end type
type gb_2 from groupbox within w_crosstabdw
end type
type gb_3 from groupbox within w_crosstabdw
end type
type lb_1 from listbox within w_crosstabdw
end type
end forward

global type w_crosstabdw from window
integer width = 5682
integer height = 5076
boolean titlebar = true
string title = "CrosstabDW Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
dw_result dw_result
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
global w_crosstabdw w_crosstabdw

type prototypes
FUNCTION boolean GetCursorPos(point ppos) LIBRARY "user32.dll" alias for "GetCursorPos;Ansi"
FUNCTION boolean GetWindowRect(uint hwnd,point rect) LIBRARY "user32.dll" alias for "GetWindowRect;Ansi"
FUNCTION uint FindWindowA (long classname,string windowname) LIBRARY "user32.dll" alias for "FindWindowA;Ansi"
FUNCTION uint ReadFile (uint hwnd,string dwbuffer,uint read,uint readed) LIBRARY "user32.dll" alias for "ReadFile;Ansi"


end prototypes

type variables
int ii_retrievestart = 0,ii_error = 0,ii_errornumber = 0,ii_rightnumber = 0
string is_sql,is_getmessagetext
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
public function integer wf_returnerror ()
public subroutine wf_script (string as_testitem, boolean ab_save)
public function string wf_selectresult (string as_testitem, string as_result)
public subroutine wf_run ()
public subroutine wf_reset ()
public subroutine wf_setproperty (string as_testitem, boolean ab_save)
public subroutine wf_getproperty (string as_testitem, boolean ab_save)
public subroutine wf_expression (string as_testitem, boolean ab_save)
public subroutine wf_function (string as_testitem, boolean ab_save)
public subroutine wf_event (string as_testitem, boolean ab_save)
public subroutine wf_special (string as_testitem, boolean ab_save)
public subroutine wf_changedataobject (string as_dataobject)
public subroutine wf_status (string as_testitem, boolean ab_save)
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
ls_message[]={'[±àºÅ]','','CrosstabDatawindow '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"CrosstabDW"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public function integer wf_returnerror ();return ii_error
end function

public subroutine wf_script (string as_testitem, boolean ab_save);////////////////////////////////////////////////////////////////
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
	case 'getproperty'
		wf_getproperty(as_testitem,ab_save)
	case 'setproperty'
		wf_setproperty(as_testitem,ab_save)
	case 'expression'
		wf_expression(as_testitem,ab_save)
	case 'function'
		wf_function(as_testitem,ab_save)
	case 'event'
		wf_event(as_testitem,ab_save)
	case 'special'
		wf_special(as_testitem,ab_save)
	case 'status'
		wf_status(as_testitem,ab_save)
end choose
end subroutine

public function string wf_selectresult (string as_testitem, string as_result);string ls_value
SELECT crosstab_result.result
INTO :ls_value
FROM crosstab_result 
WHERE crosstab_result.testitem = :as_testitem;

if ib_save then
	if sqlca.sqlcode = 100 then 
		INSERT INTO crosstab_result (crosstab_result.testitem,crosstab_result.result)
		VALUES (:as_testitem,:as_result);
		if sqlca.sqlcode = 0 then
			COMMIT using sqlca;
			//messagebox("","Executed successed")
		else
			Rollback using sqlca;
			Messagebox("Insert Failed!",string(sqlca.sqlerrtext))
		end if
	else
		UPDATE crosstab_result
		SET crosstab_result.result = :as_result
		WHERE crosstab_result.testitem =:as_testitem;
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

public subroutine wf_run ();string ls_Item,ls_testitem
int li_rowcount,li_pos
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
wf_message(ls_Item,"CrosstabDW")
li_pos = pos(ls_item,"crosstab")
ls_testitem = trim(mid(ls_item,li_pos + 8))
wf_script(ls_testitem,ib_save)
if ii_errornumber = 0 and not(cbx_right.checked) then
	dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
end if

cb_3.TriggerEvent(clicked!)
cb_3.text = "All"
end subroutine

public subroutine wf_reset ();dw_1.dataobject = 'd_crosstab_dw'
dw_1.settransobject(sqlca)
dw_1.retrieve()
end subroutine

public subroutine wf_setproperty (string as_testitem, boolean ab_save);string ls_oldresult,ls_newresult
wf_reset()

////Columns
//dw_1.modify("DataWindow.Crosstab.Columns='aa'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.Columns")
//ls_oldresult = wf_selectresult("set.Crosstab.Columns(aa)",ls_newresult)
//wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.Columns=~'aa~'")')
//
//dw_1.modify("DataWindow.Crosstab.Columns='depart'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.Columns")
//ls_oldresult = wf_selectresult("set.Crosstab.Columns(depart)",ls_newresult)
//wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.Columns=~'depart~'")')
//
//dw_1.modify("DataWindow.Crosstab.Columns='depart,depart'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.Columns")
//ls_oldresult = wf_selectresult("set.Crosstab.Columns(depart,depart)",ls_newresult)
//wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.Columns=~'depart,depart~'")')
//
////Rows
//dw_1.modify("DataWindow.Crosstab.Rows = 'aa'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.Rows")
//ls_oldresult = wf_selectresult("set.Crosstab.Rows(aa)",ls_newresult)
//wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.Rows = ~'aa~'")')
//
//dw_1.modify("DataWindow.Crosstab.Rows = 'depart'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.Rows")
//ls_oldresult = wf_selectresult("set.Crosstab.Rows(depart)",ls_newresult)
//wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.Rows = ~'depart~'")')

////SourceNames
//dw_1.modify("DataWindow.Crosstab.SourceNames = 'aa'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.SourceNames")
//ls_oldresult = wf_selectresult("set.Crosstab.SourceNames(aa)",ls_newresult)
//wf_output("modify.sourcenames",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.SourceNames = ~'aa~'")')
//
//dw_1.modify("DataWindow.Crosstab.SourceNames = 'name, depart, year'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.SourceNames")
//ls_oldresult = wf_selectresult("set.Crosstab.SourceNames(name, depart, year)",ls_newresult)
//wf_output("modify.sourcenames1",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.SourceNames = ~'name, depart, year~'")')

////values
//dw_1.modify("DataWindow.Crosstab.Values = 'aa'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.Values")
//ls_oldresult = wf_selectresult("set.Crosstab.Values(aa)",ls_newresult)
//wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.Values = ~'aa~'")')
//
//dw_1.modify("DataWindow.Crosstab.Values = 'depart'")
//ls_newresult = dw_1.describe("DataWindow.Crosstab.Values")
//ls_oldresult = wf_selectresult("set.Crosstab.Values(depart)",ls_newresult)
//wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.Values = ~'depart~'")')

//StaticMode
wf_reset()
dw_1.modify("DataWindow.Crosstab.StaticMode = yes")
ls_newresult = dw_1.describe("DataWindow.Crosstab.StaticMode")
ls_oldresult = wf_selectresult("set.Crosstab.StaticMode(yes)",ls_newresult)
wf_output("modify.staticmode(yes)",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.StaticMode = yes")')

wf_reset()
dw_1.modify("DataWindow.Crosstab.StaticMode = no")
ls_newresult = dw_1.describe("DataWindow.Crosstab.StaticMode")
ls_oldresult = wf_selectresult("set.Crosstab.StaticMode(no)",ls_newresult)
wf_output("modify.staticmode(no)",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.StaticMode = yes")')

dw_1.dataobject = "dw_crosstab_dw_static"
dw_1.settransobject(sqlca)
ls_newresult = dw_1.describe("DataWindow.Crosstab.StaticMode")
ls_oldresult = wf_selectresult("set.Crosstab.StaticMode(yes(static))",ls_newresult)
wf_output("modify.staticmode(yes(static))",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Crosstab.StaticMode = yes")')

//header
wf_reset()
dw_1.modify("DataWindow.Header.Color = '111'")
ls_newresult = dw_1.describe("DataWindow.Header.Color")
ls_oldresult = wf_selectresult("set.Header.Color",ls_newresult)
wf_output("modify.header",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Header.Color")')

wf_reset()
dw_1.modify("DataWindow.Header.1.Color = '111'")
ls_newresult = dw_1.describe("DataWindow.Header.1.Color")
ls_oldresult = wf_selectresult("set.Header.1.Color(111)",ls_newresult)
wf_output("modify.header.1",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.Header.1.Color = ~'111~'")')

wf_reset()
dw_1.modify("DataWindow.Header.2.Color = '111'")
ls_newresult = dw_1.describe("DataWindow.Header.2.Color")
ls_oldresult = wf_selectresult("set.Header.2.Color",ls_newresult)
wf_output("modify.header.2",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.2.Color")')

wf_reset()
dw_1.modify("DataWindow.Header[2].Color = '111'")
ls_newresult = dw_1.describe("DataWindow.Header[2].Color")
ls_oldresult = wf_selectresult("set.Header[2].Color",ls_newresult)
wf_output("modify.header[2]",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.2.Color")')

wf_reset()
dw_1.modify("DataWindow.Header.3.Color = '111'")
ls_newresult = dw_1.describe("DataWindow.Header.3.Color")
ls_oldresult = wf_selectresult("set.Header.3.Color",ls_newresult)
wf_output("modify.header.3",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.3.Color")')


//QueryMode
wf_reset()
dw_1.modify("DataWindow.QueryMode = yes")
ls_newresult = dw_1.describe("DataWindow.QueryMode")
ls_oldresult = wf_selectresult("set.QueryMode(yes)",ls_newresult)
wf_output("modify.QueryMode",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.QueryMode = yes")')

//QuerySort
wf_reset()
dw_1.modify("DataWindow.QuerySort = yes")
ls_newresult = dw_1.describe("DataWindow.QuerySort")
ls_oldresult = wf_selectresult("set.QuerySort(yes)",ls_newresult)
wf_output("modify.QuerySort",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.QuerySort = yes")')

//ReadOnly
wf_reset()
dw_1.modify("DataWindow.ReadOnly = no")
ls_newresult = dw_1.describe("DataWindow.ReadOnly")
ls_oldresult = wf_selectresult("set.ReadOnly(no)",ls_newresult)
wf_output("modify.ReadOnly",ls_oldresult,ls_newresult,'dw_1.modify("DataWindow.ReadOnly = no")')

//crosstabdata(dynamic(after retrieve))
wf_reset()
dw_1.modify("DataWindow.Table.Crosstabdata = 'a'")
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("set.Crosstabdata(dynamic(after retrieve))",ls_newresult)
wf_output("modify.Crosstabdata(dynamic(after retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

//crosstabdata(dynamic(before retrieve))
dw_1.dataobject = "d_crosstab_dw"
dw_1.settransobject(sqlca)
dw_1.modify("DataWindow.Table.Crosstabdata = 'a'")
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("set.Crosstabdata(dynamic(before retrieve))",ls_newresult)
wf_output("modify.Crosstabdata(dynamic(before retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

//crosstabdata(static(before retrieve))
dw_1.dataobject = "d_crosstab_dw_static"
dw_1.settransobject(sqlca)
dw_1.modify("DataWindow.Table.Crosstabdata = 'a'")
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("set.Crosstabdata(static(before retrieve))",ls_newresult)
wf_output("modify.Crosstabdata(static(before retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

//crosstabdata(static(after retrieve))
dw_1.dataobject = "d_crosstab_dw_static"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.modify("DataWindow.Table.Crosstabdata = 'a'")
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("set.Crosstabdata(static(after retrieve))",ls_newresult)
wf_output("modify.Crosstabdata(static(after retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

end subroutine

public subroutine wf_getproperty (string as_testitem, boolean ab_save);string ls_oldresult,ls_newresult
//columns
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Crosstab.Columns")
ls_oldresult = wf_selectresult("get.Crosstab.Columns",ls_newresult)
wf_output("describe.columns",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstab.Columns")')

//rows
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Crosstab.Rows")
ls_oldresult = wf_selectresult("get.Crosstab.Rows",ls_newresult)
wf_output("describe.rows",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstab.Rows")')

//sourcenames
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Crosstab.SourceNames")
ls_oldresult = wf_selectresult("get.Crosstab.SourceNames",ls_newresult)
wf_output("describe.sourcenames",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstab.SourceNames")')

//staitcmode
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Crosstab.StaticMode")
ls_oldresult = wf_selectresult("get.Crosstab.StaticMode",ls_newresult)
wf_output("describe.staticmode",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstab.StaticMode")')

//values
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Crosstab.Values")
ls_oldresult = wf_selectresult("get.Crosstab.Values",ls_newresult)
wf_output("describe.values",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstab.Values")')

//header
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Header.Color")
ls_oldresult = wf_selectresult("get.Header.Color",ls_newresult)
wf_output("describe.header",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.Color")')

ls_newresult = dw_1.describe("DataWindow.Header.1.Color")
ls_oldresult = wf_selectresult("get.Header.1.Color",ls_newresult)
wf_output("describe.header",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.1.Color")')

ls_newresult = dw_1.describe("DataWindow.Header.2.Color")
ls_oldresult = wf_selectresult("get.Header.2.Color",ls_newresult)
wf_output("describe.header",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.2.Color")')

ls_newresult = dw_1.describe("DataWindow.Header[2].Color")
ls_oldresult = wf_selectresult("get.Header[2].Color",ls_newresult)
wf_output("describe.header",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.2.Color")')

ls_newresult = dw_1.describe("DataWindow.Header.3.Color")
ls_oldresult = wf_selectresult("get.Header.3.Color",ls_newresult)
wf_output("describe.header",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Header.3.Color")')

//bands
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Bands")
ls_oldresult = wf_selectresult("get.Bands",ls_newresult)
wf_output("describe.bands",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Bands")')

//count
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Column.Count")
ls_oldresult = wf_selectresult("get.Column.Count",ls_newresult)
wf_output("describe.count",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Column.Count")')

//count special
wf_reset()
dw_1.modify("DataWindow.Crosstab.StaticMode = yes")
ls_newresult = dw_1.describe("DataWindow.Column.Count")
ls_oldresult = wf_selectresult("get.Column.Count(dynamic(staticmode = yes))",ls_newresult)
wf_output("describe.count(dynamic(staticmode = yes))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Column.Count")')

dw_1.modify("DataWindow.Crosstab.StaticMode = no")
ls_newresult = dw_1.describe("DataWindow.Column.Count")
ls_oldresult = wf_selectresult("get.Column.Count(dynamic(staticmode = no))",ls_newresult)
wf_output("describe.count(dynamic(staticmode = no))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Column.Count")')

dw_1.dataobject = "d_crosstab_dw_static"
dw_1.settransobject(sqlca)
dw_1.retrieve()
ls_newresult = dw_1.describe("DataWindow.Column.Count")
ls_oldresult = wf_selectresult("get.Column.Count(staict)",ls_newresult)
wf_output("describe.count(staict)",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Column.Count")')

//data
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Data")
ls_oldresult = wf_selectresult("get.Data",ls_newresult)
wf_output("describe.data",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Data")')

//objects
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Objects")
ls_oldresult = wf_selectresult("get.Objects",ls_newresult)
wf_output("describe.objects",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Objects")')

//object special
wf_reset()
dw_1.modify("DataWindow.Crosstab.StaticMode = yes")
ls_newresult = dw_1.describe("DataWindow.Objects")
ls_oldresult = wf_selectresult("get.Objects(dynamic(staticmode = yes))",ls_newresult)
wf_output("describe.objects(dynamic(staticmode = yes))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Objects")')

dw_1.modify("DataWindow.Crosstab.StaticMode = no")
ls_newresult = dw_1.describe("DataWindow.Objects")
ls_oldresult = wf_selectresult("get.Objects(dynamic(staticmode = no))",ls_newresult)
wf_output("describe.objects(dynamic(staticmode = no))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Objects")')

dw_1.dataobject = "d_crosstab_dw_static"
dw_1.settransobject(sqlca)
dw_1.retrieve()
//messagebox('',dw_1.describe("datawindow.syntax"))
ls_newresult = dw_1.describe("DataWindow.Objects")
ls_oldresult = wf_selectresult("get.Objects(static)",ls_newresult)
wf_output("describe.objects(static)",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Objects")')

//processing
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Processing")
ls_oldresult = wf_selectresult("get.Processing",ls_newresult)
wf_output("describe.processing",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Processing")')

//querymode
wf_reset()
ls_newresult = dw_1.describe("DataWindow.QueryMode")
ls_oldresult = wf_selectresult("get.QueryMode",ls_newresult)
wf_output("describe.querymode",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.QueryMode")')

//querysort
wf_reset()
ls_newresult = dw_1.describe("DataWindow.QuerySort")
ls_oldresult = wf_selectresult("get.QuerySort",ls_newresult)
wf_output("describe.querysort",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.QuerySort")')

//readonly
wf_reset()
ls_newresult = dw_1.describe("DataWindow.ReadOnly")
ls_oldresult = wf_selectresult("get.ReadOnly",ls_newresult)
wf_output("describe.readonly",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.ReadOnly")')

//crosstabdata(dynamic(after retrieve))
wf_reset()
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("get.Crosstabdata(dynamic(after retrieve))",ls_newresult)
wf_output("describe.Crosstabdata(dynamic(after retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

//crosstabdata(dynamic(before retrieve))
dw_1.dataobject = "d_crosstab_dw"
dw_1.settransobject(sqlca)
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("get.Crosstabdata(synamic(before retrieve))",ls_newresult)
wf_output("describe.Crosstabdata(synamic(before retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

//crosstabdata(static(before retrieve))
dw_1.dataobject = "d_crosstab_dw_static"
dw_1.settransobject(sqlca)
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("get.Crosstabdata(static(before retrieve))",ls_newresult)
wf_output("describe.Crosstabdata(static(before retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

//crosstabdata(static(after retrieve))
dw_1.dataobject = "d_crosstab_dw_static"
dw_1.settransobject(sqlca)
dw_1.retrieve()
ls_newresult = dw_1.describe("DataWindow.Table.Crosstabdata")
ls_oldresult = wf_selectresult("get.Crosstabdata(static(after retrieve))",ls_newresult)
wf_output("describe.Crosstabdata(static(after retrieve))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Crosstabdata")')

//modifiedcount
wf_reset()
ls_newresult = string(dw_1.modifiedcount())
ls_oldresult = wf_selectresult("get.modifiedcount",ls_newresult)
wf_output("get.modifiedcount",ls_oldresult,ls_newresult,"dw_1.modifiedcount()")

//button default properties
wf_changedataobject("d_crosstab_button_dw")
ls_newresult = dw_1.describe("b_1.DefaultPicture")
ls_oldresult = wf_selectresult("get.defaultpicture",ls_newresult)
wf_output("get.defaultpicture",ls_oldresult,ls_newresult,'dw_1.describe("b_1.DefaultPicture")')

dw_1.Modify("b_1.DefaultPicture = 'yes'")
ls_newresult = dw_1.describe("b_1.DefaultPicture")
ls_oldresult = wf_selectresult("get.defaultpicture(modify)",ls_newresult)
wf_output("get.defaultpicture(modify)",ls_oldresult,ls_newresult,'dw_1.describe("b_1.DefaultPicture")')

////table.columns
//wf_reset()
//ls_newresult = dw_1.describe("DataWindow.table.columns")
//ls_oldresult = wf_selectresult("get.table.columns",ls_newresult)
//wf_output("describe.table.columns",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.table.columns")')
//
////table.columns special
//wf_reset()
//dw_1.modify("DataWindow.Crosstab.StaticMode = yes")
//ls_newresult = dw_1.describe("DataWindow.table.columns")
//ls_oldresult = wf_selectresult("get.table.columns(dynamic(staticmode = yes))",ls_newresult)
//wf_output("describe.table.columns",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.table.columns")')
//
//dw_1.modify("DataWindow.Crosstab.StaticMode = no")
//ls_newresult = dw_1.describe("DataWindow.table.columns")
//ls_oldresult = wf_selectresult("get.table.columns(dynamic(staticmode = no))",ls_newresult)
//wf_output("describe.table.columns",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.table.columns")')
//
//dw_1.dataobject = "d_crosstab_dw_static"
//dw_1.settransobject(sqlca)
//dw_1.retrieve()
//ls_newresult = dw_1.describe("DataWindow.table.columns")
//ls_oldresult = wf_selectresult("get.table.columns(static)",ls_newresult)
//wf_output("describe.table.columns",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.table.columns")')
//











end subroutine

public subroutine wf_expression (string as_testitem, boolean ab_save);string ls_newresult,ls_oldresult
dw_1.dataobject = "d_crosstab_dw_expression"
dw_1.settransobject(sqlca)
dw_1.retrieve()
//CrosstabAvg
ls_newresult = string(dw_1.getitemnumber(1,"compute_crosstabavg_1"))
ls_oldresult = wf_selectresult("compute_crosstabavg_1(1)",ls_newresult)
wf_output("describe.columns",ls_oldresult,ls_newresult,'ls_newresult = dw_1.getitemnumber(1,"compute_crosstabavg_1")')
//CrosstabCount
ls_newresult = string(dw_1.getitemnumber(1,"compute_crosstabcount_1"))
ls_oldresult = wf_selectresult("compute_crosstabcount(1)",ls_newresult)
wf_output("describe.columns",ls_oldresult,ls_newresult,'ls_newresult = dw_1.getitemnumber(1,"compute_crosstabcount_1")')
//CorsstabMax
ls_newresult = string(dw_1.getitemnumber(1,"compute_crosstabmax_1"))
ls_oldresult = wf_selectresult("compute_crosstabmax_1(1)",ls_newresult)
wf_output("describe.columns",ls_oldresult,ls_newresult,'ls_newresult = dw_1.getitemnumber(1,"compute_crosstabmax_1")')
//CrosstabMin
ls_newresult = string(dw_1.getitemnumber(1,"compute_crosstabmin_1"))
ls_oldresult = wf_selectresult("compute_crosstabmin_1(1)",ls_newresult)
wf_output("describe.columns",ls_oldresult,ls_newresult,'ls_newresult = dw_1.getitemnumber(1,"compute_crosstabmin_1")')
//CrosstabSum
ls_newresult = string(dw_1.getitemnumber(1,"compute_crosstabsum_1"))
ls_oldresult = wf_selectresult("compute_crosstabsum_1(1)",ls_newresult)
wf_output("describe.columns",ls_oldresult,ls_newresult,'ls_newresult = dw_1.getitemnumber(1,"compute_crosstabsum_1")')

//max
ls_newresult = string(dw_1.getitemnumber(1,"compute_max"))
ls_oldresult = wf_selectresult("compute_max",ls_newresult)
wf_output("describe.columns",ls_oldresult,ls_newresult,'ls_newresult = dw_1.getitemnumber(1,"compute_max")')

end subroutine

public subroutine wf_function (string as_testitem, boolean ab_save);string ls_newresult,ls_oldresult

wf_reset()
//SetTabOrder
ls_newresult = string(dw_1.SetTabOrder(4, 0))
ls_oldresult = wf_selectresult("SetTabOrder",ls_newresult)
wf_output("SetTabOrder",ls_oldresult,ls_newresult,'dw_1.SetTabOrder(4, 0)')

//ShareData
wf_reset()
datastore lds
lds = create datastore
lds.dataobject = "d_crosstab_dw_bak"
ls_newresult = string(dw_1.sharedata(lds))
ls_oldresult = wf_selectresult("ShareData",ls_newresult)
wf_output("ShareData",ls_oldresult,ls_newresult,'dw_1.sharedata(lds)')

//RowCount
wf_reset()
ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("rowcount",ls_newresult)
wf_output("rowcount",ls_oldresult,ls_newresult,'dw_1.rowrount()')

//SetFilter,Filter
wf_reset()
ls_newresult = string(dw_1.setfilter("depart <> 'BB'"))
ls_oldresult = wf_selectresult("setfilter(depart <> 'BB)",ls_newresult)
wf_output("setfilter(depart <> 'BB)",ls_oldresult,ls_newresult,'dw_1.setfilter("depart <> ~'BB~")')

ls_newresult = string(dw_1.filter())
ls_oldresult = wf_selectresult("filter",ls_newresult)
wf_output("filter",ls_oldresult,ls_newresult,'dw_1.filter()')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("filter(rowcount)",ls_newresult)
wf_output("filter(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

ls_newresult = string(dw_1.FilteredCount())
ls_oldresult = wf_selectresult("FilteredCount",ls_newresult)
wf_output("FilteredCount",ls_oldresult,ls_newresult,'dw_1.FilteredCount()')

//SetSort, Sort
wf_reset()
ls_newresult = string(dw_1.setsort("depart d,name d"))
ls_oldresult = wf_selectresult("setsort(depart d,name d)",ls_newresult)
wf_output("setsort(depart d,name d)",ls_oldresult,ls_newresult,'dw_1.setsort("depart d, name d")')

ls_newresult = string(dw_1.sort())
ls_oldresult = wf_selectresult("sort",ls_newresult)
wf_output("sort",ls_oldresult,ls_newresult,'dw_1.sort()')

ls_newresult = dw_1.getitemstring(1,"name")
ls_oldresult = wf_selectresult("sort(name)",ls_newresult)
wf_output("sort(name)",ls_oldresult,ls_newresult,'dw_1.getitemstring(1,"name")')

//SetFormat
wf_reset()
ls_newresult = string(dw_1.setformat("name","$#,##0.00"))
ls_oldresult = wf_selectresult("setformat",ls_newresult)
wf_output("setformat",ls_oldresult,ls_newresult,'dw_1.setformat("name","$#,##0.00")')

ls_newresult = dw_1.getitemstring(1,"name")
ls_oldresult = wf_selectresult("setformat(name)",ls_newresult)
wf_output("setformat(name)",ls_oldresult,ls_newresult,'dw_1.getitemstring(1,"name")')

//SetItem
wf_reset()
ls_newresult = string(dw_1.setitem(1,3,5000))
ls_oldresult = wf_selectresult("setitem",ls_newresult)
wf_output("setitem",ls_oldresult,ls_newresult,'dw_1.setitem(1,3,5000)')

ls_newresult = string(dw_1.getitemnumber(1,3))
ls_oldresult = wf_selectresult("setitem(result)",ls_newresult)
wf_output("setitem(result)",ls_oldresult,ls_newresult,'dw_1.setitem(1,3,5000)')

//ImportString
wf_reset()
ls_newresult = string(dw_1.importstring("aaa"))
ls_oldresult = wf_selectresult("importstring",ls_newresult)
wf_output("importstring",ls_oldresult,ls_newresult,'dw_1.importsting("aaa")')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("importstring(rowcount)",ls_newresult)
wf_output("importstring(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

//ImportFile
//ImportClipboard
wf_reset()
Clipboard("aaa")
ls_newresult = string(dw_1.ImportClipboard())
ls_oldresult = wf_selectresult("ImportClipboard",ls_newresult)
wf_output("ImportClipboard",ls_oldresult,ls_newresult,'dw_1.ImportClipboard()')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("ImportClipboard(rowcount)",ls_newresult)
wf_output("ImportClipboard(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

//InsertRow
wf_reset()
ls_newresult = string(dw_1.insertrow(0))
ls_oldresult = wf_selectresult("insertrow",ls_newresult)
wf_output("insertrow",ls_oldresult,ls_newresult,'dw_1.insertrow')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("insertrow(rowcount)",ls_newresult)
wf_output("insertrow(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

//DeleteRow
wf_reset()
ls_newresult = string(dw_1.deleterow(0))
ls_oldresult = wf_selectresult("deleterow",ls_newresult)
wf_output("deleterow",ls_oldresult,ls_newresult,'dw_1.deleterow(0)')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("deleterow(rowcount)",ls_newresult)
wf_output("deleterow(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

ls_newresult = string(dw_1.deletedcount())
ls_oldresult = wf_selectresult("deleterow(deletedcount)",ls_newresult)
wf_output("deleterow(deletedcount)",ls_oldresult,ls_newresult,'dw_1.deletedcount()')

//RowsCopy
wf_reset()
ls_newresult = string(dw_1.rowscopy(1,dw_1.rowcount(),primary!,dw_1,1,primary!))
ls_oldresult = wf_selectresult("rowscopy",ls_newresult)
wf_output("rowscopy",ls_oldresult,ls_newresult,'dw_1.rowscopy')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("rowscopy(rowcount)",ls_newresult)
wf_output("rowscopy(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

//RowsDiscard
wf_reset()
ls_newresult = string(dw_1.rowsdiscard(1,dw_1.rowcount(),primary!))
ls_oldresult = wf_selectresult("rowsdiscard",ls_newresult)
wf_output("rowsdiscard",ls_oldresult,ls_newresult,'dw_1.rowsdiscard')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("rowsdiscard(rowcount)",ls_newresult)
wf_output("rowsdiscard(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

//RowsMove
wf_reset()
ls_newresult = string(dw_1.RowsMove(1,dw_1.rowcount(),primary!,dw_1,1,primary!))
ls_oldresult = wf_selectresult("RowsMove",ls_newresult)
wf_output("RowsMove",ls_oldresult,ls_newresult,'dw_1.RowsMove')

ls_newresult = string(dw_1.rowcount())
ls_oldresult = wf_selectresult("RowsMove(rowcount)",ls_newresult)
wf_output("RowsMove(rowcount)",ls_oldresult,ls_newresult,'dw_1.rowcount()')

//SelectRow
wf_reset()
ls_newresult = string(dw_1.SelectRow(1,true))
ls_oldresult = wf_selectresult("SelectRow",ls_newresult)
wf_output("SelectRow",ls_oldresult,ls_newresult,'dw_1.SelectRow')

////ReselectRow
//wf_reset()
//ls_newresult = string(dw_1.ReselectRow(1))
//ls_oldresult = wf_selectresult("ReselectRow",ls_newresult)
//wf_output("ReselectRow",ls_oldresult,ls_newresult,'dw_1.ReselectRow')

//SetRow
wf_reset()
ls_newresult = string(dw_1.SetRow(1))
ls_oldresult = wf_selectresult("SetRow",ls_newresult)
wf_output("SetRow",ls_oldresult,ls_newresult,'dw_1.SetRow')

//SetText
wf_reset()
ls_newresult = string(dw_1.SetText("aaa"))
ls_oldresult = wf_selectresult("SetText",ls_newresult)
wf_output("SetText",ls_oldresult,ls_newresult,'dw_1.SetText')

//SetValue
wf_reset()
ls_newresult = string(dw_1.SetValue("name",1,"aaa"))
ls_oldresult = wf_selectresult("SetValue",ls_newresult)
wf_output("SetValue",ls_oldresult,ls_newresult,'dw_1.SetValue')

////ClearValues
//wf_reset()
//ls_newresult = string(dw_1.ClearValues("name"))
//ls_oldresult = wf_selectresult("ClearValues",ls_newresult)
//wf_output("ClearValues",ls_oldresult,ls_newresult,'dw_1.ClearValues')
//
//SetValidate
wf_reset()
ls_newresult = string(dw_1.SetValidate(dw_1.GetColumn(),"Number(GetText( )) > 0"))
ls_oldresult = wf_selectresult("SetValidate",ls_newresult)
wf_output("SetValidate",ls_oldresult,ls_newresult,'dw_1.SetValidate')

//SetColumn
wf_reset()
ls_newresult = string(dw_1.SetColumn(1))
ls_oldresult = wf_selectresult("SetColumn",ls_newresult)
wf_output("SetColumn",ls_oldresult,ls_newresult,'dw_1.SetColumn')

//ModifiedCount
wf_reset()
dw_1.setitem(1,"salary",20000)
ls_newresult = string(dw_1.modifiedcount())
ls_oldresult = wf_selectresult("ModifiedCount",ls_newresult)
wf_output("ModifiedCount",ls_oldresult,ls_newresult,"dw_1.modifiedcount()")

//update
//timer(1)
wf_reset()
ls_newresult = string(dw_1.update())
ls_oldresult = wf_selectresult("update",ls_newresult)
wf_output("update",ls_oldresult,ls_newresult,"dw_1.update()")












end subroutine

public subroutine wf_event (string as_testitem, boolean ab_save);string ls_newresult,ls_oldresult

dw_1.dataobject = "d_crosstab_dw_event"
dw_1.settransobject(sqlca)
is_getmessagetext = ""
dw_1.retrieve()
ls_newresult = is_getmessagetext
ls_oldresult = wf_selectresult("getmessagetext",ls_newresult)
wf_output("getmessagetext",ls_oldresult,ls_newresult,'getmessagetext')

dw_1.dataobject = "d_crosstab_dw_event_static"
dw_1.settransobject(sqlca)
is_getmessagetext = ""
dw_1.retrieve()
ls_newresult = is_getmessagetext
ls_oldresult = wf_selectresult("getmessagetext(static)",ls_newresult)
wf_output("getmessagetext(static)",ls_oldresult,ls_newresult,'getmessagetext(static)')

//is_getmessagetext = ""
//dw_1.modify("DataWindow.Crosstab.Rows = 'depart'")
//ls_newresult = is_getmessagetext
//ls_oldresult = wf_selectresult("reading data",ls_newresult)
//wf_output("reading data",ls_oldresult,ls_newresult,'reading data')
end subroutine

public subroutine wf_special (string as_testitem, boolean ab_save);string ls_newresult,ls_oldresult
//Crosstab.StaticMode 
wf_reset()
dw_1.modify("DataWindow.Crosstab.StaticMode = yes")
ls_newresult = dw_1.describe("DataWindow.Column.Count")
ls_oldresult = wf_selectresult("get.Column.Count(dynamic(staticmode = yes))",ls_newresult)
wf_output("describe.columns(dynamic(staticmode = yes))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Column.Count")')

dw_1.modify("DataWindow.Crosstab.StaticMode = no")
ls_newresult = dw_1.describe("DataWindow.Column.Count")
ls_oldresult = wf_selectresult("get.Column.Count(dynamic(staticmode = no))",ls_newresult)
wf_output("describe.columns(dynamic(staticmode = no))",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Column.Count")')

dw_1.dataobject = "d_crosstab_dw_static"
dw_1.settransobject(sqlca)
dw_1.retrieve()
ls_newresult = dw_1.describe("DataWindow.Column.Count")
ls_oldresult = wf_selectresult("get.Column.Count(staict)",ls_newresult)
wf_output("describe.columns(staict)",ls_oldresult,ls_newresult,'dw_1.describe("DataWindow.Column.Count")')

end subroutine

public subroutine wf_changedataobject (string as_dataobject);dw_1.dataobject = as_dataobject
dw_1.settransobject(sqlca)
dw_1.retrieve()
end subroutine

public subroutine wf_status (string as_testitem, boolean ab_save);string ls_newresult,ls_oldresult
//row status
wf_reset()
ls_newresult = string(dw_1.modifiedcount())
ls_oldresult = wf_selectresult("status(after retrieve)",ls_newresult)
wf_output("status(after retrieve)",ls_oldresult,ls_newresult,'dw_1.modifiedcount()')

wf_reset()
dw_1.setitem(1,"salary",2000)
ls_newresult = string(dw_1.modifiedcount())
ls_oldresult = wf_selectresult("status(after setitem)",ls_newresult)
wf_output("status(after setitem)",ls_oldresult,ls_newresult,'dw_1.modifiedcount()')
dw_1.update()
ls_newresult = string(dw_1.modifiedcount())
ls_oldresult = wf_selectresult("status(after update)",ls_newresult)
wf_output("status(after update)",ls_oldresult,ls_newresult,'dw_1.modifiedcount()')
end subroutine

on w_crosstabdw.create
this.dw_result=create dw_result
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
this.Control[]={this.dw_result,&
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

on w_crosstabdw.destroy
destroy(this.dw_result)
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

//different between pb8 and pb9
int li_row
dw_result.settransobject(sqlca)
dw_result.retrieve()
li_row = dw_result.find("testitem = 'importstring'",1,dw_result.rowcount())
dw_result.setitem(li_row,"result","-13")
li_row = dw_result.find("testitem = 'ImportClipboard'",1,dw_result.rowcount())
dw_result.setitem(li_row,"result","-13")
dw_result.update()

end event

event timer;string ls_string[] ={	"Save PDF File As",&
								"Specify Filter",&
								"Specify Sort Columns",&
								"DataWindow",&
								"Appeon Web Library",&
								"DataWindow Error",&
								"Alert"}

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

type dw_result from datawindow within w_crosstabdw
boolean visible = false
integer x = 485
integer y = 2632
integer width = 686
integer height = 400
integer taborder = 90
string title = "none"
string dataobject = "d_grid_crosstab_result"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_crosstabdw
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

ls_mysql = 'truncate table crosstab_result'
li_ret = Messagebox('Delete','Are you want to delete all data in table crosstab_result',Question!,OKCancel!,2)

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

type dw_defaultproperty_result from datawindow within w_crosstabdw
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

type dw_bak from datawindow within w_crosstabdw
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

type cbx_showright from checkbox within w_crosstabdw
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

type cb_2 from commandbutton within w_crosstabdw
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

type cb_run from commandbutton within w_crosstabdw
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

type st_message from statictext within w_crosstabdw
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

type lb_testitems from listbox within w_crosstabdw
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
borderstyle borderstyle = stylelowered!
end type

event constructor;int i = 1

this.additem(string(i,"00")+" Crosstab GetProperty")
i += 1
this.additem(string(i,"00")+" Crosstab SetProperty")
i += 1
this.additem(string(i,"00")+" Crosstab Expression")
i += 1
this.additem(string(i,"00")+" Crosstab Function")
i += 1
this.additem(string(i,"00")+" Crosstab Event")
i += 1
this.additem(string(i,"00")+" Crosstab Special")
i += 1
this.additem(string(i,"00")+" Crosstab status")
i += 1
//this.additem(string(i,"00")+" Graph dispattr")
//i += 1
//this.additem(string(i,"00")+" Graph labeldispattr")
//i += 1
//this.additem(string(i,"00")+" Graph font")
//i += 1
//this.additem(string(i,"00")+" Graph graph")
//i += 1
//
end event

event doubleclicked;//string ls_Item
//ls_Item = lb_testitems.text(index)
//ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
//wf_script(ls_Item)
cb_run.TriggerEvent(clicked!)
end event

type cb_autorun from commandbutton within w_crosstabdw
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
	ls_Item = lb_testitems.text(li_ItemCount)	
	ii_errornumber = 0
	ii_rightnumber = 0
	li_rowcount = dw_output.rowcount()
	wf_message(ls_Item,"CrosstabDW")
	wf_script(lower(trim(mid(ls_item,pos(ls_item,"Crosstab") + 8))),ib_save)
	f_outputtext(dw_output,ls_message)	
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,primary!)
	end if
Next
end event

type cb_10 from commandbutton within w_crosstabdw
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

type cb_3 from commandbutton within w_crosstabdw
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

type cbx_right from checkbox within w_crosstabdw
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

type cb_max from commandbutton within w_crosstabdw
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

type cb_save from commandbutton within w_crosstabdw
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

type cb_sort from commandbutton within w_crosstabdw
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

type cb_reset from commandbutton within w_crosstabdw
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

type dw_1 from datawindow within w_crosstabdw
event ue_getmessagetext pbm_dwnmessagetext
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

event ue_getmessagetext;is_getmessagetext += text//dw_1.GetMessageText()
end event

event constructor;settransobject(sqlca)
retrieve()
end event

event retrievestart;//return ii_retrievestart
end event

event clicked;messagebox(string(row),string(dwo.name))

end event

type dw_output from datawindow within w_crosstabdw
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

type gb_4 from groupbox within w_crosstabdw
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

type gb_1 from groupbox within w_crosstabdw
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

type gb_2 from groupbox within w_crosstabdw
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

type gb_3 from groupbox within w_crosstabdw
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

type lb_1 from listbox within w_crosstabdw
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

