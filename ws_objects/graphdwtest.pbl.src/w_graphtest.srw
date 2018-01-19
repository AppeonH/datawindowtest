$PBExportHeader$w_graphtest.srw
forward
global type w_graphtest from window
end type
type cb_1 from commandbutton within w_graphtest
end type
type dw_defaultproperty_result from datawindow within w_graphtest
end type
type dw_bak from datawindow within w_graphtest
end type
type cbx_showright from checkbox within w_graphtest
end type
type cb_2 from commandbutton within w_graphtest
end type
type cb_run from commandbutton within w_graphtest
end type
type st_message from statictext within w_graphtest
end type
type lb_testitems from listbox within w_graphtest
end type
type cb_autorun from commandbutton within w_graphtest
end type
type cb_10 from commandbutton within w_graphtest
end type
type cb_3 from commandbutton within w_graphtest
end type
type cbx_right from checkbox within w_graphtest
end type
type cb_max from commandbutton within w_graphtest
end type
type cb_save from commandbutton within w_graphtest
end type
type cb_sort from commandbutton within w_graphtest
end type
type cb_reset from commandbutton within w_graphtest
end type
type dw_1 from datawindow within w_graphtest
end type
type dw_output from datawindow within w_graphtest
end type
type gb_4 from groupbox within w_graphtest
end type
type gb_1 from groupbox within w_graphtest
end type
type gb_2 from groupbox within w_graphtest
end type
type gb_3 from groupbox within w_graphtest
end type
type lb_1 from listbox within w_graphtest
end type
end forward

global type w_graphtest from window
integer width = 5499
integer height = 4596
boolean titlebar = true
string title = "GraphDW Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
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
global w_graphtest w_graphtest

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
public subroutine wf_defaultproperty (boolean ab_save)
public subroutine wf_setproperty (string as_testitem, boolean ab_save)
public subroutine wf_getproperty (string as_testitem, boolean ab_save)
public function string wf_selectresult (string as_testitem, string as_result)
public subroutine wf_run ()
public subroutine wf_propertyoflabeldispattr (string as_testitem)
public subroutine wf_propertyofdispattr (string as_testitem)
public subroutine wf_propertytest (string as_testitem)
public subroutine wf_propertyofcategory ()
public subroutine wf_propertyofseries ()
public subroutine wf_propertyofvalues ()
public subroutine wf_propertyoftitle ()
public subroutine wf_propertyoflegend ()
public subroutine wf_propertyofpie ()
public subroutine wf_commonproperty (string as_testitem)
public subroutine wf_reset ()
public subroutine wf_function (string as_testitem, boolean ab_save)
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

integer li_ItemTotal, li_ItemCount

string ls_importstring, newsql, oldsql;
int li_currentrow,li_rowcount
any la_value, la_null
setnull(la_null)

choose case as_testitem
	case 'getproperty'
		wf_getproperty('defaultproperty',ab_save)
	case 'setproperty'
		wf_setproperty(as_testitem,ab_save)
	case 'function'
		wf_function(as_testitem,ab_save)
end choose
end subroutine

public subroutine wf_defaultproperty (boolean ab_save);any la_value
int li_row,li_row_db,i
string ls_value,ls_newresult,ls_oldresult,ls_property
ls_property = "backcolor~r~n&
band~r~n&
border~r~n&
category~r~n&
category.autoscale~r~n&
category.dispattr.alignment~r~n&
category.dispattr.autosize~r~n&
category.dispattr.backcolor~r~n&
category.dispattr.displayexpression~r~n&
category.dispattr.font.charset~r~n&
category.dispattr.font.escapement~r~n&
category.dispattr.font.face~r~n&
category.dispattr.font.family~r~n&
category.dispattr.font.height~r~n&
category.dispattr.font.italic~r~n&
category.dispattr.font.orientation~r~n&
category.dispattr.font.pitch~r~n&
category.dispattr.font.strikethrough~r~n&
category.dispattr.font.underline~r~n&
category.dispattr.font.weight~r~n&
category.dispattr.font.width~r~n&
category.dispattr.format~r~n&
category.dispattr.textcolor~r~n&
category.displayeverynlabels~r~n&
category.droplines~r~n&
category.frame~r~n&
category.label~r~n&
category.labeldispattr.alignment~r~n&
category.labeldispattr.autosize~r~n&
category.labeldispattr.backcolor~r~n&
category.labeldispattr.displayexpression~r~n&
category.labeldispattr.font.charset~r~n&
category.labeldispattr.font.escapement~r~n&
category.labeldispattr.font.face~r~n&
category.labeldispattr.font.family~r~n&
category.labeldispattr.font.height~r~n&
category.labeldispattr.font.italic~r~n&
category.labeldispattr.font.orientation~r~n&
category.labeldispattr.font.pitch~r~n&
category.labeldispattr.font.strikethrough~r~n&
category.labeldispattr.font.underline~r~n&
category.labeldispattr.font.weight~r~n&
category.labeldispattr.font.width~r~n&
category.labeldispattr.format~r~n&
category.labeldispattr.textcolor~r~n&
category.majordivisions~r~n&
category.majorgridline~r~n&
category.majortic~r~n&
category.maximumvalue~r~n&
category.maxvaldatetime~r~n&
category.minimumvalue~r~n&
category.minordivisions~r~n&
category.minorgridline~r~n&
category.minortic~r~n&
category.minvaldatetime~r~n&
category.originline~r~n&
category.primaryline~r~n&
category.roundto~r~n&
category.roundtounit~r~n&
category.scaletype~r~n&
category.scalevalue~r~n&
category.secondaryline~r~n&
category.shadebackedge~r~n&
category.sort~r~n&
color~r~n&
depth~r~n&
elevation~r~n&
graphtype~r~n&
height~r~n&
hidesnaked~r~n&
legend~r~n&
legend.dispattr.alignment~r~n&
legend.dispattr.autosize~r~n&
legend.dispattr.backcolor~r~n&
legend.dispattr.displayexpression~r~n&
legend.dispattr.font.charset~r~n&
legend.dispattr.font.escapement~r~n&
legend.dispattr.font.face~r~n&
legend.dispattr.font.family~r~n&
legend.dispattr.font.height~r~n&
legend.dispattr.font.italic~r~n&
legend.dispattr.font.orientation~r~n&
legend.dispattr.font.pitch~r~n&
legend.dispattr.font.strikethrough~r~n&
legend.dispattr.font.underline~r~n&
legend.dispattr.font.weight~r~n&
legend.dispattr.font.width~r~n&
legend.dispattr.format~r~n&
legend.dispattr.textcolor~r~n&
moveable~r~n&
name~r~n&
overlappercent~r~n&
perspective~r~n&
pie.dispattr.alignment~r~n&
pie.dispattr.autosize~r~n&
pie.dispattr.backcolor~r~n&
pie.dispattr.displayexpression~r~n&
pie.dispattr.font.charset~r~n&
pie.dispattr.font.escapement~r~n&
pie.dispattr.font.face~r~n&
pie.dispattr.font.family~r~n&
pie.dispattr.font.height~r~n&
pie.dispattr.font.italic~r~n&
pie.dispattr.font.orientation~r~n&
pie.dispattr.font.pitch~r~n&
pie.dispattr.font.strikethrough~r~n&
pie.dispattr.font.underline~r~n&
pie.dispattr.font.weight~r~n&
pie.dispattr.font.width~r~n&
pie.dispattr.format~r~n&
pie.dispattr.textcolor~r~n&
plotnulldata~r~n&
pointer~r~n&
range~r~n&
resizeable~r~n&
rotation~r~n&
series~r~n&
series.autoscale~r~n&
series.dispattr.alignment~r~n&
series.dispattr.autosize~r~n&
series.dispattr.backcolor~r~n&
series.dispattr.displayexpression~r~n&
series.dispattr.font.charset~r~n&
series.dispattr.font.escapement~r~n&
series.dispattr.font.face~r~n&
series.dispattr.font.family~r~n&
series.dispattr.font.height~r~n&
series.dispattr.font.italic~r~n&
series.dispattr.font.orientation~r~n&
series.dispattr.font.pitch~r~n&
series.dispattr.font.strikethrough~r~n&
series.dispattr.font.underline~r~n&
series.dispattr.font.weight~r~n&
series.dispattr.font.width~r~n&
series.dispattr.format~r~n&
series.dispattr.textcolor~r~n&
series.displayeverynlabels~r~n&
series.droplines~r~n&
series.frame~r~n&
series.label~r~n&
series.labeldispattr.alignment~r~n&
series.labeldispattr.autosize~r~n&
series.labeldispattr.backcolor~r~n&
series.labeldispattr.displayexpression~r~n&
series.labeldispattr.font.charset~r~n&
series.labeldispattr.font.escapement~r~n&
series.labeldispattr.font.face~r~n&
series.labeldispattr.font.family~r~n&
series.labeldispattr.font.height~r~n&
series.labeldispattr.font.italic~r~n&
series.labeldispattr.font.orientation~r~n&
series.labeldispattr.font.pitch~r~n&
series.labeldispattr.font.strikethrough~r~n&
series.labeldispattr.font.underline~r~n&
series.labeldispattr.font.weight~r~n&
series.labeldispattr.font.width~r~n&
series.labeldispattr.format~r~n&
series.labeldispattr.textcolor~r~n&
series.majordivisions~r~n&
series.majorgridline~r~n&
series.majortic~r~n&
series.maximumvalue~r~n&
series.maxvaldatetime~r~n&
series.minimumvalue~r~n&
series.minordivisions~r~n&
series.minorgridline~r~n&
series.minortic~r~n&
series.minvaldatetime~r~n&
series.originline~r~n&
series.primaryline~r~n&
series.roundto~r~n&
series.roundtounit~r~n&
series.scaletype~r~n&
series.scalevalue~r~n&
series.secondaryline~r~n&
series.shadebackedge~r~n&
series.sort~r~n&
shadecolor~r~n&
sizetodisplay~r~n&
slideleft~r~n&
slideup~r~n&
spacing~r~n&
tag~r~n&
title~r~n&
title.dispattr.alignment~r~n&
title.dispattr.autosize~r~n&
title.dispattr.backcolor~r~n&
title.dispattr.displayexpression~r~n&
title.dispattr.font.charset~r~n&
title.dispattr.font.escapement~r~n&
title.dispattr.font.face~r~n&
title.dispattr.font.family~r~n&
title.dispattr.font.height~r~n&
title.dispattr.font.italic~r~n&
title.dispattr.font.orientation~r~n&
title.dispattr.font.pitch~r~n&
title.dispattr.font.strikethrough~r~n&
title.dispattr.font.underline~r~n&
title.dispattr.font.weight~r~n&
title.dispattr.font.width~r~n&
title.dispattr.format~r~n&
title.dispattr.textcolor~r~n&
type~r~n&
values~r~n&
values.autoscale~r~n&
values.dispattr.alignment~r~n&
values.dispattr.autosize~r~n&
values.dispattr.backcolor~r~n&
values.dispattr.displayexpression~r~n&
values.dispattr.font.charset~r~n&
values.dispattr.font.escapement~r~n&
values.dispattr.font.face~r~n&
values.dispattr.font.family~r~n&
values.dispattr.font.height~r~n&
values.dispattr.font.italic~r~n&
values.dispattr.font.orientation~r~n&
values.dispattr.font.pitch~r~n&
values.dispattr.font.strikethrough~r~n&
values.dispattr.font.underline~r~n&
values.dispattr.font.weight~r~n&
values.dispattr.font.width~r~n&
values.dispattr.format~r~n&
values.dispattr.textcolor~r~n&
values.displayeverynlabels~r~n&
values.droplines~r~n&
values.frame~r~n&
values.label~r~n&
values.labeldispattr.alignment~r~n&
values.labeldispattr.autosize~r~n&
values.labeldispattr.backcolor~r~n&
values.labeldispattr.displayexpression~r~n&
values.labeldispattr.font.charset~r~n&
values.labeldispattr.font.escapement~r~n&
values.labeldispattr.font.face~r~n&
values.labeldispattr.font.family~r~n&
values.labeldispattr.font.height~r~n&
values.labeldispattr.font.italic~r~n&
values.labeldispattr.font.orientation~r~n&
values.labeldispattr.font.pitch~r~n&
values.labeldispattr.font.strikethrough~r~n&
values.labeldispattr.font.underline~r~n&
values.labeldispattr.font.weight~r~n&
values.labeldispattr.font.width~r~n&
values.labeldispattr.format~r~n&
values.labeldispattr.textcolor~r~n&
values.majordivisions~r~n&
values.majorgridline~r~n&
values.majortic~r~n&
values.maximumvalue~r~n&
values.maxvaldatetime~r~n&
values.minimumvalue~r~n&
values.minordivisions~r~n&
values.minorgridline~r~n&
values.minortic~r~n&
values.minvaldatetime~r~n&
values.originline~r~n&
values.primaryline~r~n&
values.roundto~r~n&
values.roundtounit~r~n&
values.scaletype~r~n&
values.scalevalue~r~n&
values.secondaryline~r~n&
values.shadebackedge~r~n&
visible~r~n&
width~r~n&
x~r~n&
y"
datastore lds_property
lds_property = create datastore
lds_property.dataobject = 'd_exter_graph_property'
lds_property.settransobject(sqlca)
lds_property.importstring(ls_property)

dw_1.dataobject = 'd_graph_defaultproperty'
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_defaultproperty_result.settransobject(sqlca)
dw_defaultproperty_result.retrieve()
li_row = lds_property.rowcount()
li_row_db = dw_defaultproperty_result.rowcount()

if ab_save then 
	for i = 1 to li_row
		ls_value = lds_property.getitemstring(i,'name_property')	
		dw_1.describe("gr_1." + ls_value)
		ls_newresult = dw_1.describe("gr_1." + ls_value)
		int li_rowcount
		li_rowcount = dw_defaultproperty_result.rowcount()
		if li_rowcount = 0 then li_rowcount = 1
		if dw_defaultproperty_result.find("name_property = '" + ls_value + "'",1,li_rowcount) = 0 then
			dw_defaultproperty_result.insertrow(0)
			dw_defaultproperty_result.setitem(i,'name_property',ls_value)
			dw_defaultproperty_result.setitem(i,'value_property',ls_newresult)
			dw_defaultproperty_result.setitem(i,'id',i)
		end if
	next
	dw_defaultproperty_result.update()
else
	for i = 1 to li_row_db
		ls_value = dw_defaultproperty_result.getitemstring(i,'name_property')	
		ls_oldresult = dw_defaultproperty_result.getitemstring(i,'value_property')
		ls_newresult = dw_1.describe("gr_1." + ls_value)
		wf_output('Default Property',ls_oldresult,ls_newresult,'dw_1.describe("gr_1."' + ls_value + ')')
	next
end if



























end subroutine

public subroutine wf_setproperty (string as_testitem, boolean ab_save);////graph general property
//wf_propertytest('backcolor')
//wf_propertytest('band')
//wf_propertytest('border')
//wf_propertytest('color')
//wf_propertytest('depth')
//wf_propertytest('elevation')
//wf_propertytest('graphtype')
//wf_propertytest('height')
//wf_propertytest('hidesnaked')
//wf_propertytest('moveable')
//wf_propertytest('name')
//wf_propertytest('overlappercent')
//wf_propertytest('perspective')
//wf_propertytest('plotnulldata')
//wf_propertytest('pointer')
//wf_propertytest('range')
//wf_propertytest('resizeable')
//wf_propertytest('rotation')
//wf_propertytest('shadecolor')
//wf_propertytest('sizetodisplay')
//wf_propertytest('slideleft')
//wf_propertytest('slideup')
//wf_propertytest('spacing')
//wf_propertytest('tag')
//wf_propertytest('type')
//wf_propertytest('visible')
//wf_propertytest('width')
//wf_propertytest('x')
//wf_propertytest('y')
//
wf_propertyofvalues()
wf_propertyofcategory()
wf_propertyofseries()
wf_propertyofpie()
wf_propertyoftitle()
wf_propertyoflegend()

end subroutine

public subroutine wf_getproperty (string as_testitem, boolean ab_save);any la_value
int li_row,i
string ls_value,ls_newresult,ls_oldresult

if as_testitem = 'defaultproperty' then 
	wf_defaultproperty(ab_save)
else
	
end if





























end subroutine

public function string wf_selectresult (string as_testitem, string as_result);string ls_value
SELECT graphtest.result
INTO :ls_value
FROM graphtest 
WHERE graphtest.testitem = :as_testitem;

if ib_save then
	if sqlca.sqlcode = 100 then 
		INSERT INTO graphtest (graphtest.testitem,graphtest.result)
		VALUES (:as_testitem,:as_result);
		if sqlca.sqlcode = 0 then
			COMMIT using sqlca;
			//messagebox("","Executed successed")
		else
			Rollback using sqlca;
			Messagebox("Insert Failed!",string(sqlca.sqlerrtext))
		end if
	else
		UPDATE graphtest
		SET graphtest.result = :as_result
		WHERE graphtest.testitem =:as_testitem;
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
wf_message(ls_Item,"GraphDW")
wf_script(trim(mid(ls_item,pos(ls_item,"Graph:") + 10)),ib_save)
if ii_errornumber = 0 and not(cbx_right.checked) then
	dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
end if

cb_3.TriggerEvent(clicked!)
cb_3.text = "All"
end subroutine

public subroutine wf_propertyoflabeldispattr (string as_testitem);string ls_newresult,ls_oldresult,ls_testitem

ls_testitem = as_testitem + '.labeldispattr.alignment'

dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')	

ls_testitem = as_testitem + '.labeldispattr.autosize'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

ls_testitem = as_testitem + '.labeldispattr.backcolor'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 10000')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(10000)',ls_newresult)
wf_output(ls_testitem + '(10000)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 10000")')	

ls_testitem = as_testitem + '.labeldispattr.displayexpression'
dw_1.modify("gr_1." + ls_testitem + ' = getrow()')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + 'getrow()',ls_newresult)
wf_output(ls_testitem + 'getrow()',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = getrow()")')

ls_testitem = as_testitem + '.labeldispattr.font.charset'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')

ls_testitem = as_testitem + '.labeldispattr.font.escapement'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 3600')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(3600)',ls_newresult)
wf_output(ls_testitem + '(3600)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 3600")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1110)',ls_newresult)
wf_output(ls_testitem + '(1110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1110")')

ls_testitem = as_testitem + '.labeldispattr.font.face'
dw_1.modify("gr_1." + ls_testitem + ' = SYSTEM')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(SYSTEM)',ls_newresult)
wf_output(ls_testitem + '(SYSTEM)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = SYSTEM")')	

dw_1.modify("gr_1." + ls_testitem + ' = COURIER')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(COURIER)',ls_newresult)
wf_output(ls_testitem + '(COURIER)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = COURIER")')

ls_testitem = as_testitem + '.labeldispattr.font.family'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')	

dw_1.modify("gr_1." + ls_testitem + ' = 3')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(3)',ls_newresult)
wf_output(ls_testitem + '(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 3")')	

dw_1.modify("gr_1." + ls_testitem + ' = 4')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(4)',ls_newresult)
wf_output(ls_testitem + '(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 4")')	

dw_1.modify("gr_1." + ls_testitem + ' = 5')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(5)',ls_newresult)
wf_output(ls_testitem + '(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 5")')

ls_testitem = as_testitem + '.labeldispattr.font.height'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = -0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(-0)',ls_newresult)
wf_output(ls_testitem + '(-0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = -0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 40')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(40)',ls_newresult)
wf_output(ls_testitem + '(40)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 40")')	

dw_1.modify("gr_1." + ls_testitem + ' = -40')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(-40)',ls_newresult)
wf_output(ls_testitem + '(-40)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = -40")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1110)',ls_newresult)
wf_output(ls_testitem + '(1110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1110")')

ls_testitem = as_testitem + '.labeldispattr.font.italic'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')

ls_testitem = as_testitem + '.labeldispattr.font.orientation'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')

ls_testitem = as_testitem + '.labeldispattr.font.pitch'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')

ls_testitem = as_testitem + '.labeldispattr.font.strikethrough'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')

ls_testitem = as_testitem + '.labeldispattr.font.underline'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')

ls_testitem = as_testitem + '.labeldispattr.font.weight'
dw_1.modify("gr_1." + ls_testitem + ' = 400')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(400)',ls_newresult)
wf_output(ls_testitem + '(400)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 400")')	

dw_1.modify("gr_1." + ls_testitem + ' = 700')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(700)',ls_newresult)
wf_output(ls_testitem + '(700)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 700")')

ls_testitem = as_testitem + '.labeldispattr.font.width'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(110)',ls_newresult)
wf_output(ls_testitem + '(110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 110")')	

dw_1.modify("gr_1." + ls_testitem + ' = 50')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(50)',ls_newresult)
wf_output(ls_testitem + '(50)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 50")')	

ls_testitem = as_testitem + '.labeldispattr.format'
dw_1.modify("gr_1." + ls_testitem + ' = [general]')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '([general])',ls_newresult)
wf_output(ls_testitem + '([general])',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = [general]")')

ls_testitem = as_testitem + '.labeldispattr.textcolor'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(110)',ls_newresult)
wf_output(ls_testitem + '(110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 110")')	

dw_1.modify("gr_1." + ls_testitem + ' = 5550')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(5550)',ls_newresult)
wf_output(ls_testitem + '(5550)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 5550")')
end subroutine

public subroutine wf_propertyofdispattr (string as_testitem);string ls_newresult,ls_oldresult,ls_testitem

//dispattr.alignment
ls_testitem = as_testitem + '.dispattr.alignment'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')		

//dispattr.autosize
ls_testitem = as_testitem + '.dispattr.autosize'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')		

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

//dispattr.backcolor
ls_testitem = as_testitem + '.dispattr.backcolor'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 10000')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(10000)',ls_newresult)
wf_output(ls_testitem + '(10000)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 10000")')	

//dispattr.dispalyexpression
ls_testitem = as_testitem + '.dispattr.displayexpression'
dw_1.modify("gr_1." + ls_testitem + ' = getrow()')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + 'getrow()',ls_newresult)
wf_output(ls_testitem + 'getrow()',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = getrow()")')	

//dispattr.font.charset
ls_testitem = as_testitem + '.dispattr.font.charset'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')	

//dispattr.font.escapement
ls_testitem = as_testitem + '.dispattr.font.escapement'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 3600')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(3600)',ls_newresult)
wf_output(ls_testitem + '(3600)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 3600")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1110)',ls_newresult)
wf_output(ls_testitem + '(1110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1110")')	

//dispattr.font.face
ls_testitem = as_testitem + '.dispattr.font.face'
dw_1.modify("gr_1." + ls_testitem + ' = SYSTEM')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(SYSTEM)',ls_newresult)
wf_output(ls_testitem + '(SYSTEM)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = SYSTEM")')	

dw_1.modify("gr_1." + ls_testitem + ' = COURIER')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(COURIER)',ls_newresult)
wf_output(ls_testitem + '(COURIER)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = COURIER")')	

//dispattr.font.family
ls_testitem = as_testitem + '.dispattr.font.family'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')	

dw_1.modify("gr_1." + ls_testitem + ' = 3')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(3)',ls_newresult)
wf_output(ls_testitem + '(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 3")')	

dw_1.modify("gr_1." + ls_testitem + ' = 4')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(4)',ls_newresult)
wf_output(ls_testitem + '(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 4")')	

dw_1.modify("gr_1." + ls_testitem + ' = 5')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(5)',ls_newresult)
wf_output(ls_testitem + '(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 5")')	

//dispattr.font.height
ls_testitem = as_testitem + '.dispattr.font.height'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = -0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(-0)',ls_newresult)
wf_output(ls_testitem + '(-0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = -0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 40')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(40)',ls_newresult)
wf_output(ls_testitem + '(40)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 40")')	

dw_1.modify("gr_1." + ls_testitem + ' = -40')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(-40)',ls_newresult)
wf_output(ls_testitem + '(-40)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = -40")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1110)',ls_newresult)
wf_output(ls_testitem + '(1110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1110")')	

//dispattr.font.italic
ls_testitem = as_testitem + '.dispattr.font.italic'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

//dispattr.font.orientation
ls_testitem = as_testitem + '.dispattr.font.orientation'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

//dispattr.font.pitch
ls_testitem = as_testitem + '.dispattr.font.pitch'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')	

//dispattr.font.strikethrough
ls_testitem = as_testitem + '.dispattr.font.strikethrough'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

//dispattr.font.underline
ls_testitem = as_testitem + '.dispattr.font.underline'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')

dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')	

//dispattr.font.weight
ls_testitem = as_testitem + '.dispattr.font.weight'
dw_1.modify("gr_1." + ls_testitem + ' = 400')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(400)',ls_newresult)
wf_output(ls_testitem + '(400)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 400")')	

dw_1.modify("gr_1." + ls_testitem + ' = 700')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(700)',ls_newresult)
wf_output(ls_testitem + '(700)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 700")')	

//dispattr.font.width
ls_testitem = as_testitem + '.dispattr.font.width'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(110)',ls_newresult)
wf_output(ls_testitem + '(110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 110")')	

dw_1.modify("gr_1." + ls_testitem + ' = 50')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(50)',ls_newresult)
wf_output(ls_testitem + '(50)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 50")')	

//dispattr.format
ls_testitem = as_testitem + '.dispattr.format'
dw_1.modify("gr_1." + ls_testitem + ' = [general]')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '([general])',ls_newresult)
wf_output(ls_testitem + '([general])',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = [general]")')	

//dispattr.textcolor
ls_testitem = as_testitem + '.dispattr.textcolor'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')	

dw_1.modify("gr_1." + ls_testitem + ' = 110')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(110)',ls_newresult)
wf_output(ls_testitem + '(110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 110")')	

dw_1.modify("gr_1." + ls_testitem + ' = 5550')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(5550)',ls_newresult)
wf_output(ls_testitem + '(5550)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 5550")')
end subroutine

public subroutine wf_propertytest (string as_testitem);int li_row, li_rowcount
string ls_newresult,ls_oldresult,ls_testitem

choose case as_testitem
	case 'backcolor'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1110)",ls_newresult)
		wf_output(as_testitem + " = 1110",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1110")')
//	case 'band'
	case 'border'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1)",ls_newresult)
		wf_output(as_testitem + " = 1",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 2")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(2)",ls_newresult)
		wf_output(as_testitem + " = 2",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 2")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 3")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(3)",ls_newresult)
		wf_output(as_testitem + " = 3",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 3")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 4")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(4)",ls_newresult)
		wf_output(as_testitem + " = 4",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 4")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 5")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(5)",ls_newresult)
		wf_output(as_testitem + " = 5",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 5")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 6")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(6)",ls_newresult)
		wf_output(as_testitem + " = 6",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 6")')
	case 'color'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1110)",ls_newresult)
		wf_output(as_testitem + " = 1110",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1110")')
	case 'depth'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 10")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(10)",ls_newresult)
		wf_output(as_testitem + " = 10",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 10")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 30")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(30)",ls_newresult)
		wf_output(as_testitem + " = 30",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 30")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(550)",ls_newresult)
		wf_output(as_testitem + " = 550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 550")')
	case 'elevation'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1110)",ls_newresult)
		wf_output(as_testitem + " = 1110",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1110")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
	case 'graphtype'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1)",ls_newresult)
		wf_output(as_testitem + " = 1",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 2")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(2)",ls_newresult)
		wf_output(as_testitem + " = ",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 2")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 3")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(3)",ls_newresult)
		wf_output(as_testitem + " = 3",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 3")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 4")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(4)",ls_newresult)
		wf_output(as_testitem + " = 4",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 4")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 5")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(5)",ls_newresult)
		wf_output(as_testitem + " = 5",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 5")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 6")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(6)",ls_newresult)
		wf_output(as_testitem + " = 6",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 6")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 7")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(7)",ls_newresult)
		wf_output(as_testitem + " = 7",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 7")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 8")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(8)",ls_newresult)
		wf_output(as_testitem + " = 8",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 8")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 9")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(9)",ls_newresult)
		wf_output(as_testitem + " = 9",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 9")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 10")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(10)",ls_newresult)
		wf_output(as_testitem + " = 10",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 10")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 11")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(11)",ls_newresult)
		wf_output(as_testitem + " = 11",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 11")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 12")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(12)",ls_newresult)
		wf_output(as_testitem + " = 12",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 12")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 13")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(13)",ls_newresult)
		wf_output(as_testitem + " = 13",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 13")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 14")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(14)",ls_newresult)
		wf_output(as_testitem + " = 14",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 14")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 15")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(15)",ls_newresult)
		wf_output(as_testitem + " = 15",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 15")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 16")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(16)",ls_newresult)
		wf_output(as_testitem + " = 16",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 16")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 17")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(17)",ls_newresult)
		wf_output(as_testitem + " = 17",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 17")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 18")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(18)",ls_newresult)
		wf_output(as_testitem + " = 18",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 18")')
	case 'height'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 5550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(5550)",ls_newresult)
		wf_output(as_testitem + " = 5550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 5550")')
	case 'hidesnaked'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = Yse")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(Yes)",ls_newresult)
		wf_output(as_testitem + " = Yes",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = Yes")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = No")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(No)",ls_newresult)
		wf_output(as_testitem + " = No",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = No")')
	case 'moveable'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1)",ls_newresult)
		wf_output(as_testitem + " = 1",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(110)",ls_newresult)
		wf_output(as_testitem + " = 110",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 110")')
//	case 'name'
	case 'overlappercent'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 100")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(100)",ls_newresult)
		wf_output(as_testitem + " = 100",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 100")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1110)",ls_newresult)
		wf_output(as_testitem + " = 1110",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1110")')
	case 'perspective'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 100")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(100)",ls_newresult)
		wf_output(as_testitem + " = 100",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 100")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1110)",ls_newresult)
		wf_output(as_testitem + " = 1110",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1110")')
	//case 'plotnulldata'
	case 'pointer'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = Arrow!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(Arrow!)",ls_newresult)
		wf_output(as_testitem + " = Arrow!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = Arrow!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = Cross!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(Cross!)",ls_newresult)
		wf_output(as_testitem + " = Cross!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = Cross!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = HourGlass!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(HourGlass!)",ls_newresult)
		wf_output(as_testitem + " = HourGlass!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = HourGlass!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = IBeam!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(IBeam!)",ls_newresult)
		wf_output(as_testitem + " = IBeam!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = IBeam!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = Icon!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(Icon!)",ls_newresult)
		wf_output(as_testitem + " = Icon!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = Icon!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = Size!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(Size!)",ls_newresult)
		wf_output(as_testitem + " = Size!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = Size!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = SizeNESW!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(SizeNESW!)",ls_newresult)
		wf_output(as_testitem + " = SizeNESW!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = SizeNESW!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = SizeNS!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(SizeNS!)",ls_newresult)
		wf_output(as_testitem + " = SizeNS!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = SizeNS!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = SizeNWSE!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(SizeNWSE!)",ls_newresult)
		wf_output(as_testitem + " = SizeNWSE!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = SizeNWSE!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = SizeWE!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(SizeWE!)",ls_newresult)
		wf_output(as_testitem + " = SizeWE!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = SizeWE!")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = UpArrow!")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(UpArrow!)",ls_newresult)
		wf_output(as_testitem + " = UpArrow!",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = UpArrow!")')		
//	case 'range'
	case 'resizeable'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 90")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(90)",ls_newresult)
		wf_output(as_testitem + " = 90",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 90")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = -90")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(-90)",ls_newresult)
		wf_output(as_testitem + " = -90",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = -90")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(550)",ls_newresult)
		wf_output(as_testitem + " = 550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 550")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = -550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(-550)",ls_newresult)
		wf_output(as_testitem + " = -550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = -550")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
	case 'rotation'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 90")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(90)",ls_newresult)
		wf_output(as_testitem + " = 90",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 90")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = -90")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(-90)",ls_newresult)
		wf_output(as_testitem + " = -90",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = -90")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(550)",ls_newresult)
		wf_output(as_testitem + " = 550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 550")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = -550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(-550)",ls_newresult)
		wf_output(as_testitem + " = -550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = -550")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
	case 'shadecolor'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 90")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(90)",ls_newresult)
		wf_output(as_testitem + " = 90",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 90")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = -90")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(-90)",ls_newresult)
		wf_output(as_testitem + " = -90",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = -90")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(550)",ls_newresult)
		wf_output(as_testitem + " = 550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 550")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = -550")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(-550)",ls_newresult)
		wf_output(as_testitem + " = -550",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = -550")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 50")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(50)",ls_newresult)
		wf_output(as_testitem + " = 50",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 50")')
	case 'sizetodisplay'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1)",ls_newresult)
		wf_output(as_testitem + " = 1",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1")')
	case 'slideleft'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = Yes ")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(Yes )",ls_newresult)
		wf_output(as_testitem + " = Yes ",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = Yes ")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = No")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(No)",ls_newresult)
		wf_output(as_testitem + " = No",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = No")')
	case 'slideup'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = No")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(No)",ls_newresult)
		wf_output(as_testitem + " = No",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = No")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = DirectlyAbove")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(DirectlyAbove)",ls_newresult)
		wf_output(as_testitem + " = DirectlyAbove",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = DirectlyAbove")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = AllAbove")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(AllAbove)",ls_newresult)
		wf_output(as_testitem + " = AllAbove",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = AllAbove")')
	case 'spacing'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 111")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(111)",ls_newresult)
		wf_output(as_testitem + " = 111",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 111")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 999")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(999)",ls_newresult)
		wf_output(as_testitem + " = 999",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 999")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 99999")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(99999)",ls_newresult)
		wf_output(as_testitem + " = 99999",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 99999")')
	case 'tag'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 99999")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(99999)",ls_newresult)
		wf_output(as_testitem + " = 99999",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 99999")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = string")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(string)",ls_newresult)
		wf_output(as_testitem + " = string",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = string")')
//	case 'type'
	case 'visible'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 1")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(1)",ls_newresult)
		wf_output(as_testitem + " = 1",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 1")')
	case 'width'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(110)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 110")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
	case 'x'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(110)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 110")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
	case 'y'
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 110")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(110)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 110")')
		
		wf_reset()
		dw_1.modify("gr_1." + as_testitem + " = 0")
		ls_newresult = dw_1.describe("gr_1." + as_testitem)
		ls_oldresult = wf_selectresult(as_testitem + "(0)",ls_newresult)
		wf_output(as_testitem + " = 0",ls_oldresult,ls_newresult,&
		'dw_1.modify("gr_1.' + as_testitem + ' = 0")')
end choose





end subroutine

public subroutine wf_propertyofcategory ();int li_row, li_rowcount
string ls_newresult,ls_oldresult,ls_testitem
   
wf_reset()
//Category
dw_1.modify("gr_1.Category = 'getrow()'")
ls_newresult = dw_1.describe("gr_1.Category")
ls_oldresult = wf_selectresult("Category = getrow()",ls_newresult)
wf_output("Category = getrow()",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.Category = getrow()")')

dw_1.modify("gr_1.Category = 'rep'")
ls_newresult = dw_1.describe("gr_1.Category")
ls_oldresult = wf_selectresult("Category = rep",ls_newresult)
wf_output("Category = rep",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.Category = rep")')

dw_1.modify("gr_1.Category = 'quarter'")
ls_newresult = dw_1.describe("gr_1.Category")
ls_oldresult = wf_selectresult("Category = quarter",ls_newresult)
wf_output("Category = quarter",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.Category = quarter")')

dw_1.modify("gr_1.Category = 'product'")
ls_newresult = dw_1.describe("gr_1.Category")
ls_oldresult = wf_selectresult("Category = product",ls_newresult)
wf_output("Category = product",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.Category = product")')

dw_1.modify("gr_1.Category = 'units'")
ls_newresult = dw_1.describe("gr_1.Category")
ls_oldresult = wf_selectresult("Category = units",ls_newresult)
wf_output("Category = units",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.Category = units")')

//Category.dispattr
wf_propertyofdispattr('Category')

//Category.labeldispattr
wf_propertyoflabeldispattr('Category')

//Category property
dw_1.dataobject = 'd_graph_defaultproperty'
dw_1.settransobject(sqlca)
dw_1.retrieve()
wf_commonproperty('Category')
end subroutine

public subroutine wf_propertyofseries ();int li_row, li_rowcount
string ls_newresult,ls_oldresult,ls_testitem
   
wf_reset()
//series
dw_1.modify("gr_1.series = 'getrow()'")
ls_newresult = dw_1.describe("gr_1.series")
ls_oldresult = wf_selectresult("series = getrow()",ls_newresult)
wf_output("series = getrow()",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.series = getrow()")')

dw_1.modify("gr_1.series = 'rep'")
ls_newresult = dw_1.describe("gr_1.series")
ls_oldresult = wf_selectresult("series = rep",ls_newresult)
wf_output("series = rep",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.series = rep")')

dw_1.modify("gr_1.series = 'quarter'")
ls_newresult = dw_1.describe("gr_1.series")
ls_oldresult = wf_selectresult("series = quarter",ls_newresult)
wf_output("series = quarter",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.series = quarter")')

dw_1.modify("gr_1.series = 'product'")
ls_newresult = dw_1.describe("gr_1.series")
ls_oldresult = wf_selectresult("series = product",ls_newresult)
wf_output("series = product",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.series = product")')

dw_1.modify("gr_1.series = 'units'")
ls_newresult = dw_1.describe("gr_1.series")
ls_oldresult = wf_selectresult("series = units",ls_newresult)
wf_output("series = units",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.series = units")')

//Category.dispattr
wf_propertyofdispattr('series')

//Category.labeldispattr
wf_propertyoflabeldispattr('series')

//Category property
dw_1.dataobject = 'd_graph_defaultproperty'
dw_1.settransobject(sqlca)
dw_1.retrieve()
wf_commonproperty('series')
end subroutine

public subroutine wf_propertyofvalues ();int li_row, li_rowcount
string ls_newresult,ls_oldresult,ls_testitem

wf_reset()
//values
dw_1.modify("gr_1.values = getrow()")
ls_newresult = dw_1.describe("gr_1.values")
ls_oldresult = wf_selectresult("values = getrow()",ls_newresult)
wf_output("values = getrow()",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.values = getrow()")')

//values.dispattr
wf_propertyofdispattr('values')

//values.labeldispattr
wf_propertyoflabeldispattr('values')

//common property
dw_1.dataobject = 'd_graph_defaultproperty'
dw_1.settransobject(sqlca)
dw_1.retrieve()
wf_commonproperty('values')





end subroutine

public subroutine wf_propertyoftitle ();//title.dispattr
wf_propertyofdispattr('title')
end subroutine

public subroutine wf_propertyoflegend ();string ls_newresult,ls_oldresult,ls_testitem

//legend
ls_testitem = 'legend'
dw_1.modify("gr_1." + ls_testitem + ' = 0')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(0)',ls_newresult)
wf_output(ls_testitem + '(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 0")')

ls_testitem = 'legend'
dw_1.modify("gr_1." + ls_testitem + ' = 1')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(1)',ls_newresult)
wf_output(ls_testitem + '(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 1")')

ls_testitem = 'legend'
dw_1.modify("gr_1." + ls_testitem + ' = 2')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(2)',ls_newresult)
wf_output(ls_testitem + '(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 2")')

ls_testitem = 'legend'
dw_1.modify("gr_1." + ls_testitem + ' = 3')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(3)',ls_newresult)
wf_output(ls_testitem + '(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 3")')

ls_testitem = 'legend'
dw_1.modify("gr_1." + ls_testitem + ' = 4')
ls_newresult = dw_1.describe('gr_1.' + ls_testitem)
ls_oldresult = wf_selectresult(ls_testitem + '(4)',ls_newresult)
wf_output(ls_testitem + '(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + ls_testitem + ' = 4")')

//legend.dispattr
wf_propertyofdispattr('legend')
end subroutine

public subroutine wf_propertyofpie ();//pie.dispattr
wf_propertyofdispattr('pie')
end subroutine

public subroutine wf_commonproperty (string as_testitem);string ls_newresult,ls_oldresult
//values.autoscale
wf_reset()
dw_1.modify("gr_1." + as_testitem + ".autoscale = 0")
ls_newresult = dw_1.describe("gr_1." + as_testitem + ".autoscale")
ls_oldresult = wf_selectresult(as_testitem + ".autoscale(0)",ls_newresult)
wf_output(as_testitem + ".autoscale = 0",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.autoscale = 0")')

dw_1.modify("gr_1." + as_testitem + ".autoscale = 1")
ls_newresult = dw_1.describe("gr_1." + as_testitem + ".autoscale")
ls_oldresult = wf_selectresult(as_testitem + ".autoscale(1)",ls_newresult)
wf_output(as_testitem + ".autoscale = 0",ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.autoscale = 1")')

//values.displayeverynlabels
wf_reset()
dw_1.modify("gr_1." + as_testitem + ".displayeverynlabels = 0")
ls_newresult = dw_1.describe("gr_1." + as_testitem + ".displayeverynlabels")
ls_oldresult = wf_selectresult(as_testitem + '.displayeverynlabels(0)',ls_newresult)
wf_output(as_testitem + '.displayeverynlabels(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.displayeverynlabels = 0")')

dw_1.modify("gr_1." + as_testitem + ".displayeverynlabels = 110")
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.displayeverynlabels')
ls_oldresult = wf_selectresult(as_testitem + '.displayeverynlabels(110)',ls_newresult)
wf_output(as_testitem + '.displayeverynlabels(110)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.displayeverynlabels = 110")')

//values.droplines
wf_reset()
dw_1.modify("gr_1." + as_testitem + ".droplines = 0")
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.droplines')
ls_oldresult = wf_selectresult(as_testitem + '.droplines(0)',ls_newresult)
wf_output(as_testitem + 'values.droplines(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.droplines = 0")')

dw_1.modify('gr_1.' + as_testitem + '.droplines = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.droplines')
ls_oldresult = wf_selectresult(as_testitem + '.droplines(1)',ls_newresult)
wf_output(as_testitem + 'values.droplines(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.droplines = 1")')

//values.frame
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.frame = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.frame')
ls_oldresult = wf_selectresult(as_testitem + '.frame(0)',ls_newresult)
wf_output(as_testitem + '.frame(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.frame = 0")')

dw_1.modify('gr_1.' + as_testitem + '.frame = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.frame')
ls_oldresult = wf_selectresult(as_testitem + '.frame(1)',ls_newresult)
wf_output(as_testitem + '.frame(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.frame = 1")')

dw_1.modify('gr_1.' + as_testitem + '.frame = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.frame')
ls_oldresult = wf_selectresult(as_testitem + '.frame(2)',ls_newresult)
wf_output(as_testitem + '.frame(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.frame = 2")')

dw_1.modify('gr_1.' + as_testitem + '.frame = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.frame')
ls_oldresult = wf_selectresult(as_testitem + '.frame(3)',ls_newresult)
wf_output(as_testitem + '.frame(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.frame = 3")')

dw_1.modify('gr_1.' + as_testitem + '.frame = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.frame')
ls_oldresult = wf_selectresult(as_testitem + '.frame(4)',ls_newresult)
wf_output(as_testitem + '.frame(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.frame = 4")')

dw_1.modify('gr_1.' + as_testitem + '.frame = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.frame')
ls_oldresult = wf_selectresult(as_testitem + '.frame(5)',ls_newresult)
wf_output(as_testitem + '.frame(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.frame = 5")')

//values.label
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.label = adf')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.label')
ls_oldresult = wf_selectresult(as_testitem + '.label(adf)',ls_newresult)
wf_output(as_testitem + '.frame(adf)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.label = adf")')

dw_1.modify('gr_1.' + as_testitem + '.label = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.label')
ls_oldresult = wf_selectresult(as_testitem + '.label(5)',ls_newresult)
wf_output(as_testitem + '.label(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.label = 5")')



//values.majordivisions
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.majordivisions = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majordivisions')
ls_oldresult = wf_selectresult(as_testitem + '.majordivisions(5)',ls_newresult)
wf_output(as_testitem + '.majordivisions(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majordivisions = 5")')

dw_1.modify('gr_1.' + as_testitem + '.majordivisions = 115')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majordivisions')
ls_oldresult = wf_selectresult(as_testitem + '.majordivisions(115)',ls_newresult)
wf_output(as_testitem + '.majordivisions(115)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majordivisions = 115")')

//values.majorgridline
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.majorgridline = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.majorgridline(0)',ls_newresult)
wf_output(as_testitem + '.majorgridline(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majorgridline = 0")')

dw_1.modify('gr_1.' + as_testitem + '.majorgridline = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.majorgridline(1)',ls_newresult)
wf_output(as_testitem + '.majorgridline(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majorgridline = 1")')

dw_1.modify('gr_1.' + as_testitem + '.majorgridline = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.majorgridline(2)',ls_newresult)
wf_output(as_testitem + '.majorgridline(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majorgridline = 2")')

dw_1.modify('gr_1.' + as_testitem + '.majorgridline = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.majorgridline(3)',ls_newresult)
wf_output(as_testitem + '.majorgridline(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majorgridline = 3")')

dw_1.modify('gr_1.' + as_testitem + '.majorgridline = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.majorgridline(4)',ls_newresult)
wf_output(as_testitem + '.majorgridline(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majorgridline = 4")')

dw_1.modify('gr_1.' + as_testitem + '.majorgridline = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.majorgridline(5)',ls_newresult)
wf_output(as_testitem + '.majorgridline(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majorgridline = 5")')

//values.majortic
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.majortic = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majortic')
ls_oldresult = wf_selectresult(as_testitem + '.majortic(1)',ls_newresult)
wf_output(as_testitem + '.majortic(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majortic = 1")')

dw_1.modify('gr_1.' + as_testitem + '.majortic = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majortic')
ls_oldresult = wf_selectresult(as_testitem + '.majortic(2)',ls_newresult)
wf_output(as_testitem + '.majortic(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majortic = 2")')

dw_1.modify('gr_1.' + as_testitem + '.majortic = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majortic')
ls_oldresult = wf_selectresult(as_testitem + '.majortic(3)',ls_newresult)
wf_output(as_testitem + '.majortic(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majortic = 3")')

dw_1.modify('gr_1.' + as_testitem + '.majortic = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.majortic')
ls_oldresult = wf_selectresult(as_testitem + '.majortic(4)',ls_newresult)
wf_output(as_testitem + '.majortic(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.majortic = 4")')

//values.maximumvalue
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.maximumvalue = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.maximumvalue')
ls_oldresult = wf_selectresult(as_testitem + '.maximumvalue(4)',ls_newresult)
wf_output(as_testitem + '.maximumvalue(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.maximumvalue = 4")')

dw_1.modify('gr_1.' + as_testitem + '.maximumvalue = 1114')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.maximumvalue')
ls_oldresult = wf_selectresult(as_testitem + '.maximumvalue(1114)',ls_newresult)
wf_output(as_testitem + '.maximumvalue(1114)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.maximumvalue = 11114")')

//values.minimumvalue
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.minimumvalue = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minimumvalue')
ls_oldresult = wf_selectresult(as_testitem + '.minimumvalue(4)',ls_newresult)
wf_output(as_testitem + '.minimumvalue(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minimumvalue = 4")')

dw_1.modify('gr_1.' + as_testitem + '.minimumvalue = 1114')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minimumvalue')
ls_oldresult = wf_selectresult(as_testitem + '.minimumvalue(1114)',ls_newresult)
wf_output(as_testitem + '.minimumvalue(1114)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minimumvalue = 11114")')

//values.minordivisions
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.minordivisions = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minordivisions')
ls_oldresult = wf_selectresult(as_testitem + '.minordivisions(4)',ls_newresult)
wf_output(as_testitem + '.minordivisions(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minordivisions = 4")')

dw_1.modify('gr_1.' + as_testitem + '.minordivisions = 1114')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minordivisions')
ls_oldresult = wf_selectresult(as_testitem + '.minordivisions(1114)',ls_newresult)
wf_output(as_testitem + '.minordivisions(1114)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minordivisions = 11114")')

//values.minorgridline
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.minorgridline = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.minorgridline(0)',ls_newresult)
wf_output(as_testitem + '.minorgridline(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minorgridline = 0")')

dw_1.modify('gr_1.' + as_testitem + '.minorgridline = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.minorgridline(1)',ls_newresult)
wf_output(as_testitem + '.minorgridline(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minorgridline = 1")')

dw_1.modify('gr_1.' + as_testitem + '.minorgridline = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.minorgridline(2)',ls_newresult)
wf_output(as_testitem + '.minorgridline(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minorgridline = 2")')

dw_1.modify('gr_1.' + as_testitem + '.minorgridline = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.minorgridline(3)',ls_newresult)
wf_output(as_testitem + '.minorgridline(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minorgridline = 3")')

dw_1.modify('gr_1.' + as_testitem + '.minorgridline = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.minorgridline(4)',ls_newresult)
wf_output(as_testitem + '.minorgridline(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minorgridline = 4")')

dw_1.modify('gr_1.' + as_testitem + '.minorgridline = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minorgridline')
ls_oldresult = wf_selectresult(as_testitem + '.minorgridline(5)',ls_newresult)
wf_output(as_testitem + '.minorgridline(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minorgridline = 5")')

//values.minortic
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.minortic = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minortic')
ls_oldresult = wf_selectresult(as_testitem + '.minortic(1)',ls_newresult)
wf_output(as_testitem + '.minortic(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minortic = 1")')

dw_1.modify('gr_1.' + as_testitem + '.minortic = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minortic')
ls_oldresult = wf_selectresult(as_testitem + '.minortic(2)',ls_newresult)
wf_output(as_testitem + '.minortic(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minortic = 2")')

dw_1.modify('gr_1.' + as_testitem + '.minortic = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minortic')
ls_oldresult = wf_selectresult(as_testitem + '.minortic(3)',ls_newresult)
wf_output(as_testitem + '.minortic(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minortic = 3")')

dw_1.modify('gr_1.' + as_testitem + '.minortic = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.minortic')
ls_oldresult = wf_selectresult(as_testitem + '.minortic(4)',ls_newresult)
wf_output(as_testitem + '.minortic(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.minortic = 4")')

//values.minvaldatetime

//values.originline
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.originline = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.originline')
ls_oldresult = wf_selectresult(as_testitem + '.originline(0)',ls_newresult)
wf_output(as_testitem + '.originline(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.originline = 0")')

dw_1.modify('gr_1.' + as_testitem + '.originline = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.originline')
ls_oldresult = wf_selectresult(as_testitem + '.originline(1)',ls_newresult)
wf_output(as_testitem + '.originline(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.originline = 1")')

dw_1.modify('gr_1.' + as_testitem + '.originline = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.originline')
ls_oldresult = wf_selectresult(as_testitem + '.originline(2)',ls_newresult)
wf_output(as_testitem + '.originline(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.originline = 2")')

dw_1.modify('gr_1.' + as_testitem + '.originline = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.originline')
ls_oldresult = wf_selectresult(as_testitem + '.originline(3)',ls_newresult)
wf_output(as_testitem + '.originline(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.originline = 3")')

dw_1.modify('gr_1.' + as_testitem + '.originline = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.originline')
ls_oldresult = wf_selectresult(as_testitem + '.originline(4)',ls_newresult)
wf_output(as_testitem + '.originline(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.originline = 4")')

dw_1.modify('gr_1.' + as_testitem + '.originline = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.originline')
ls_oldresult = wf_selectresult(as_testitem + '.originline(5)',ls_newresult)
wf_output(as_testitem + '.originline(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.originline = 5")')

//values.primaryline
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.primaryline = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.primaryline')
ls_oldresult = wf_selectresult(as_testitem + '.primaryline(0)',ls_newresult)
wf_output(as_testitem + '.primaryline(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.primaryline = 0")')

dw_1.modify('gr_1.' + as_testitem + '.primaryline = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.primaryline')
ls_oldresult = wf_selectresult(as_testitem + '.primaryline(1)',ls_newresult)
wf_output(as_testitem + '.primaryline(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.primaryline = 1")')

dw_1.modify('gr_1.' + as_testitem + '.primaryline = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.primaryline')
ls_oldresult = wf_selectresult('values.primaryline(2)',ls_newresult)
wf_output('values.primaryline(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.primaryline = 2")')

dw_1.modify('gr_1.' + as_testitem + '.primaryline = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.primaryline')
ls_oldresult = wf_selectresult(as_testitem + '.primaryline(3)',ls_newresult)
wf_output(as_testitem + '.primaryline(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.primaryline = 3")')

dw_1.modify('gr_1.' + as_testitem + '.primaryline = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.primaryline')
ls_oldresult = wf_selectresult(as_testitem + '.primaryline(4)',ls_newresult)
wf_output(as_testitem + '.primaryline(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.primaryline = 4")')

dw_1.modify('gr_1.' + as_testitem + '.primaryline = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.primaryline')
ls_oldresult = wf_selectresult(as_testitem + '.primaryline(5)',ls_newresult)
wf_output(as_testitem + '.primaryline(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.primaryline = 5")')

//values.roundto

//values.roundtounit
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.roundtounit = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.roundtounit')
ls_oldresult = wf_selectresult(as_testitem + '.roundtounit(5)',ls_newresult)
wf_output(as_testitem + '.roundtounit(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.roundtounit = 5")')

dw_1.modify('gr_1.' + as_testitem + '.roundtounit = 115')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.roundtounit')
ls_oldresult = wf_selectresult(as_testitem + '.roundtounit(115)',ls_newresult)
wf_output(as_testitem + '.roundtounit(115)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.roundtounit = 115")')

//values.scaletype
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.scaletype = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.scaletype')
ls_oldresult = wf_selectresult(as_testitem + '.scaletype(0)',ls_newresult)
wf_output(as_testitem + '.scaletype(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.scaletype = 0")')

dw_1.modify('gr_1.' + as_testitem + '.scaletype = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.scaletype')
ls_oldresult = wf_selectresult(as_testitem + '.scaletype(1)',ls_newresult)
wf_output(as_testitem + '.scaletype(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.scaletype = 1")')

//values.scalevalue
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.scalevalue = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.scalevalue')
ls_oldresult = wf_selectresult(as_testitem + '.scalevalue(0)',ls_newresult)
wf_output(as_testitem + '.scalevalue(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.scalevalue = 0")')

dw_1.modify('gr_1.' + as_testitem + '.scalevalue = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.scalevalue')
ls_oldresult = wf_selectresult(as_testitem + '.scalevalue(1)',ls_newresult)
wf_output(as_testitem + '.scalevalue(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.scalevalue = 1")')

//values.secondaryline
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.secondaryline = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.secondaryline')
ls_oldresult = wf_selectresult(as_testitem + '.secondaryline(0)',ls_newresult)
wf_output(as_testitem + '.secondaryline(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.secondaryline = 0")')

dw_1.modify('gr_1.' + as_testitem + '.secondaryline = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.secondaryline')
ls_oldresult = wf_selectresult(as_testitem + '.secondaryline(1)',ls_newresult)
wf_output(as_testitem + '.secondaryline(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.secondaryline = 1")')

dw_1.modify('gr_1.' + as_testitem + '.secondaryline = 2')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.secondaryline')
ls_oldresult = wf_selectresult(as_testitem + '.secondaryline(2)',ls_newresult)
wf_output(as_testitem + '.secondaryline(2)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.secondaryline = 2")')

dw_1.modify('gr_1.' + as_testitem + '.secondaryline = 3')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.secondaryline')
ls_oldresult = wf_selectresult(as_testitem + '.secondaryline(3)',ls_newresult)
wf_output(as_testitem + '.secondaryline(3)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.secondaryline = 3")')

dw_1.modify('gr_1.' + as_testitem + '.secondaryline = 4')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.secondaryline')
ls_oldresult = wf_selectresult(as_testitem + '.secondaryline(4)',ls_newresult)
wf_output(as_testitem + '.secondaryline(4)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.secondaryline = 4")')

dw_1.modify('gr_1.' + as_testitem + '.secondaryline = 5')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.secondaryline')
ls_oldresult = wf_selectresult(as_testitem + '.secondaryline(5)',ls_newresult)
wf_output(as_testitem + '.secondaryline(5)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.secondaryline = 5")')

//values.shadebackedge
wf_reset()
dw_1.modify('gr_1.' + as_testitem + '.shadebackedge = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.shadebackedge')
ls_oldresult = wf_selectresult(as_testitem + '.shadebackedge(0)',ls_newresult)
wf_output(as_testitem + '.shadebackedge(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.shadebackedge = 0")')

dw_1.modify('gr_1.' + as_testitem + '.shadebackedge = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.shadebackedge')
ls_oldresult = wf_selectresult(as_testitem + '.shadebackedge(1)',ls_newresult)
wf_output(as_testitem + '.shadebackedge(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.shadebackedge = 1")')

//sort
dw_1.modify('gr_1.' + as_testitem + '.sort = 0')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.sort')
ls_oldresult = wf_selectresult(as_testitem + '.sort(0)',ls_newresult)
wf_output(as_testitem + '.sort(0)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.sort = 0")')

dw_1.modify('gr_1.' + as_testitem + '.sort = 1')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.sort')
ls_oldresult = wf_selectresult(as_testitem + '.sort(1)',ls_newresult)
wf_output(as_testitem + '.sort(1)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.sort = 1")')

dw_1.modify('gr_1.' + as_testitem + '.sort = 111')
ls_newresult = dw_1.describe('gr_1.' + as_testitem + '.sort')
ls_oldresult = wf_selectresult(as_testitem + '.sort(111)',ls_newresult)
wf_output(as_testitem + '.sort(111)',ls_oldresult,ls_newresult,&
'dw_1.modify("gr_1.' + as_testitem + '.sort = 111")')
end subroutine

public subroutine wf_reset ();dw_1.dataobject = 'd_graph_defaultproperty'
dw_1.settransobject(sqlca)
dw_1.retrieve()
end subroutine

public subroutine wf_function (string as_testitem, boolean ab_save);int li_row, li_count,li_arg
string ls_newresult,ls_oldresult,ls_arg,ls_null

setnull(ls_null)
//CategoryCount
wf_reset()
ls_newresult = string(dw_1.CategoryCount('gr_1'))
ls_oldresult = wf_selectresult("dw_1.CategoryCount('gr_1')",ls_newresult)
wf_output("CategoryCount",ls_oldresult,ls_newresult,&
"dw_1.CategoryCount('gr_1')")

//CategroyCount(NULL)
ls_newresult = string(dw_1.CategoryCount(ls_null))
if (isnull(ls_newresult)) then
	ls_newresult = "null"
end if
ls_oldresult = wf_selectresult("dw_1.CategoryCount(NULL)",ls_newresult)
wf_output("CategoryCount",ls_oldresult,ls_newresult,&
"dw_1.CategoryCount(NULL)")

//categroyCount(error)
ls_newresult = string(dw_1.CategoryCount('a'))
ls_oldresult = wf_selectresult("dw_1.CategoryCount('a')",ls_newresult)
wf_output("CategoryCount",ls_oldresult,ls_newresult,&
"dw_1.CategoryCount('a')")

//CategoryName
wf_reset()
li_count = dw_1.CategoryCount('gr_1')
ls_newresult = string(dw_1.CategoryName('gr_1',1))
ls_oldresult = wf_selectresult("dw_1.CategoryName('gr_1',1)",ls_newresult)
wf_output("CategoryName",ls_oldresult,ls_newresult,&
"dw_1.CategoryName('gr_1',1)")

ls_newresult = string(dw_1.CategoryName('gr_1',li_count))
ls_oldresult = wf_selectresult("dw_1.CategoryName('gr_1',li_count)",ls_newresult)
wf_output("CategoryName",ls_oldresult,ls_newresult,&
"dw_1.CategoryName('gr_1',li_count)")

//CategoryName NULL
ls_newresult = string(dw_1.CategoryName(ls_null,1))
if (isnull(ls_newresult)) then
	ls_newresult = "null"
end if
ls_oldresult = wf_selectresult("dw_1.CategoryName(ls_arg,1)",ls_newresult)
wf_output("CategoryName",ls_oldresult,ls_newresult,&
"dw_1.CategoryName(ls_arg,1)")

//CategoryName error
ls_newresult = string(dw_1.CategoryName('a',1))
ls_oldresult = wf_selectresult("dw_1.CategoryName('a',1)",ls_newresult)
wf_output("CategoryName",ls_oldresult,ls_newresult,&
"dw_1.CategoryName('a',1)")

//DataCount
wf_reset()
li_count = dw_1.SeriesCount('gr_1')
ls_arg = dw_1.SeriesName('gr_1',li_count)
ls_newresult = string(dw_1.DataCount('gr_1',ls_arg))
ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1',ls_arg)",ls_newresult)
wf_output("DataCount",ls_oldresult,ls_newresult,&
"dw_1.DataCount('gr_1',ls_arg)")

//DataCount NULL
ls_newresult = string(dw_1.DataCount('gr_1',ls_null))
if (isnull(ls_newresult)) then
	ls_newresult = "null"
end if
ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1',null)",ls_newresult)
wf_output("DataCount",ls_oldresult,ls_newresult,&
"dw_1.DataCount('gr_1',null)")

//DataCount error
ls_newresult = string(dw_1.DataCount('gr_1','a'))
ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
wf_output("DataCount",ls_oldresult,ls_newresult,&
"dw_1.DataCount('gr_1','a')")

//new
//FindCategory
ls_arg = string(dw_1.CategoryName('gr_1',1))
ls_newresult = string(dw_1.FindCategory('gr_1',ls_arg))
ls_oldresult = wf_selectresult("dw_1.FindCategory('gr_1',ls_arg)",ls_newresult)
wf_output("FindCategory",ls_oldresult,ls_newresult,&
"dw_1.FindCategory('gr_1',ls_arg)")

//FindSeries
ls_arg = dw_1.SeriesName('gr_1',1)
ls_newresult = string(dw_1.FindSeries('gr_1',ls_arg))
ls_oldresult = wf_selectresult("dw_1.FindSeries('gr_1',ls_arg)",ls_newresult)
wf_output("FindSeries",ls_oldresult,ls_newresult,&
"dw_1.FindSeries('gr_1',ls_arg)")

//GetData
ls_arg = dw_1.SeriesName('gr_1',1)
li_arg = dw_1.FindSeries('gr_1',ls_arg)
ls_newresult = string(dw_1.GetData('gr_1',li_arg,1))
ls_oldresult = wf_selectresult("dw_1.GetData('gr_1',li_arg,1)",ls_newresult)
wf_output("GetData",ls_oldresult,ls_newresult,&
"dw_1.GetData('gr_1',li_arg,1)")

//GetDataPieExplode
int li_per = 50
ls_arg = dw_1.SeriesName('gr_1',1)
li_arg = dw_1.FindSeries('gr_1',ls_arg)
ls_newresult = string(dw_1.GetDataPieExplode('gr_1',li_arg,1,li_per))
ls_oldresult = wf_selectresult("dw_1.GetDataPieExplode('gr_1',li_arg,1,li_per)",ls_newresult)
wf_output("GetDataPieExplode",ls_oldresult,ls_newresult,&
"dw_1.GetDataPieExplode('gr_1',li_arg,1,li_per)")

//GetDataStyle
long ll_result
ls_arg = dw_1.SeriesName('gr_1',1)
li_arg = dw_1.FindSeries('gr_1',ls_arg)
ls_newresult = string(dw_1.GetDataStyle('gr_1',li_arg,1,Background!,ll_result))
ls_oldresult = wf_selectresult("dw_1.GetDataStyle('gr_1',li_arg,1,Background!,ll_result)",ls_newresult)
wf_output("GetDataStyle",ls_oldresult,ls_newresult,&
"dw_1.GetDataStyle('gr_1',li_arg,1,Background!,ll_result)")

ls_newresult = string(ll_result)
ls_oldresult = wf_selectresult("GetDataStyle(result)",ls_newresult)
wf_output("GetDataStyle(result)",ls_oldresult,ls_newresult,"GetDataStyle(result)")

//GetDataValue
string ls_result
ls_arg = dw_1.SeriesName('gr_1',1)
li_arg = dw_1.FindSeries('gr_1',ls_arg)
ls_newresult = string(dw_1.GetDataValue('gr_1',li_arg,1,ls_result))
ls_oldresult = wf_selectresult("dw_1.GetDataValue('gr_1','a')",ls_newresult)
wf_output("GetDataValue",ls_oldresult,ls_newresult,&
"dw_1.GetDataValue('gr_1','a')")

//GetSeriesStyle
LineStyle line_style
ls_arg = dw_1.SeriesName('gr_1',1)
ls_newresult = string(dw_1.GetSeriesStyle('gr_1',ls_arg,line_style))
ls_oldresult = wf_selectresult("dw_1.GetSeriesStyle('gr_1',ls_arg,line_style)",ls_newresult)
wf_output("GetSeriesStyle",ls_oldresult,ls_newresult,&
"dw_1.GetSeriesStyle('gr_1',ls_arg,line_style)")
choose case line_style
	case Continuous!
		ls_newresult = "Continuous!"
	case Dash!
		ls_newresult = "Dash!"
	case DashDot!
		ls_newresult = "DashDot!"
	case DashDotDot!
		ls_newresult = "DashDotDot!"
	case Dot!
		ls_newresult = "Dot!"
	case Transparent!	
		ls_newresult = "Transparent!"
end choose
ls_oldresult = wf_selectresult("GetSeriesStyle(result)",ls_newresult)
wf_output("GetSeriesStyle(result)",ls_oldresult,ls_newresult,"GetSeriesStyle(result)")

////ObjectAtPointer
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////Reset
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////ResetDataColors
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////SaveAs
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////SeriesCount
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////SeriesName
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////SetDataPieExplode
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////SetDataStyle
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
//
////SetSeriesStyle
//ls_newresult = string(dw_1.DataCount('gr_1','a'))
//ls_oldresult = wf_selectresult("dw_1.DataCount('gr_1','a')",ls_newresult)
//wf_output("DataCount",ls_oldresult,ls_newresult,&
//"dw_1.DataCount('gr_1','a')")
end subroutine

on w_graphtest.create
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
this.Control[]={this.cb_1,&
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

on w_graphtest.destroy
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

type cb_1 from commandbutton within w_graphtest
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

ls_mysql = 'truncate table graphtest'
li_ret = Messagebox('Delete','Are you want to delete all data in table graphtest',Question!,OKCancel!,2)

if li_ret = 1 then 
	EXECUTE IMMEDIATE :ls_Mysql USING SQLCA;
	if sqlca.sqlcode = 0 then
		COMMIT using sqlca;
	else
		Rollback using sqlca;
		Messagebox('','Executed Failed!')
	end if
end if

ls_mysql = 'truncate table property_default'
li_ret = Messagebox('Delete','Are you want to delete all data in table property_default',Question!,OKCancel!,2)

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

type dw_defaultproperty_result from datawindow within w_graphtest
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

type dw_bak from datawindow within w_graphtest
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

type cbx_showright from checkbox within w_graphtest
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

type cb_2 from commandbutton within w_graphtest
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

type cb_run from commandbutton within w_graphtest
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

type st_message from statictext within w_graphtest
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

type lb_testitems from listbox within w_graphtest
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

this.additem(string(i,"00")+" Graph GetProperty")
i += 1
this.additem(string(i,"00")+" Graph SetProperty")
i += 1
this.additem(string(i,"00")+" Graph function")
i += 1
//
//this.additem(string(i,"00")+" Graph pie")
//i += 1
//this.additem(string(i,"00")+" Graph series")
//i += 1
//this.additem(string(i,"00")+" Graph title")
//i += 1
//this.additem(string(i,"00")+" Graph values")
//i += 1
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

type cb_autorun from commandbutton within w_graphtest
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
	wf_message(ls_Item,"GraphDW")
	wf_script(lower(trim(mid(ls_item,pos(ls_item,"Graph:") + 10))),ib_save)
	f_outputtext(dw_output,ls_message)	
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,primary!)
	end if
Next
end event

type cb_10 from commandbutton within w_graphtest
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

type cb_3 from commandbutton within w_graphtest
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

type cbx_right from checkbox within w_graphtest
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

type cb_max from commandbutton within w_graphtest
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

type cb_save from commandbutton within w_graphtest
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

type cb_sort from commandbutton within w_graphtest
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

type cb_reset from commandbutton within w_graphtest
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

type dw_1 from datawindow within w_graphtest
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

type dw_output from datawindow within w_graphtest
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

type gb_4 from groupbox within w_graphtest
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

type gb_1 from groupbox within w_graphtest
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

type gb_2 from groupbox within w_graphtest
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

type gb_3 from groupbox within w_graphtest
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

type lb_1 from listbox within w_graphtest
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

