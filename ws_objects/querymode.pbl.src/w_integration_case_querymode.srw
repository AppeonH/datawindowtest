$PBExportHeader$w_integration_case_querymode.srw
$PBExportComments$Datawindow Integration Test Case--FreeForm
forward
global type w_integration_case_querymode from window
end type
type cb_12 from commandbutton within w_integration_case_querymode
end type
type mle_1 from multilineedit within w_integration_case_querymode
end type
type cbx_4 from checkbox within w_integration_case_querymode
end type
type cbx_3 from checkbox within w_integration_case_querymode
end type
type cbx_2 from checkbox within w_integration_case_querymode
end type
type cb_all from commandbutton within w_integration_case_querymode
end type
type cb_7 from commandbutton within w_integration_case_querymode
end type
type st_split from statictext within w_integration_case_querymode
end type
type cbx_8 from checkbox within w_integration_case_querymode
end type
type cb_9 from commandbutton within w_integration_case_querymode
end type
type sle_position from singlelineedit within w_integration_case_querymode
end type
type cb_save from commandbutton within w_integration_case_querymode
end type
type dw_output from datawindow within w_integration_case_querymode
end type
type cbx_right from checkbox within w_integration_case_querymode
end type
type st_4 from statictext within w_integration_case_querymode
end type
type st_error from statictext within w_integration_case_querymode
end type
type cbx_7 from checkbox within w_integration_case_querymode
end type
type cb_1 from commandbutton within w_integration_case_querymode
end type
type lb_testitems from listbox within w_integration_case_querymode
end type
type cb_11 from commandbutton within w_integration_case_querymode
end type
type cb_21 from commandbutton within w_integration_case_querymode
end type
type cb_rsize from commandbutton within w_integration_case_querymode
end type
type st_2 from statictext within w_integration_case_querymode
end type
type st_1 from statictext within w_integration_case_querymode
end type
type cb_run from commandbutton within w_integration_case_querymode
end type
type cb_19 from commandbutton within w_integration_case_querymode
end type
type cb_13 from commandbutton within w_integration_case_querymode
end type
type cb_10 from commandbutton within w_integration_case_querymode
end type
type cb_4 from commandbutton within w_integration_case_querymode
end type
type cb_3 from commandbutton within w_integration_case_querymode
end type
type lb_1 from listbox within w_integration_case_querymode
end type
type cb_2 from commandbutton within w_integration_case_querymode
end type
type dw_1 from datawindow within w_integration_case_querymode
end type
type gb_1 from groupbox within w_integration_case_querymode
end type
type gb_testitems from groupbox within w_integration_case_querymode
end type
type gb_4 from groupbox within w_integration_case_querymode
end type
type dw_3 from datawindow within w_integration_case_querymode
end type
type gb_2 from groupbox within w_integration_case_querymode
end type
end forward

global type w_integration_case_querymode from window
boolean visible = false
integer width = 4658
integer height = 2592
boolean titlebar = true
string title = "Query Mode"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_12 cb_12
mle_1 mle_1
cbx_4 cbx_4
cbx_3 cbx_3
cbx_2 cbx_2
cb_all cb_all
cb_7 cb_7
st_split st_split
cbx_8 cbx_8
cb_9 cb_9
sle_position sle_position
cb_save cb_save
dw_output dw_output
cbx_right cbx_right
st_4 st_4
st_error st_error
cbx_7 cbx_7
cb_1 cb_1
lb_testitems lb_testitems
cb_11 cb_11
cb_21 cb_21
cb_rsize cb_rsize
st_2 st_2
st_1 st_1
cb_run cb_run
cb_19 cb_19
cb_13 cb_13
cb_10 cb_10
cb_4 cb_4
cb_3 cb_3
lb_1 lb_1
cb_2 cb_2
dw_1 dw_1
gb_1 gb_1
gb_testitems gb_testitems
gb_4 gb_4
dw_3 dw_3
gb_2 gb_2
end type
global w_integration_case_querymode w_integration_case_querymode

type variables
boolean	ib_trackflag=false,ib_interrupt//¸ú×ÙÐÅÏ¢
string 	is_event
string 	is_tracklog,is_trackname
int		ii_retrievestart= -1 //retrieve
int		ii_Rowfocuschanging
int		il_error_no

long		il_counter,il_pos

long		il_testno

boolean ib_eventoupput
	
long ii_number = 1,ii_errornumber = 0 ,ii_rightnumber = 0
end variables

forward prototypes
public subroutine wf_run_genfun ()
public function integer wf_eventreturn (string as_event)
public subroutine wf_checkevent (string as_function, string as_parameter)
public subroutine wf_event ()
public function boolean wf_additem (string as_message)
public subroutine wf_rowid ()
public subroutine wf_testitems (boolean ab_runonly)
public subroutine wf_sqlselect ()
public subroutine wf_setquery (integer ai_row, integer ai_column, string as_query)
public subroutine wf_querysort_true_function ()
public subroutine wf_querysort_true_event ()
public subroutine wf_querysort_property (boolean ab_querysort)
public subroutine wf_querysort_false_function ()
public subroutine wf_querysort_false_event ()
public subroutine wf_query_true_function ()
public subroutine wf_query_true_event ()
public subroutine wf_query_property (boolean ab_querymode)
public subroutine wf_query_false_function ()
public subroutine wf_query_false_event ()
public function string wf_getorderby (datawindow adw_parm1)
public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type)
public function string wf_dealsql (string as_query, string as_sqlselect)
public function string wf_dealstring (string as_sqlselect)
public subroutine wf_message (string as_operate, string as_problem)
public function integer wf_returnerror ()
public subroutine wf_autorun (boolean ab_outputright, boolean ab_closepopwin, integer ai_testitem)
end prototypes

event ue_autorun();
cb_all.TriggerEvent(clicked!)




end event

public subroutine wf_run_genfun ();integer li_ret,li_currow,li_null
string ls_ret
boolean lb_ret
date ld_ret
time lt_ret
datetime ldt_ret
decimal ldc_ret
string ls_message,ls_sql
datawindowchild dwc
setnull(li_null)

dw_1.dataobject="d_integration_case_freeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()
//		<Interface param_number="0">Hide</Interface>
li_ret=dw_1.Hide()
if li_ret=1 then
	ls_message="Right|dw_1.Hide() return 1"
else
	ls_message="Error|dw_1.Hide() return "+f_string(li_ret)
end if

wf_additem(ls_message) 
//		<Interface param_number="0">Show</Interface>
li_ret=dw_1.Show()
if li_ret=1 then
	ls_message="Right|dw_1.Show() return 1"
else
	ls_message="Error|dw_1.Show() return "+f_string(li_ret)
end if
wf_additem(ls_message) 
//		<Interface param_number="2">Move</Interface>
//li_ret=dw_1.Move(10,10)//st_split //gb_testitems
//if dw_1.x=gb_testitems.x and dw_1.y=st_split.y then
	li_ret=dw_1.Move(dw_1.x ,dw_1.y +50)
if li_ret=1 then
	ls_message="Right|dw_1.Move("+string(dw_1.x)+","+string(dw_1.y +50)+")) return 1"
else
	ls_message="Error|dw_1.Move("+string(dw_1.x)+","+string(dw_1.y +50)+")) return "+f_string(ls_ret)
end if
wf_additem(ls_message) 

//		<Interface param_number="2">Resize</Interface>
li_ret=dw_1.Resize(dw_1.width -10,dw_1.height -10)
if li_ret=1 then
	ls_message="Right|dw_1.Resize(dw_1.width -10,dw_1.height -10) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.Resize(dw_1.width -10,dw_1.height -10) return -1"
else
	ls_message="Error|dw_1.Resize(dw_1.width -10,dw_1.height -10) return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">GetSQLSelect</Interface>
ls_ret=dw_1.GetSQLSelect()
if isnull(ls_ret) then
	ls_message="Error|dw_1.GetSQLSelect() return null"
elseif ls_ret="" then
	ls_message="Error|dw_1.GetSQLSelect() return ''"
else
	ls_message="Right|dw_1.GetSQLSelect() return "+ls_ret
end if
wf_additem(ls_message) 
//		<Interface param_number="1">SetSQLSelect</Interface>

ls_sql='  SELECT "employee"."dept_id",  ' & 
        +' "employee"."emp_id",   ' &
        +' "employee"."manager_id",  ' & 
        +' "employee"."emp_fname",   ' &
        +' "employee"."emp_lname",   ' &
        +' "employee"."street",   ' &
        +' "employee"."start_date",  ' & 
        +' "employee"."zip_code",   ' &
        +' "employee"."city",   ' &
        +' "employee"."bene_health_ins",   ' &
        +' "employee"."bene_life_ins",   ' &
        +' "employee"."mydatetime",   ' &
        +' "employee"."mydecimal",   ' &
        +' "employee"."mytime"  ' &
    +' FROM "employee" WHERE "employee"."dept_id" > 300 '

li_ret=dw_1.SetSQLSelect(ls_sql)
if li_ret=1 then
	ls_message="Right|dw_1.SetSQLSelect(ls_sql) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSQLSelect(ls_sql) return -1"
else
	ls_message="Error|dw_1.SetSQLSelect(ls_sql) return null"
end if
wf_additem(ls_message) 
ls_ret=dw_1.GetSQLSelect()
if ls_sql = ls_ret then
	ls_message="Right|dw_1.GetSQLSelect() return "+ls_ret
else
	ls_message="Error|dw_1.GetSQLSelect() return "+ls_ret
end if

//		<Interface param_number="2">SetTransObject</Interface>
li_ret=dw_1.SetTransObject(SQLCA)
if li_ret=1 then
	ls_message="Right|dw_1.SetTransObject(SQLCA) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetTransObject(SQLCA) return -1"
else
	ls_message="Error|dw_1.SetTransObject(SQLCA) return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">AcceptText</Interface>
li_ret=dw_1.AcceptText()
if li_ret=1 then
	ls_message="Right|dw_1.AcceptText() return 1"
elseif li_ret=-1 then
	ls_message="Fails|dw_1.AcceptText() return -1"
else
	ls_message="Error|dw_1.AcceptText() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="1">DeleteRow</Interface>
li_currow=dw_1.getrow()
li_ret=dw_1.DeleteRow(li_currow)
if li_ret=1 then
	ls_message="Right|dw_1.DeleteRow(li_currow) return 1"
elseif li_ret=-1 then
	ls_message="Fails|dw_1.DeleteRow(li_currow) return -1"
else
	ls_message="Error|dw_1.DeleteRow(li_currow) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.GetClickedColumn()
if not isnull(li_ret) then
	ls_message="Right|dw_1.GetClickedColumn() return "+string(li_ret)
else
	ls_message="Error|dw_1.GetClickedColumn() return null"
end if
wf_additem(ls_message) 

//		<Interface param_number="0">GetClickedRow</Interface> 
li_ret=dw_1.GetClickedRow()
if not isnull(li_ret) then
	ls_message="Right|dw_1.GetClickedRow() return "+string(li_ret)
else
	ls_message="Error|dw_1.GetClickedRow() return null"
end if
wf_additem(ls_message) 

//		<Interface param_number="0">GetColumn</Interface>
li_ret=dw_1.GetColumn()
if li_ret>=0 then
	ls_message="Right|dw_1.GetColumn() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.GetColumn() return -1"
else
	ls_message="Error|dw_1.GetColumn() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">GetColumnName</Interface>
ls_ret=dw_1.GetColumnName()
if not isnull(ls_ret) then
	ls_message="Right|dw_1.GetColumnName() return "+ls_ret
else
	ls_message="Error|dw_1.GetClickedRow() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="4">GetItemDate</Interface>
//		<Interface param_number="4">GetItemDateTime</Interface>
//		<Interface param_number="4">GetItemDecimal</Interface>
//		<Interface param_number="4">GetItemNumber</Interface>
//		<Interface param_number="3">GetItemStatus</Interface>
//		<Interface param_number="4">GetItemString</Interface>
//		<Interface param_number="4">GetItemTime</Interface>
//design in button 'getitem'

//		<Interface param_number="2">GetNextModified</Interface>
//1·µ»ØÖµ
wf_additem("")
li_ret=dw_1.GetNextModified(1,primary!)
if li_ret>=0 then
	ls_message="Right|dw_1.GetNextModified(1,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetNextModified(1,primary!) return null"
end if
wf_additem(ls_message) 

wf_additem("")
li_ret=dw_1.GetNextModified(li_null,primary!)
if isnull(li_ret) then
	ls_message="Right|dw_1.GetNextModified(null,primary!) return "+f_string(li_ret)
else
	ls_message="Error|dw_1.GetNextModified(null,primary!) return "+f_string(li_ret)
end if
wf_additem(ls_message) 

li_ret=dw_1.GetNextModified(1,delete!)
if li_ret>=0 then
	ls_message="Right|dw_1.GetNextModified(1,delete!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetNextModified(1,delete!) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.GetNextModified(1,filter!)
if li_ret>=0 then
	ls_message="Right|dw_1.GetNextModified(1,filter!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetNextModified(1,filter!) return null"
end if
wf_additem(ls_message) 
wf_additem("")

//2Î»ÖÃ primary!
dw_1.SetItem(6,5,'test')
dw_1.SetItem(7,5,'test')
dw_1.SetItem(8,5,'test')
dw_1.SetItem(9,5,'test')
//
li_ret=dw_1.GetNextModified(6,primary!)
ls_message="dw_1.GetNextModified(6,primary!) [6 before modified] row return "+f_string(li_ret)
if li_ret=7 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 
//
li_ret=dw_1.GetNextModified(8,primary!)
ls_message="dw_1.GetNextModified(8,primary!) [8 between modified] return "+f_string(li_ret)
if li_ret=9 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 
//
li_ret=dw_1.GetNextModified(9,primary!)
ls_message="dw_1.GetNextModified(9,primary!) [9 after modified] return "+f_string(li_ret)
if li_ret=0 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 

//3Î»ÖÃ delete!

dw_1.deleterow(1)
dw_1.deleterow(1)
dw_1.deleterow(1)
dw_1.deleterow(1)
dw_1.deleterow(1)

dw_1.setitemstatus(2,5,delete!,datamodified!)
dw_1.setitemstatus(3,5,delete!,newmodified!)
dw_1.setitemstatus(4,5,delete!,datamodified!)


//
li_ret=dw_1.GetNextModified(1,delete!)
ls_message="dw_1.GetNextModified(1,delete!) [1 before modified] row return "+f_string(li_ret)
if li_ret=2 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 
//
li_ret=dw_1.GetNextModified(3,delete!)
ls_message="dw_1.GetNextModified(3,delete!) [3 between modified] return "+f_string(li_ret)
if li_ret=4 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 
//
li_ret=dw_1.GetNextModified(4,delete!)
ls_message="dw_1.GetNextModified(4,delete!) [4 after modified] return "+f_string(li_ret)
if li_ret=0 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 

//4Î»ÖÃ filter!
dw_1.ResetUpdate ( ) 
dw_1.setfilter("#1=0")
dw_1.filter()

dw_1.setitemstatus(2,5,filter!,datamodified!)
dw_1.setitemstatus(3,5,filter!,newmodified!)
dw_1.setitemstatus(4,5,filter!,datamodified!)

//
li_ret=dw_1.GetNextModified(1,filter!)
ls_message="dw_1.GetNextModified(1,filter!) [1 before modified] row return "+f_string(li_ret)
if li_ret=2 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 
//
li_ret=dw_1.GetNextModified(3,filter!)
ls_message="dw_1.GetNextModified(3,filter!) [3 between modified] return "+f_string(li_ret)
if li_ret=4 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 
//
li_ret=dw_1.GetNextModified(4,filter!)
ls_message="dw_1.GetNextModified(4,filter!) [4 after modified] return "+f_string(li_ret)
if li_ret=0 then
	ls_message="Right|"+ls_message
else
	ls_message="Error|"+ls_message
end if
wf_additem(ls_message) 
wf_additem(ls_message) 
dw_1.setfilter("")
dw_1.filter()

dw_1.Retrieve()

dw_1.SetFilter("emp_id > 200")
dw_1.Filter()

dw_1.SetSort("emp_id D")
dw_1.Sort()
//		<Interface param_number="0">GetRow</Interface>
li_ret=dw_1.GetRow()
if li_ret>=0 then
	ls_message="Right|dw_1.GetRow() return "+string(li_ret)
elseif li_ret<0 then
	ls_message="Error|dw_1.GetRow() return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRow() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="2">SelectRow</Interface>
wf_additem("")
li_ret=dw_1.SelectRow(0,true)
if li_ret=1 then
	ls_message="Right|dw_1.SelectRow(0,true) return "+string(li_ret)
else
	ls_message="Error|dw_1.dw_1.SelectRow(0,true) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SelectRow(0,false)
if li_ret=1 then
	ls_message="Right|dw_1.SelectRow(0,flase) return "+string(li_ret)
else
	ls_message="Error|dw_1.dw_1.SelectRow(0,false) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SelectRow(5,true)
if li_ret=1 then
	ls_message="Right|dw_1.SelectRow(5,true) return "+string(li_ret)
else
	ls_message="Error|dw_1.dw_1.SelectRow(5,true) return null"
end if
wf_additem(ls_message) 
wf_additem("")


//		<Interface param_number="1">IsSelected</Interface>
lb_ret=dw_1.IsSelected(5)
if lb_ret then
	ls_message="Right|dw_1.IsSelected(5) return true"
elseif not lb_ret then
	ls_message="Right|dw_1.IsSelected(5) return false"
else
	ls_message="Error|dw_1.IsSelected(5) return null"
end if
wf_additem(ls_message) 
lb_ret=dw_1.IsSelected(1)
if lb_ret then
	ls_message="Right|dw_1.IsSelected(1) return true"
elseif not lb_ret then
	ls_message="Right|dw_1.IsSelected(1) return false"
else
	ls_message="Error|dw_1.IsSelected(1) return null"
end if
wf_additem(ls_message) 
lb_ret=dw_1.IsSelected(1000)
if lb_ret then
	ls_message="Right|dw_1.IsSelected(100) return true"
elseif not lb_ret then
	ls_message="Right|dw_1.IsSelected(100) return false"
else
	ls_message="Error|dw_1.IsSelected(100) return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="1">GetSelectedRow</Interface>
li_ret=dw_1.SelectRow(5,true)
li_ret=dw_1.SelectRow(6,true)
li_ret=dw_1.SelectRow(7,true)
wf_additem("")
li_ret = dw_1.GetSelectedRow(-1)
if li_ret = 5 then
	ls_message="Right|dw_1.GetSelectedRow(-1) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetSelectedRow(-1) return "+f_string(li_ret)
end if
wf_additem(ls_message)

li_ret= dw_1.GetSelectedRow(li_null)
if isnull(li_ret) then
	ls_message="Right|dw_1.GetSelectedRow(null) return "+f_string(li_ret)
else
	ls_message="Error|dw_1.GetSelectedRow(null) return "+f_string(li_ret)
end if
wf_additem(ls_message) 

li_ret=dw_1.GetSelectedRow(0)
if li_ret=5 then
	ls_message="Right|dw_1.GetSelectedRow(0) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetSelectedRow(0) return "+f_string(li_ret)
end if
wf_additem(ls_message) 

li_ret=dw_1.GetSelectedRow(5)
if li_ret=6 then
	ls_message="Right|dw_1.GetSelectedRow(5) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetSelectedRow(5) return "+f_string(li_ret)
end if
wf_additem(ls_message) 
wf_additem("")

li_ret=dw_1.GetSelectedRow(6)
if li_ret=7 then
	ls_message="Right|dw_1.GetSelectedRow(6) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetSelectedRow(6) return "+f_string(li_ret)
end if
wf_additem(ls_message) 
wf_additem("")

li_ret=dw_1.GetSelectedRow(10)
if li_ret=0 then
	ls_message="Right|dw_1.GetSelectedRow(10) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetSelectedRow(10) return "+f_string(li_ret)
end if
wf_additem(ls_message) 
wf_additem("")

//		<Interface param_number="0">GetText</Interface>
ls_ret=dw_1.GetText()
if not isnull(ls_ret) then
	ls_message="Right|dw_1.GetText() return "+ls_ret
else
	ls_message="Error|dw_1.GetText() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="2">GetValue</Interface>
wf_additem("")
ls_ret=dw_1.GetValue('city',2)
if not isnull(ls_ret) then
	ls_message="Right|dw_1.GetValue('city',2) return "+ls_ret
else
	ls_message="Error|dw_1.GetValue('city',2) return null"
end if
wf_additem(ls_message) 
ls_ret=dw_1.GetValue(6,2)
if not isnull(ls_ret) then
	ls_message="Right|dw_1.GetValue(6,2) return "+ls_ret
else
	ls_message="Error|dw_1.GetValue(6,2) return null"
end if
wf_additem(ls_message) 
ls_ret=dw_1.GetValue(6,10)
if not isnull(ls_ret) then
	ls_message="Right|dw_1.GetValue(6,10) return "+ls_ret
else
	ls_message="Error|dw_1.GetValue(6,10) return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="1">InsertRow</Interface>
wf_additem("")
li_ret=dw_1.InsertRow(-1)
if li_ret>0 then
	ls_message="Right|dw_1.InsertRow(-1) return "+string(li_ret)
else
	ls_message="Error|dw_1.InsertRow(-1) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.InsertRow(0)
if li_ret>0 then
	ls_message="Right|dw_1.InsertRow(0) return "+string(li_ret)
else
	ls_message="Error|dw_1.InsertRow(0) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.InsertRow(10)
if li_ret>0 then
	ls_message="Right|dw_1.InsertRow(10) return "+string(li_ret)
else
	ls_message="Error|dw_1.InsertRow(10) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.InsertRow(1000)
if li_ret>0 then
	ls_message="Right|dw_1.InsertRow(1000) return "+string(li_ret)
else
	ls_message="Error|dw_1.InsertRow(1000) return null"
end if
wf_additem(ls_message) 
wf_additem("")
//		<Interface param_number="0">ModifiedCount</Interface>
dw_1.setitem(1,1,12)
dw_1.setitem(2,1,13)
li_ret=dw_1.ModifiedCount()
if li_ret=2 then
	ls_message="Right|dw_1.ModifiedCount() return "+string(li_ret)
elseif li_ret<=0 then
	ls_message="Error|dw_1.ModifiedCount() return "+string(li_ret)
else
	ls_message="Error|dw_1.ModifiedCount() return null"
end if
wf_additem(ls_message) 
//µ±PrimaryBufferÖÐµÄÊý¾ÝÎª¿Õ,µ«FilterBufferÖÐµÄÊý¾Ý²»Îª¿ÕÊ±
dw_1.rowsmove(1,dw_1.rowcount(),primary!,dw_1,1,filter!)
li_ret=dw_1.ModifiedCount()
if li_ret=2 then
	ls_message="Right|dw_1.ModifiedCount() Primary! have no data and filter! have data return "+string(li_ret)
elseif li_ret<=0 then
	ls_message="Error|dw_1.ModifiedCount() Primary! have no data and filter! have data return return "+string(li_ret)
else
	ls_message="Error|dw_1.ModifiedCount() Primary! have no data and filter! have data return return null"
end if
wf_additem(ls_message) 
//µ±FilterBufferÖÐµÄÊý¾ÝÎª¿Õ,µ«PrimaryBufferÖÐµÄÊý¾Ý²»Îª¿ÕÊ±
dw_1.setfilter("")
dw_1.filter()
li_ret=dw_1.ModifiedCount()
if li_ret=2 then
	ls_message="Right|dw_1.ModifiedCount() Primary! have  data and filter! have no data return "+string(li_ret)
elseif li_ret<=0 then
	ls_message="Error|dw_1.ModifiedCount() Primary! have  data and filter! have no data return "+string(li_ret)
else
	ls_message="Error|dw_1.ModifiedCount() Primary! have  data and filter! have no data return null"
end if
wf_additem(ls_message) 

//µ±PrimaryBuffer and FilterBufferÖÐµÄÊý¾Ý¶¼Îª¿ÕÊ±
dw_1.rowsmove(1,dw_1.rowcount(),primary!,dw_1,1,delete!)
li_ret=dw_1.ModifiedCount()
if li_ret=0 then
	ls_message="Right|dw_1.ModifiedCount() Primary! and filter! have no data return "+string(li_ret)
elseif not isnull(li_ret) then
	ls_message="Error|dw_1.ModifiedCount() Primary! and filter! have no data return "+string(li_ret)
else
	ls_message="Error|dw_1.ModifiedCount() Primary! and filter! have no data return null"
end if
wf_additem(ls_message) 

dw_1.retrieve()

//		<Interface param_number="0">DeletedCount</Interface>
li_ret=dw_1.DeletedCount()
if li_ret>=0 then
	ls_message="Right|dw_1.DeletedCount() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.DeletedCount() return -1"
else
	ls_message="Error|dw_1.DeletedCount() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">FilteredCount</Interface>
li_ret=dw_1.FilteredCount()
if li_ret>=0 then
	ls_message="Right|dw_1.FilteredCount() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.FilteredCount() return -1"
else
	ls_message="Error|dw_1.FilteredCount() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">ScrollNextPage</Interface>
li_ret=dw_1.ScrollNextPage()
if li_ret>=0 then
	ls_message="Right|dw_1.ScrollNextPage() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollNextPage() return -1"
else
	ls_message="Error|dw_1.ScrollNextPage() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">ScrollNextRow</Interface>
li_ret=dw_1.ScrollNextRow()
if li_ret>=0 then
	ls_message="Right|dw_1.ScrollNextRow() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollNextRow() return -1"
else
	ls_message="Error|dw_1.ScrollNextRow() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">ScrollPriorPage</Interface>
li_ret=dw_1.ScrollPriorPage()
if li_ret=1 then
	ls_message="Right|dw_1.ScrollPriorPage() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollPriorPage() return -1"
else
	ls_message="Error|dw_1.ScrollPriorPage() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">ScrollPriorRow</Interface>
li_ret=dw_1.ScrollPriorRow()
if li_ret=1 then
	ls_message="Right|dw_1.ScrollPriorRow() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollPriorRow() return -1"
else
	ls_message="Error|dw_1.ScrollPriorRow() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="1">ScrollToRow</Interface>
wf_additem("")
li_ret=dw_1.ScrollToRow(-1)
if li_ret=1 then
	ls_message="Right|dw_1.ScrollToRow(-1) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollToRow(-1) return -1"
else
	ls_message="Error|dw_1.ScrollToRow(-1) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.ScrollToRow(0)
if li_ret=1 then
	ls_message="Right|dw_1.ScrollToRow(0) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollToRow(0) return -1"
else
	ls_message="Error|dw_1.ScrollToRow(0) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.ScrollToRow(10)
if li_ret=1 then
	ls_message="Right|dw_1.ScrollToRow(10) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollToRow(10) return -1"
else
	ls_message="Error|dw_1.ScrollToRow(10) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.ScrollToRow(1000)
if li_ret=1 then
	ls_message="Right|dw_1.ScrollToRow(1000) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ScrollToRow(1000) return -1"
else
	ls_message="Error|dw_1.ScrollToRow(1000) return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="1">SetColumn</Interface>
wf_additem("")
li_ret=dw_1.SetColumn(-1)
if li_ret=1 then
	ls_message="Right|dw_1.SetColumn(-1) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Right|dw_1.SetColumn(-1) return -1"
else
	ls_message="Error|dw_1.SetColumn(-1) return null"
end if
wf_additem(ls_message) 

li_ret=dw_1.SetColumn(1)
if li_ret=1 then
	ls_message="Right|dw_1.SetColumn(1) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetColumn(1) return -1"
else
	ls_message="Error|dw_1.SetColumn(1) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetColumn(100)
if li_ret=1 then
	ls_message="Right|dw_1.SetColumn(100) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Right|dw_1.SetColumn(100) return -1"
else
	ls_message="Error|dw_1.SetColumn(100) return null"
end if
wf_additem(ls_message) 

li_ret=dw_1.SetColumn('dept_id')
if li_ret=1 then
	ls_message="Right|dw_1.SetColumn('dept_id') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetColumn('dept_id') return -1"
else
	ls_message="Error|dw_1.SetColumn('dept_id') return null"
end if
wf_additem(ls_message) 
wf_additem("")
//		<Interface param_number="0">SetFocus</Interface>
li_ret=dw_1.SetFocus()
if li_ret=1 then
	ls_message="Right|dw_1.SetFocus() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetFocus() return -1"
else
	ls_message="Error|dw_1.SetFocus() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">SetFormat</Interface>
/*wf_additem("")
li_ret=dw_1.SetFormat(7,'yy/mm/dd')
if li_ret=1 then
	ls_message="Right|dw_1.SetFormat(7,'yy/mm/dd') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetFormat(7,'yy/mm/dd') return -1"
else
	ls_message="Error|dw_1.SetFormat(7,'yy/mm/dd') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetFormat('start_date','yy/mm/dd')
if li_ret=1 then
	ls_message="Right|dw_1.SetFormat('start_date','yy/mm/dd') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetFormat('start_date','yy/mm/dd') return -1"
else
	ls_message="Error|dw_1.SetFormat('start_date','yy/mm/dd') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetFormat(13,'###.#')
if li_ret=1 then
	ls_message="Right|dw_1.SetFormat(13,'###.#') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetFormat(13,'###.#') return -1"
else
	ls_message="Error|dw_1.SetFormat(13,'###.#') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetFormat('mydecimal','###.#')
if li_ret=1 then
	ls_message="Right|dw_1.SetFormat('mydecimal','###.#') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetFormat('mydecimal','###.#') return -1"
else
	ls_message="Error|dw_1.SetFormat('mydecimal','###.#') return null"
end if
wf_additem(ls_message) 
*/
//		<Interface param_number="3">SetItem</Interface>
wf_additem("")
li_ret=dw_1.SetItem(1,5,'test')
if li_ret=1 then
	ls_message="Right|dw_1.SetItem(1,5,'test') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetItem(1,5,'test') return -1"
else
	ls_message="Error|dw_1.SetItem(1,5,'test') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetItem(1,'emp_lname','test')
if li_ret=1 then
	ls_message="Right|dw_1.SetItem(1,'emp_lname','test') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetItem(1,'emp_lname','test') return -1"
else
	ls_message="Error|dw_1.SetItem(1,'emp_lname','test') return null"
end if
wf_additem(ls_message) 

li_ret=dw_1.SetItem(1,13,19.99)
if li_ret=1 then
	ls_message="Right|dw_1.SetItem(1,13,19.99) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetItem(1,13,19.99) return -1"
else
	ls_message="Error|dw_1.SetItem(1,13,19.99) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetItem(1,'mydecimal',19.99)
if li_ret=1 then
	ls_message="Right|dw_1.SetItem(1,'mydecimal',19.99) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetItem(1,'mydecimal',19.99) return -1"
else
	ls_message="Error|dw_1.SetItem(1,'mydecimal',19.99) return null"
end if
wf_additem(ls_message) 


li_ret=dw_1.SetItem(1,7,date('1999-09-01'))
if li_ret=1 then
	ls_message="Right|dw_1.SetItem(1,7,date('1999-09-01')) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetItem(1,7,date('1999-09-01')) return -1"
else
	ls_message="Error|dw_1.SetItem(1,7,date('1999-09-01')) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetItem(1,'start_date',date('1999-09-01'))
if li_ret=1 then
	ls_message="Right|dw_1.SetItem(1,'start_date',date('1999-09-01')) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetItem(1,'start_date',date('1999-09-01')) return -1"
else
	ls_message="Error|dw_1.SetItem(1,'start_date',date('1999-09-01')) return null"
end if
wf_additem(ls_message) 
//ÒÔÏÂ²âÊÔÐÂÐÐsetitemÖ®ºó£¬Ô­Ê¼ÖµÊÇ·ñÕýÈ·
li_currow = dw_1.insertrow(0)
dw_1.SetItem(li_currow,"dept_id",9999)
li_ret = dw_1.getitemnumber(li_currow,'dept_id')
if li_ret=9999 then
	ls_message="Right|dw_1.getitemnumber(li_currow,'dept_id') return "+string(li_ret)
else
	ls_message="Error|dw_1.getitemnumber(li_currow,'dept_id') return "+string(li_ret)
end if
wf_additem(ls_message) 
li_ret = dw_1.getitemnumber(li_currow,'dept_id',primary!,true)
if li_ret=9999 then
	ls_message="Right|dw_1.getitemnumber(li_currow,'dept_id',primary!,true) return "+string(li_ret)
else
	ls_message="Error|dw_1.getitemnumber(li_currow,'dept_id',primary!,true) return "+string(li_ret)
end if
wf_additem(ls_message) 

wf_additem("")
//		<Interface param_number="4">SetItemStatus</Interface>
//		<Interface param_number="1">SetRow</Interface>
wf_additem("")
li_ret=dw_1.SetRow(-1)
if li_ret=1 then
	ls_message="Right|dw_1.SetRow(-1) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Right|dw_1.SetRow(-1) return -1"
else
	ls_message="Error|dw_1.SetRow(-1) return null"
end if
wf_additem(ls_message) 

li_ret=dw_1.SetRow(1)
if li_ret=1 then
	ls_message="Right|dw_1.SetRow(1) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetRow(1) return -1"
else
	ls_message="Error|dw_1.SetRow(1) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetRow(100)
if li_ret=1 then
	ls_message="Right|dw_1.SetRow(100) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Right|dw_1.SetRow(100) return -1"
else
	ls_message="Error|dw_1.SetRow(100) return null"
end if
wf_additem(ls_message) 
wf_additem("")
//		<Interface param_number="1">SetText</Interface>
dw_1.setcolumn('emp_lname')
li_ret=dw_1.SetText('Test')
if li_ret=1 then
	ls_message="Right|dw_1.SetText('Test') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetText('Test') return -1"
else
	ls_message="Error|dw_1.SetText('Test') return null"
end if
wf_additem(ls_message) 
dw_1.setcolumn('start_date')
li_ret=dw_1.SetText('1998-09-09')
if li_ret=1 then
	ls_message="Right|dw_1.SetText('1998-09-09') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetText('1998-09-09') return -1"
else
	ls_message="Error|dw_1.SetText('1998-09-09') return null"
end if
wf_additem(ls_message) 
dw_1.setcolumn('mydecimal')
li_ret=dw_1.SetText('19.22')
if li_ret=1 then
	ls_message="Right|dw_1.SetText('19.22') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetText('19.22') return -1"
else
	ls_message="Error|dw_1.SetText('19.22') return null"
end if
wf_additem(ls_message) 
wf_additem("")
//		<Interface param_number="3">SetValue</Interface>
li_ret=dw_1.SetValue('city',1,'ShenZhen~tSZ')
if li_ret=1 then
	ls_message="Right|dw_1.SetValue('city',1,'ShenZhen~tSZ') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetValue('city',1,'ShenZhen~tSZ') return -1"
else
	ls_message="Error|dw_1.SetValue('city',1,'ShenZhen~tSZ') return null"
end if
wf_additem(ls_message) 
ls_ret=dw_1.GetValue('city',1)
if ls_ret="ShenZhen~tSZ" then
	ls_message="Right|dw_1.GetValue('city',1) return "+ls_ret
else
	ls_message="Error|dw_1.GetValue('city',1) return "+ls_ret
end if
wf_additem(ls_message) 
li_ret=dw_1.SetValue(6,3,'ShenZhen~tSZ')
if li_ret=1 then
	ls_message="Right|dw_1.SetValue(6,3,'ShenZhen~tSZ') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetValue(6,3,'ShenZhen~tSZ') return -1"
else
	ls_message="Error|dw_1.SetValue(6,3,'ShenZhen~tSZ') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetValue(6,10,'ShenZhen~tSZ')
if li_ret=1 then
	ls_message="Right|dw_1.SetValue(6,10,'ShenZhen~tSZ') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetValue(6,10,'ShenZhen~tSZ') return -1"
else
	ls_message="Error|dw_1.SetValue(6,10,'ShenZhen~tSZ') return null"
end if
wf_additem(ls_message) 
wf_additem("")
//		<Interface param_number="0">Retrieve</Interface>
//		<Interface param_number="2">Update</Interface>
//		<Interface param_number="0">RowCount</Interface>
li_ret=dw_1.RowCount()
if li_ret>=0 then
	ls_message="Right|dw_1.RowCount() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.RowCount() return -1"
else
	ls_message="Error|dw_1.RowCount() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="1">SetFilter</Interface>
//		<Interface param_number="0">Filter</Interface>
//		<Interface param_number="1">SetSort</Interface>
wf_additem("")
li_ret=dw_1.SetSort('dept_id A')
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort('dept_id A') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort('dept_id A') return -1"
else
	ls_message="Error|dw_1.SetSort('dept_id A') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetSort('dept_id D')
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort('dept_id D') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort('dept_id D') return -1"
else
	ls_message="Error|dw_1.SetSort('dept_id D') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetSort('#1 A')
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort('#1 A') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort('#1 A') return -1"
else
	ls_message="Error|dw_1.SetSort('#1 A') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetSort('dept_id D')
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort('#1 D') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort('#1 D') return -1"
else
	ls_message="Error|dw_1.SetSort('#1 D') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetSort('dept_id A,city D')
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort('dept_id A,,city D') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort('dept_id A,city D') return -1"
else
	ls_message="Error|dw_1.SetSort('dept_id A,,city D') return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.SetSort('#1 A,#6 D')
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort('#1 A,#6 D') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort('#1 A,#6 D') return -1"
else
	ls_message="Error|dw_1.SetSort('#1 A,#6 D') return null"
end if
wf_additem(ls_message) 

li_ret=dw_1.SetSort('dept_id A,#6 D')
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort('dept_id A,#6 D') return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort('dept_id A,#6 D') return -1"
else
	ls_message="Error|dw_1.SetSort('dept_id A,#6 D') return null"
end if
wf_additem(ls_message) 
setnull(ls_ret)

wf_additem("")
//		<Interface param_number="0">Sort</Interface>
li_ret=dw_1.Sort()
if li_ret>=0 then
	ls_message="Right|dw_1.Sort() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.Sort() return -1"
else
	ls_message="Error|dw_1.Sort() return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="0">ClassName</Interface>
ls_ret=dw_1.ClassName()
if isnull(ls_ret) then
	ls_message="Error|dw_1.ClassName() return null"
elseif ls_ret="" then
	ls_message="Error|dw_1.ClassName() return ''"
else
	ls_message="Right|dw_1.ClassName() return "+ls_ret
end if
wf_additem(ls_message) 

//		<Interface param_number="0">GetParent</Interface>
string ls_classname="w_integration_case_freeform"
string ls_classname1
powerobject ob
ob = dw_1.getparent()
ls_classname1=ob.classname()
if ( ls_classname=ls_classname1) then
		ls_message="Right|dw_1.getparent() return "+ls_classname
else
		ls_message="Error|dw_1.getparent() return "+ls_classname1	
end if
wf_additem(ls_message) 

//		<Interface param_number="3">RowsDiscard</Interface>
wf_additem("")
if dw_1.deletedcount( )>0 then
	li_ret=dw_1.RowsDiscard(1,2,delete!)
	if li_ret>=0 then
		ls_message="Right|dw_1.RowsDiscard(1,2,delete!) delete buffer has data return "+string(li_ret)
	elseif li_ret=-1 then
		ls_message="Error|dw_1.RowsDiscard(1,2,delete!) delete buffer has data return -1"
	else
		ls_message="Error|dw_1.RowsDiscard(1,2,delete!) delete buffer has data return null"
	end if
else//no data
	li_ret=dw_1.RowsDiscard(1,2,delete!)
	if not isnull(li_ret)then
		ls_message="Right|dw_1.RowsDiscard(1,2,delete!) delete buffer has no data return "+string(li_ret)
	else
		ls_message="Error|dw_1.RowsDiscard(1,2,delete!) delete buffer has no data return null"
	end if	
end if
wf_additem(ls_message) 
if dw_1.filteredcount( ) > 0 then
	li_ret=dw_1.RowsDiscard(1,2,filter!)
	if li_ret>=0 then
		ls_message="Right|dw_1.RowsDiscard(1,2,filter!) filter buffer has data return "+string(li_ret)
	elseif li_ret=-1 then
		ls_message="Error|dw_1.RowsDiscard(1,2,filter!) filter buffer has data return -1"
	else
		ls_message="Error|dw_1.RowsDiscard(1,2,filter!) filter buffer has data return null"
	end if
else
	li_ret=dw_1.RowsDiscard(1,2,filter!)
	if not isnull(li_ret) then
		ls_message="Right|dw_1.RowsDiscard(1,2,filter!) filter buffer has no data return "+string(li_ret)
	else
		ls_message="Error|dw_1.RowsDiscard(1,2,filter!) filter buffer has no data return null"
	end if
end if
wf_additem(ls_message) 
li_ret=dw_1.RowsDiscard(1,2,primary!)
if li_ret>=0 then
	ls_message="Right|dw_1.RowsDiscard(1,2,primary!) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.RowsDiscard(1,2,primary!) return -1"
else
	ls_message="Error|dw_1.RowsDiscard(1,2,primary!) return null"
end if
wf_additem(ls_message) 
wf_additem("")
//		<Interface param_number="2">GetChild</Interface>
li_ret=dw_1.GetChild('dept_id',dwc)
if li_ret=1 then
	ls_message="Right|dw_1.GetChild('dept_id',dwc) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.GetChild('dept_id',dwc) return -1"
else
	ls_message="Error|dw_1.GetChild('dept_id',dwc) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.GetChild('bene_health_ins',dwc)
if li_ret=-1 then
	ls_message="Right|dw_1.GetChild('bene_health_ins',dwc) return -1"
elseif not isnull(li_ret) then
	ls_message="Error|dw_1.GetChild('bene_health_ins',dwc) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetChild('bene_health_ins',dwc) return null"
end if
wf_additem(ls_message) 
li_ret=dw_1.GetChild('111',dwc)
if li_ret=-1 then
	ls_message="Right|dw_1.GetChild('111',dwc) return -1"
elseif not isnull(li_ret) then
	ls_message="Error|dw_1.GetChild('111',dwc) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetChild('111',dwc) return null"
end if
wf_additem(ls_message) 
//		<Interface param_number="6">RowsCopy</Interface>
//		<Interface param_number="6">RowsMove</Interface>
//		<Interface param_number="3">Find</Interface>

//		<Interface param_number="0">Print</Interface>
//		<Interface param_number="0">SaveAs</Interface>
//		<Interface param_number="0">ResetUpdate</Interface>
li_ret=dw_1.ResetUpdate()
if li_ret>=0 then
	ls_message="Right|dw_1.ResetUpdate() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.ResetUpdate() return -1"
else
	ls_message="Error|dw_1.ResetUpdate() return null"
end if
wf_additem(ls_message) 

object dwtypeof
dwtypeof = dw_1.typeof()
if dwtypeof=datawindow! then
	ls_message="Right|dw_1.typeof() return datawindow!"
else
	ls_message="Error|dw_1.typeof() return "
end if
wf_additem(ls_message) 
wf_additem("")

//		<Interface param_number="0">Reset</Interface>
//li_ret=dw_1.Reset()
//if li_ret=1 then
//	ls_message="Right|dw_1.Reset() return "+string(li_ret)
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.Reset() return -1"
//else
//	ls_message="Error|dw_1.Reset() return null"
//end if
//
//		<Interface param_number="1">SetFilter</Interface>

li_ret = dw_1.setFilter("#1 = 100")
if li_ret = 1 then
	ls_message="Right|dw_1.setFilter('#1 = 100') return "+string(li_ret)
else
	ls_message="Error|dw_1.setFilter('#1 = 100') return "+string(li_ret)
end if
wf_additem(ls_message) 

li_ret = dw_1.setFilter("dept_id = 100")
if li_ret = 1 then
	ls_message="Right|dw_1.setFilter('dept_id = 100') return "+string(li_ret)
else
	ls_message="Error|dw_1.setFilter('dept_id = 100') return "+string(li_ret)
end if
wf_additem(ls_message) 

li_ret = dw_1.setFilter("dept_id = 100 and #2 > 100")
if li_ret = 1 then
	ls_message="Right|dw_1.setFilter('dept_id = 100 and #2 > 100') return "+string(li_ret)
else
	ls_message="Error|dw_1.setFilter('dept_id = 100 and #2 > 100') return "+string(li_ret)
end if
wf_additem(ls_message) 

li_ret = dw_1.setFilter("")
if li_ret = 1 then
	ls_message="Right|dw_1.setFilter('dept_id = 100') return "+string(li_ret)
else
	ls_message="Error|dw_1.setFilter('dept_id = 100') return "+string(li_ret)
end if
wf_additem(ls_message) 
//		<Interface param_number="1">Filter</Interface>
//1.Filter BufferÖÐÓÐÊý¾Ý
//	1.filter±í´ïÊ½Îª""µÄÇé¿ö
//	2.filter±í´ïÊ½²»Îª""µÄÇé¿ö
//2.Filter BufferÖÐÃ»ÓÐÊý¾Ý
//	1.filter±í´ïÊ½Îª""µÄÇé¿ö
//	2.filter±í´ïÊ½²»Îª""µÄÇé¿ö
dw_1.setFilter("#1 = 300")
li_ret =dw_1.filter()
if li_ret = 1 then
	ls_message="Right|dw_1.filter() [setFilter('#1 = 300')] return "+string(li_ret)
else
	ls_message="Error|dw_1.filter() [setFilter('#1 = 300')] return "+string(li_ret)
end if
wf_additem(ls_message) 


dw_1.setFilter("#1 = 100")
li_ret =dw_1.filter()
if li_ret = 1 then
	ls_message="Right|dw_1.filter() [setFilter('#1 = 100')] return "+string(li_ret)
else
	ls_message="Error|dw_1.filter() [setFilter('#1 = 100')] return "+string(li_ret)
end if
wf_additem(ls_message) 

dw_1.setFilter("")
li_ret =dw_1.filter()
if li_ret = 1 and dw_1.FilteredCount()=0 then
	ls_message="Right|dw_1.filter() [setFilter('')] return "+string(li_ret)
else
	ls_message="Error|dw_1.filter() [setFilter('')] return "+string(li_ret)
end if
wf_additem(ls_message) 

dw_1.setFilter("")
li_ret =dw_1.filter()
if li_ret = 1 and dw_1.FilteredCount()=0 then
	ls_message="Right|dw_1.filter() [setFilter('')] return "+string(li_ret)
else
	ls_message="Error|dw_1.filter() [setFilter('')] return "+string(li_ret)
end if
wf_additem(ls_message) 

dw_1.setFilter("#1 = 100")
li_ret =dw_1.filter()
if li_ret = 1 then
	ls_message="Right|dw_1.filter() [setFilter('#1 = 100')] return "+string(li_ret)
else
	ls_message="Error|dw_1.filter() [setFilter('#1 = 100')] return "+string(li_ret)
end if
wf_additem(ls_message) 
wf_additem("")
//		<Interface param_number>SetTabOrder()</Interface>

//int a
//setnull(li_null)
//a=dw_1.SetTabOrder(100, 1)// -1
////a=dw_1.SetTabOrder("dfsde", 1)//µ¯³ö´íÎó´°¿Ú -1
//a=dw_1.SetTabOrder(4, li_null)//null=
//a=dw_1.SetTabOrder(10, 32768)//-1
//a=dw_1.SetTabOrder(2, 0) //event -1
//a=dw_1.SetTabOrder("city", 0) //event 1
//wf_additem("")


li_ret=dw_1.SetTabOrder(100, 1)// -1
if li_ret = -1 then
	ls_message="Right|dw_1.SetTabOrder(100, 1) return "+string(li_ret)
else
	ls_message="Error|JS dw_1.SetTabOrder(100, 1) return "+string(li_ret)
end if
wf_additem(ls_message) 

/*li_ret=dw_1.SetTabOrder(4, li_null)//null=
if isnull(li_ret) then
	ls_message="Right|dw_1.SetTabOrder(4, null) return null"
else
	ls_message="Error|dw_1.SetTabOrder(4, null) return "+string(li_ret)
end if
wf_additem(ls_message) */


li_ret=dw_1.SetTabOrder(4, 3)
if li_ret= -1 then
	ls_message="Right|dw_1.SetTabOrder(4, 3) return "+string(li_ret)
else
	ls_message="Error|dw_1.SetTabOrder(4, 3) return "+string(li_ret)
end if
wf_additem(ls_message) 


li_ret=dw_1.SetTabOrder(10, 32768)//-1
if li_ret = -1 then
	ls_message="Right|dw_1.SetTabOrder(10, 32768) return "+string(li_ret)
else
	ls_message="Error|dw_1.SetTabOrder(10, 32768) return "+string(li_ret)
end if
wf_additem(ls_message) 

li_ret=dw_1.SetTabOrder(11, 32767)//-1
if li_ret >= 1 then
	ls_message="Right|dw_1.SetTabOrder(11, 32767) return "+string(li_ret)
else
	ls_message="Error|dw_1.SetTabOrder(11, 32767) return "+string(li_ret)
end if
wf_additem(ls_message) 

li_ret=dw_1.SetTabOrder(2, 0) //event 1
if li_ret >= 1 then
	ls_message="Right|dw_1.SetTabOrder(2, 0) return "+string(li_ret)
else
	ls_message="Error|dw_1.SetTabOrder(2, 0) return "+string(li_ret)
end if
wf_additem(ls_message) 

li_ret=dw_1.SetTabOrder("city", 0) //event -1
if li_ret >= 1 then
	ls_message="Right|dw_1.SetTabOrder('city', 0) return "+string(li_ret)
else
	ls_message="Error|dw_1.SetTabOrder('city', 0) return "+string(li_ret)
end if
wf_additem(ls_message) 
wf_additem("")



end subroutine

public function integer wf_eventreturn (string as_event);integer li_ret
select returnvalue into :li_ret from eventreturn where event = :as_event;
return li_ret
end function

public subroutine wf_checkevent (string as_function, string as_parameter);string ls_event 

select event into :ls_event from event 
	where function = :as_function and parameter = :as_parameter;
if isnull(ls_event) then ls_event = ""	
if ls_event = is_event then
	wf_additem("Right|"+as_function+" "+as_parameter+"Event:"+is_event)
else
	wf_additem("Error|"+as_function+" "+as_parameter+" PB Event:"+ls_event)
	wf_additem("Error|"+as_function+" "+as_parameter+" IE Event:"+is_event)
end if

is_event = ""
end subroutine

public subroutine wf_event ();integer li_count
dw_1.dataobject="d_child"
dw_1.settransobject(sqlca)
is_event = ""
dw_1.Retrieve()
wf_checkevent("Retrieve",",hasdata")

dw_1.Resize(dw_1.width - 10,dw_1.height - 10)
wf_checkevent("Resize",",hasdata")

dw_1.reset()
dw_1.InsertRow(-1)
wf_checkevent("InsertRow","-1,nodata")
dw_1.update()
wf_checkevent("update","1,nodata")

dw_1.reset()
dw_1.InsertRow(0)
wf_checkevent("InsertRow","0,nodata")

dw_1.reset()
dw_1.InsertRow(10)
wf_checkevent("InsertRow","10,nodata")

dw_1.reset()
dw_1.InsertRow(1000)
wf_checkevent("InsertRow","1000,nodata")

dw_1.reset()
dw_1.ScrollNextRow()
wf_checkevent("scrollnextrow",",nodata")

dw_1.ScrollPriorRow()
wf_checkevent("ScrollPriorRow",",nodata")

dw_1.ScrollNextPage()
wf_checkevent("ScrollNextPage",",nodata")
//
dw_1.ScrollPriorPage()
wf_checkevent("ScrollPriorPage",",nodata")


dw_1.ScrollToRow(10)
wf_checkevent("ScrollToRow","10,nodata")

dw_1.ScrollToRow(-1)
wf_checkevent("ScrollToRow","-1,nodata")

dw_1.ScrollToRow(0)
wf_checkevent("ScrollToRow","0,nodata")


dw_1.ScrollToRow(1000)
wf_checkevent("ScrollToRow","1000,nodata")

dw_1.SetRow(-1)
wf_checkevent("SetRow","-1,nodata")
dw_1.SetRow(1)
wf_checkevent("SetRow","1,nodata")

dw_1.SetRow(100)
wf_checkevent("SetRow","100,nodata")


dw_1.SetSort('dept_id A')
dw_1.Sort()
wf_checkevent("Sort",",nodata")

dw_1.SetFilter("#1 = 100")
dw_1.Filter()
wf_checkevent("Filter",",nodata")

dw_1.RowsDiscard(1,2,delete!)
wf_checkevent("RowsDiscard","delete!,nodata")
dw_1.RowsDiscard(1,2,filter!)
wf_checkevent("RowsDiscard","filter!,nodata")
dw_1.RowsDiscard(1,2,primary!)
wf_checkevent("RowsDiscard","primary!,nodata")

dw_1.Reset()
wf_checkevent("Reset",",nodata")

//have data
////dw_1.retrieve()
//dw_1.dataobject="d_child"
//dw_1.settransobject(sqlca)
//dw_1.retrieve()
//is_event =""
//dw_1.update()
//wf_checkevent("update","1,hasdata")
//Integer li_Ret
//dw_1.retrieve()
//SELECT COUNT(*) INTO :li_Ret FROM department WHERE dept_id = 800;
//If li_Ret > 0 Then 
//	delete from department where dept_id = 800;
//End If
//select count(*) into :li_count from department;
//dw_1.object.dept_id[li_count + 1] = 800
//dw_1.object.dept_name[li_count + 1] = "ABCD"
//dw_1.update()
//wf_checkevent("update","2,hasdata")

dw_1.InsertRow(-1)
wf_checkevent("InsertRow","-1,hasdata")

dw_1.InsertRow(0)
wf_checkevent("InsertRow","0,hasdata")

dw_1.InsertRow(10)
wf_checkevent("InsertRow","10,hasdata")

dw_1.InsertRow(1000)
wf_checkevent("InsertRow","1000,hasdata")

dw_1.ScrollNextRow()
wf_checkevent("scrollnextrow",",hasdata")

dw_1.ScrollPriorRow()
wf_checkevent("ScrollPriorRow",",hasdata")

dw_1.ScrollNextPage()
wf_checkevent("ScrollNextPage",",hasdata")

dw_1.ScrollPriorPage()
wf_checkevent("ScrollPriorPage",",hasdata")


dw_1.ScrollToRow(10)
wf_checkevent("ScrollToRow","10,hasdata")

dw_1.ScrollToRow(-1)
wf_checkevent("ScrollToRow","-1,hasdata")

dw_1.ScrollToRow(0)
wf_checkevent("ScrollToRow","0,hasdata")

dw_1.ScrollToRow(1000)
wf_checkevent("ScrollToRow","1000,hasdata")

dw_1.DeleteRow(1)
wf_checkevent("DeleteRow","1,hasdata")
dw_1.DeleteRow(dw_1.getrow())
wf_checkevent("DeleteRow","currentrow,hasdata")
dw_1.DeleteRow(dw_1.rowcount())
wf_checkevent("DeleteRow","rowcount,hasdata")

dw_1.SetItem(1,5,'test')
dw_1.AcceptText()
wf_checkevent("AcceptText","right,hasdata")

dw_1.SetItem(1,1,"abd")
dw_1.AcceptText()
wf_checkevent("AcceptText","error,hasdata")

dw_1.SetRow(-1)
wf_checkevent("SetRow","-1,hasdata")
dw_1.SetRow(1)
wf_checkevent("SetRow","1,hasdata")

dw_1.SetRow(100)
wf_checkevent("SetRow","100,hasdata")


dw_1.SetSort('#1 A')
dw_1.Sort()
wf_checkevent("Sort",",hasdata")

dw_1.SetFilter("#1 = 100")
dw_1.Filter()
wf_checkevent("Filter","100,hasdata")

dw_1.SetFilter("#1 = 999")
dw_1.Filter()
wf_checkevent("Filter","999,hasdata")

dw_1.RowsDiscard(1,2,delete!)
wf_checkevent("RowsDiscard","delete!")
dw_1.RowsDiscard(1,2,filter!)
wf_checkevent("RowsDiscard","filter!")
dw_1.RowsDiscard(1,2,primary!)
wf_checkevent("RowsDiscard","primary!")

dw_1.Reset()
wf_checkevent("Reset",",hasdata")

//rowscopy 


end subroutine

public function boolean wf_additem (string as_message);long ll_index

as_message=as_message+" [Test:"+string(il_testno)+"]"
if pos(lower(as_message),"error") > 0 then
	il_error_no++
	ii_errornumber++
	ll_index=lb_1.additem(as_message)
	lb_1.SetState ( ll_index, true)
else
	if cbx_right.checked then 
		ii_rightnumber++
		ll_index=lb_1.additem(as_message)
	end if

end if

return false
end function

public subroutine wf_rowid ();//		<Interface param_number="0">GetRowFromRowId GetRowIdFromRow</Interface>
string ls_message
integer li_ret,li_rowcount

dw_1.dataobject="d_integration_case_freeform"
dw_1.settransobject(sqlca)
li_rowcount=dw_1.retrieve()

//·µ»Ø-1
li_ret=dw_1.GetRowIdFromRow(0)
if li_ret= -1 then
	ls_message="Right|dw_1.GetRowIdFromRow(0) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowIdFromRow(0) return "+f_string(li_ret)
end if

wf_additem(ls_message)

//·µ»ØID
li_ret=dw_1.GetRowIdFromRow(5,primary!)
if li_ret= 5 then
	ls_message="Right|dw_1.GetRowIdFromRow(5,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowIdFromRow(5,primary!) return "+f_string(li_ret)
end if
wf_additem(ls_message)

//deleterow·µ»ØID
dw_1.deleterow(5)
li_ret=dw_1.GetRowIdFromRow(5,primary!)
if li_ret= 6 then
	ls_message="Right|dw_1.GetRowIdFromRow(5,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowIdFromRow(5,primary!) return "+f_string(li_ret)
end if
wf_additem(ls_message)
//·µ»ØID
li_ret=dw_1.GetRowIdFromRow(1,delete!)
if li_ret= 5 then
	ls_message="Right|dw_1.GetRowIdFromRow(5,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowIdFromRow(5,primary!) return "+f_string(li_ret)
end if
wf_additem(ls_message)

//insertrow·µ»ØID
dw_1.insertrow(1)
li_ret=dw_1.GetRowIdFromRow(1,primary!)
if li_ret= li_rowcount+1 then
	ls_message="Right|dw_1.GetRowIdFromRow(1,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowIdFromRow(1,primary!) return "+f_string(li_ret)
end if
wf_additem(ls_message)
//getrowfromrowid
//·µ»Ødelete!ÐÐºÅ
li_ret=dw_1.GetRowFromRowId(5,delete!)
if li_ret=1 then
	ls_message="Right|dw_1.GetRowFromRowId(5,delete!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowFromRowId(5,delete!) return "+f_string(li_ret)
end if
wf_additem(ls_message)


//·µ»Øinsertrow()ÐÐºÅ
li_ret=dw_1.GetRowFromRowId(li_rowcount+1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.GetRowFromRowId(5,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowFromRowId(5,primary!) return "+f_string(li_ret)
end if
wf_additem(ls_message)

//·µ»Øfilter!ÐÐºÅ
dw_1.setfilter("dept_id=0")
dw_1.filter()

li_ret=dw_1.GetRowFromRowId(li_rowcount,filter!)
if li_ret >= 1 then
	ls_message="Right|dw_1.GetRowFromRowId("+string(li_rowcount)+",filter!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowFromRowId("+string(li_rowcount)+",filter!) return "+f_string(li_ret)
end if
wf_additem(ls_message)
//·µ»Ø -1
li_ret=dw_1.GetRowFromRowId(100,filter!)
if li_ret = -1 then
	ls_message="Right|dw_1.GetRowFromRowId(100,filter!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowFromRowId(100,filter!) return "+f_string(li_ret)
end if
wf_additem(ls_message)
//·µ»Ø 0
li_ret = dw_1.GetRowFromRowId(10,primary!)
if li_ret = 0 then
	ls_message="Right|dw_1.GetRowFromRowId(10,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.GetRowFromRowId(10,primary!) return "+f_string(li_ret)
end if
wf_additem(ls_message)

end subroutine

public subroutine wf_testitems (boolean ab_runonly);int i
string ls_item[]
integer li_ItemTotal
if ab_runonly=false then //listbox add items

			ls_item[1]="QueryMode:True - Propperty"
			ls_item[2]="QueryMode:False - Propperty"
			ls_item[3]="QueryMode:True - Function"
			ls_item[4]="QueryMode:False - Function"
			ls_item[5]="QueryMode:True - Events"
			ls_item[6]="QueryMode:False - Events"
			ls_item[7]="QuerySort:True - Propperty"
			ls_item[8]="QuerySort:False - Propperty"
			ls_item[9]="QuerySort:True - Function"
			ls_item[10]="QuerySort:False - Function"
			ls_item[11]="QuerySort:True - Events"
			ls_item[12]="QuerySort:False - Events"
			ls_item[13]="Query:SQLSelect"
					
			//ls_item[10]="button click"
			
			for i=1 to UpperBound(ls_item)
				lb_testitems.additem(string(i,"00")+" "+ls_Item[i])
			next
	
else // run selected in listbox's items


			li_ItemTotal = lb_testitems.TotalItems( )
			il_pos=long(sle_position.text)
			il_counter=0
			
			FOR i = 1 to li_ItemTotal
				
				if lb_testitems.State(i)=1 then
					
					wf_message(lb_testitems.text(i),"QueryMode")
					il_testno=i
					
					choose case i
						case 1
							wf_query_property(true)				
						case 2
							wf_query_property(false)	
						case 3
							wf_Query_True_Function()
						case 4
							wf_Query_False_Function()
						case 5
							wf_Query_True_Event()
						case 6
							wf_Query_False_Event()
						case 7
							wf_querySort_property(true)				
						case 8
							wf_querySort_property(false)	
						case 9
							wf_querySort_True_Function()
						case 10
							wf_querySort_False_Function()
						case 11
							wf_querySort_True_Event()
						case 12
							wf_querySort_False_Event()
						case 13
							wf_SQLSelect()
					end choose
				end if						
			
			NEXT
			
			st_error.text=string(il_error_no)

end if
end subroutine

public subroutine wf_sqlselect ();integer li_ret
integer li_ret2
string ls_SQLSelect
string ls_query
string ls_SQLRight
string ls_message

dw_1.dataobject = "d_querymode_grid"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.object.datawindow.querymode = "yes"

// = 100
ls_query = "QueryClear"
dw_1.object.datawindow.queryclear = "yes"
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)

//=, <>,<, >, <=, >=, LIKE, IN, AND, OR.

// = 100
ls_query = "= 100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// =100
ls_query = "=100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// <> 100
ls_query = "<> 100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// <>100
ls_query = "<>100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// >100
ls_query = "> 100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// >100
ls_query = ">100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// < 100
ls_query = "< 100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// <=100
ls_query = "<100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// >=100
ls_query = ">= 100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// >=100
ls_query = ">=100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// <=100
ls_query = "<=100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// <= 100
ls_query = "<= 100"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"
//and 24
ls_query = "and 24"
wf_setquery(1,3,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

//and24
ls_query = "and24"
wf_setquery(1,3,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// or 24
ls_query = "or 24"
wf_setquery(1,3,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// or24
ls_query = "or24"
wf_setquery(1,3,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// IN (100, 200, 500)
ls_query = "IN (100, 200, 500)"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// IN(100, 200, 500)
ls_query = "IN(100, 200, 500)"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// NOT IN (100, 200, 500)
ls_query = "NOT IN (100, 200, 500)"
wf_setquery(1,2,ls_query)
//ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// not like 'name1%'
ls_query = "not like 'name1%'"
wf_setquery(1,3,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// like 'name1%'
ls_query = "like 'name1%'"
wf_setquery(1,3,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// name1
dw_1.DataObject = 'd_f130a01w07_having'
dw_1.SetTransObject(sqlca)
dw_1.Object.DataWindow.QueryMode = 'yes'

ls_query = "name1"
wf_setquery(1,4,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// name3
dw_1.DataObject = 'd_f130a02_com'
dw_1.SetTransObject(sqlca)
dw_1.Object.DataWindow.QueryMode = 'yes'

ls_query = "name3"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"


// subquery
dw_1.DataObject = 'd_f130a01w07_subquery'
dw_1.SetTransObject(sqlca)
dw_1.Object.DataWindow.QueryMode = 'yes'
			
ls_query = "subquery"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"


// No_settans
dw_1.DataObject = 'd_f130a03_com'
dw_1.Object.DataWindow.QueryMode = 'yes'
			
ls_query = "No_settans"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// ascending
dw_1.DataObject = 'd_f130a02w01_SqlSort'
dw_1.SetTransObject(sqlca)
dw_1.Modify("DataWindow.QuerySort = yes")	

ls_query = "Ascending"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

//descending
dw_1.DataObject = 'd_f130a01w07_parm'
dw_1.SetTransObject(sqlca)
dw_1.Object.DataWindow.QueryMode = 'yes'

ls_query = "Descending"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// DISCONNECT
dw_1.DataObject = 'd_f130a02_com'
dw_1.SetTransObject(sqlca)
DISCONNECT USING SqlCa;
dw_1.Object.DataWindow.Querymode = 'yes'
			
ls_query = "DISCONNECT"
wf_setquery(1,2,ls_query)
ls_sqlselect = dw_1.getsqlselect()
connect USING SqlCa;
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

// subquery
dw_1.DataObject = 'd_f130a03_com'
dw_1.Object.DataWindow.QueryMode = 'yes'
			
ls_query = "After DISCONNECT"
wf_setquery(1,2,ls_query)
ls_SQLRight = wf_dealSql(ls_query,ls_SQLSelect)
dw_1.object.datawindow.queryclear = "yes"

dw_1.dataobject = "d_querymode_grid"
dw_1.settransobject(sqlca)
dw_1.retrieve()

end subroutine

public subroutine wf_setquery (integer ai_row, integer ai_column, string as_query);dw_1.setrow(ai_row)
dw_1.setcolumn(ai_column)
dw_1.settext(as_query)
dw_1.accepttext()
end subroutine

public subroutine wf_querysort_true_function ();integer li_ret
integer li_ret_2
integer li_ret_3
integer li_ret_before,li_ret_after
boolean lb_ret
string ls_ret
string ls_message

dw_1.dataobject = "d_querymode_grid"
dw_1.settransobject(sqlca)
dw_1.retrieve()

dw_1.object.datawindow.querysort = "yes"

// rowcount
li_ret_3 = dw_1.rowcount()
wf_Output('25',f_string(li_ret_3),'rowcount')

//SelectRow GetSelectedRow IsSelected
li_ret = dw_1.SelectRow(5,true)
li_ret_2 = dw_1.GetSelectedRow(0)
lb_ret = dw_1.IsSelected(5)
wf_Output('1',f_string(li_ret),'SelectRow')
wf_Output('5',f_string(li_ret_2),'GetSelectedRow')
wf_Output('true',f_string(lb_ret),'IsSelected')

//GroupCalc
li_ret = dw_1.GroupCalc()
wf_Output('1',f_string(li_ret),'GroupCalc')

//setrow getrow
li_ret = dw_1.setrow(2)
li_ret_2 = dw_1.getrow()
wf_Output('1',f_string(li_ret),'setrow')
wf_Output('2',f_string(li_ret_2),'getrow')

//ModifiedCount
dw_1.setcolumn(2)
dw_1.settext(">10")

li_ret_2 = dw_1.accepttext()
li_ret = dw_1.ModifiedCount()
wf_Output('1',f_string(li_ret_2),'accepttext')
//wf_Output('2',f_string(li_ret),'ModifiedCount')

//GetRowFromRowId
li_ret = dw_1.GetRowFromRowId(1)
wf_Output('0',f_string(li_ret),'GetRowFromRowId')

//GetRowIdFromRow
li_ret = dw_1.GetRowIdFromRow(1)
wf_Output('95',f_string(li_ret),'GetRowIdFromRow')

//Print
li_ret = dw_1.Print()
wf_Output('1',f_string(li_ret),'Print')

//SaveAs
li_ret = dw_1.SaveAs("C:\QuerySortTrue.txt", Text!, FALSE)
wf_Output('1',f_string(li_ret),'SaveAs')

end subroutine

public subroutine wf_querysort_true_event ();cbx_2.checked = true
cbx_3.checked = true
cbx_4.checked = true

dw_1.object.datawindow.querysort = "yes"

cbx_2.checked = false
cbx_3.checked = false
cbx_4.checked = false
end subroutine

public subroutine wf_querysort_property (boolean ab_querysort);integer li_ret
boolean lb_ret
string ls_ret
string ls_retSQl
string ls_message

if ab_querysort = true then
	dw_1.object.datawindow.querySort = "yes"
else
	dw_1.object.datawindow.querySort = "no"
end if

//set criteria.dialog = "Yes"
dw_1.object.emp_lname.criteria.dialog = "Yes"
ls_ret = dw_1.object.emp_lname.criteria.dialog
wf_Output('yes',f_string(ls_ret),'criteria.dialog')

//set criteria.Override_Edit = "Yes"
dw_1.object.emp_lname.criteria.Override_Edit = "Yes"
ls_ret = dw_1.object.emp_lname.criteria.Override_Edit
wf_Output('yes',f_string(ls_ret),'criteria.Override_Edit')

//set criteria.Required = "Yes"
dw_1.object.emp_lname.criteria.Required = "Yes"
ls_ret = dw_1.object.emp_lname.criteria.Required
wf_Output('yes',f_string(ls_ret),'criteria.Required')

//dw_1.retrieve()

//set criteria.dialog = "No"
dw_1.object.emp_lname.criteria.dialog = "No"
ls_ret = dw_1.object.emp_lname.criteria.dialog
wf_Output('no',f_string(ls_ret),'criteria.dialog')

//set criteria.Override_Edit = "No"
dw_1.object.emp_lname.criteria.Override_Edit = "No"
ls_ret = dw_1.object.emp_lname.criteria.Override_Edit
wf_Output('no',f_string(ls_ret),'criteria.Override_Edit')

//set criteria.Required = "No"
dw_1.object.emp_lname.criteria.Required = "No"
ls_ret = dw_1.object.emp_lname.criteria.Required
wf_Output('no',f_string(ls_ret),'criteria.Required')

//dw_1.retrieve()


end subroutine

public subroutine wf_querysort_false_function ();integer li_ret
integer li_ret_2
integer li_ret_3
integer li_ret_before,li_ret_after
boolean lb_ret
string ls_ret
string ls_message

dw_1.dataobject = "d_querymode_grid"
dw_1.settransobject(sqlca)
dw_1.retrieve()

dw_1.object.datawindow.querySort = "yes"
dw_1.object.datawindow.querySort = "no"

//rowcount
li_ret_3 = dw_1.rowcount()
wf_Output('24',f_string(li_ret_3),'rowcount')

//SelectRow GetSelectedRow IsSelected
li_ret = dw_1.SelectRow(5,true)
li_ret_2 = dw_1.GetSelectedRow(0)
lb_ret = dw_1.IsSelected(5)
wf_Output('1',f_string(li_ret),'SelectRow')
wf_Output('5',f_string(li_ret_2),'GetSelectedRow')
wf_Output('true',f_string(lb_ret),'IsSelected')

//GroupCalc
li_ret = dw_1.GroupCalc()
wf_Output('1',f_string(li_ret),'GroupCalc')

//setrow getrow
li_ret = dw_1.setrow(2)
li_ret_2 = dw_1.getrow()
wf_Output('1',f_string(li_ret),'setrow')
wf_Output('2',f_string(li_ret_2),'getrow')

//ModifiedCount
dw_1.setcolumn(2)
dw_1.settext("1234")

li_ret_2 = dw_1.accepttext()
li_ret = dw_1.ModifiedCount()
wf_Output('1',f_string(li_ret_2),'accepttext')
//wf_Output('1',f_string(li_ret),'ModifiedCount')

//GetRowFromRowId
li_ret = dw_1.GetRowFromRowId(2)
wf_Output('0',f_string(li_ret),'GetRowFromRowId')

//GetRowIdFromRow
li_ret = dw_1.GetRowIdFromRow(2)
wf_Output('73',f_string(li_ret),'GetRowIdFromRow')

//Print
li_ret = dw_1.Print()
wf_Output('1',f_string(li_ret),'Print')

//SaveAs
li_ret = dw_1.SaveAs("C:\QuerySortFalse.txt", Text!, FALSE)
wf_Output('1',f_string(li_ret),'SaveAs')

end subroutine

public subroutine wf_querysort_false_event ();cbx_2.checked = true
cbx_3.checked = true
cbx_4.checked = true

dw_1.object.datawindow.querysort = "yes"

cbx_2.checked = false
cbx_3.checked = false
cbx_4.checked = false
end subroutine

public subroutine wf_query_true_function ();integer li_ret
integer li_ret_2
integer li_ret_3
integer li_ret_before,li_ret_after
boolean lb_ret
string ls_ret
string ls_message

dw_1.object.datawindow.querymode = true

//rowcount
li_ret = dw_1.rowcount()
wf_Output('24',f_string(li_ret),'rowcount')

//SelectRow GetSelectedRow IsSelected
li_ret = dw_1.SelectRow(5,true)
li_ret_2 = dw_1.GetSelectedRow(0)
lb_ret = dw_1.IsSelected(5)

wf_Output('1',f_string(li_ret),'SelectRow')
wf_Output('5',f_string(li_ret_2),'GetSelectedRow')
wf_Output('true',f_string(lb_ret),'IsSelected')

//GroupCalc
li_ret = dw_1.GroupCalc()
wf_Output('1',f_string(li_ret),'GroupCalc')

//setrow getrow
li_ret = dw_1.setrow(2)
li_ret_2 = dw_1.getrow()
wf_Output('1',f_string(li_ret),'setrow')
wf_Output('2',f_string(li_ret_2),'getrow')

//ModifiedCount
dw_1.setcolumn(2)
dw_1.settext(">10")

li_ret_2 = dw_1.accepttext()
li_ret = dw_1.ModifiedCount()
wf_Output('1',f_string(li_ret_2),'accepttext')
wf_Output('1',f_string(li_ret),'ModifiedCount')

//GetRowFromRowId
li_ret = dw_1.GetRowFromRowId(1)
wf_Output('0',f_string(li_ret),'GetRowFromRowId')

//GetRowIdFromRow
li_ret = dw_1.GetRowIdFromRow(1)
wf_Output('72',f_string(li_ret),'GetRowIdFromRow')

//Print
li_ret = dw_1.Print()
wf_Output('1',f_string(li_ret),'Print')

//SaveAs
li_ret = dw_1.SaveAs("C:\QueryModeTrue.txt", Text!, FALSE)
wf_Output('1',f_string(li_ret),'SaveAs')

end subroutine

public subroutine wf_query_true_event ();cbx_2.checked = true
cbx_3.checked = true
cbx_4.checked = true

dw_1.object.datawindow.querymode = "yes"

cbx_2.checked = false
cbx_3.checked = false
cbx_4.checked = false
end subroutine

public subroutine wf_query_property (boolean ab_querymode);integer li_ret
boolean lb_ret
string ls_ret
string ls_retSQl
string ls_message

if ab_querymode = true then
	dw_1.object.datawindow.querymode = "yes"
else
	dw_1.object.datawindow.querymode = "no"
end if

//set criteria.dialog = "Yes"
dw_1.object.emp_lname.criteria.dialog = "Yes"
ls_ret = dw_1.object.emp_lname.criteria.dialog
wf_Output('yes',f_string(ls_ret),'criteria.dialog = "Yes"')

//set criteria.Override_Edit = "Yes"
dw_1.object.emp_lname.criteria.Override_Edit = "Yes"
ls_ret = dw_1.object.emp_lname.criteria.Override_Edit
wf_Output('yes',f_string(ls_ret),'criteria.Override_Edit = "Yes"')

//set criteria.Required = "Yes"
dw_1.object.emp_lname.criteria.Required = "Yes"
ls_ret = dw_1.object.emp_lname.criteria.Required
wf_Output('yes',f_string(ls_ret),'criteria.Required = "Yes"')

dw_1.retrieve()

//set criteria.dialog = "No"
dw_1.object.emp_lname.criteria.dialog = "No"
ls_ret = dw_1.object.emp_lname.criteria.dialog
wf_Output('no',f_string(ls_ret),'criteria.dialog = "no"')

//set criteria.Override_Edit = "No"
dw_1.object.emp_lname.criteria.Override_Edit = "No"
ls_ret = dw_1.object.emp_lname.criteria.Override_Edit
wf_Output('no',f_string(ls_ret),'criteria.Override_Edit = "no"')

//set criteria.Required = "No"
dw_1.object.emp_lname.criteria.Required = "No"
ls_ret = dw_1.object.emp_lname.criteria.Required
wf_Output('no',f_string(ls_ret),'criteria.Required = "no"')

dw_1.retrieve()


end subroutine

public subroutine wf_query_false_function ();integer li_ret
integer li_ret_2
integer li_ret_3
integer li_ret_before,li_ret_after
boolean lb_ret
string ls_ret
string ls_message

dw_1.object.datawindow.querymode = false

// rowcount
li_ret = dw_1.rowcount()
wf_Output('70',f_string(li_ret),'rowcount')

//SelectRow GetSelectedRow IsSelected
li_ret = dw_1.SelectRow(5,true)
li_ret_2 = dw_1.GetSelectedRow(0)
lb_ret = dw_1.IsSelected(5)
wf_Output('1',f_string(li_ret),'SelectRow')
wf_Output('5',f_string(li_ret_2),'GetSelectedRow')
wf_Output('true',f_string(lb_ret),'IsSelected')

//GroupCalc
li_ret = dw_1.GroupCalc()
wf_Output('1',f_string(li_ret),'GroupCalc')

//setrow getrow
li_ret = dw_1.setrow(2)
li_ret_2 = dw_1.getrow()
wf_Output('1',f_string(li_ret),'setrow')
wf_Output('2',f_string(li_ret_2),'getrow')

//ModifiedCount
dw_1.setcolumn(2)
dw_1.settext("1234")

li_ret_2 = dw_1.accepttext()
li_ret = dw_1.ModifiedCount()
wf_Output('1',f_string(li_ret),'accepttext')
wf_Output('1',f_string(li_ret_2),'ModifiedCount')


//GetRowFromRowId
li_ret = dw_1.GetRowFromRowId(2)
wf_Output('2',f_string(li_ret),'GetRowFromRowId')

//GetRowIdFromRow
li_ret = dw_1.GetRowIdFromRow(2)
wf_Output('2',f_string(li_ret),'GetRowIdFromRow')

//Print
li_ret = dw_1.Print()
wf_Output('1',f_string(li_ret),'Print')

//SaveAs
li_ret = dw_1.SaveAs("C:\QueryModeFalse.txt", Text!, FALSE)
wf_Output('1',f_string(li_ret),'SaveAs')


end subroutine

public subroutine wf_query_false_event ();cbx_2.checked = true
cbx_3.checked = true
cbx_4.checked = true

dw_1.object.datawindow.querymode = "no"

cbx_2.checked = false
cbx_3.checked = false
cbx_4.checked = false
end subroutine

public function string wf_getorderby (datawindow adw_parm1);String	ls_OrderBy, ls_sql
Integer	li_Pos1, li_Pos2

ls_sql = ''
ls_OrderBy = ''
li_Pos1 = 0
li_Pos2 = 0
ls_Sql = adw_parm1.Describe("DataWindow.table.SqlSelect")
ls_Sql = Upper(ls_sql)
li_Pos1 = pos(ls_Sql, 'ORDER BY')
If li_Pos1 > 0 Then 
	li_Pos2 = Len(ls_sql) - li_Pos1 + 1
	ls_OrderBy = Right(ls_sql, li_Pos2)
	Return ls_OrderBy
Else
	Return 'NULL'
End If

end function

public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type);string ls_message[]
//¸ÄsaveasË³Ðò
ls_message[]= {"Right","JS",as_type,as_OriValue}
if as_orivalue = "POP" then ls_message[1] = 'MessageBox'
if wf_dealstring(as_OriValue) = wf_dealstring(as_CurValue) then
	if cbx_right.checked then
		f_outputtext(dw_output,ls_message)
	end if
else
	il_error_no ++
	ii_errornumber++
	ls_message[1] = 'Error'
	ls_message[2] = 'PB'
	f_outputtext(dw_output,ls_message)
	ls_message[2] = 'JS'
	ls_message[4] = as_CurValue
	f_outputtext(dw_output,ls_message)
end if

st_error.text = string(il_error_no)
//ÔÚµ±Ò³¿´µ½POPÐÅÏ¢
if as_orivalue = "POP" and  as_orivalue = as_curvalue then
	dw_output.scrolltorow(dw_output.rowcount())
end if
end subroutine

public function string wf_dealsql (string as_query, string as_sqlselect);string ls_sqlselect,ls_temp
int ls_beginpos,ls_endpos

if as_sqlselect = "" then
	as_sqlselect = dw_1.getsqlselect()
end if
as_sqlselect = lower(as_sqlselect)

ls_beginpos = pos(as_sqlselect,'where (((')
ls_endpos = pos(as_sqlselect,'))) and')
if (ls_beginpos <> 0) and (ls_endpos <> 0) and (ls_endpos <> len(as_sqlselect)) then
	ls_temp = mid(as_sqlselect,1,ls_beginpos + 4)
	ls_temp += mid(as_sqlselect,ls_endpos + 7)
	ls_temp += 'and'
	ls_temp += mid(as_sqlselect,ls_beginpos + 6,ls_endpos - ls_beginpos - 3)
	as_sqlselect = ""
	as_sqlselect = ls_temp
end if

if(cbx_7.checked = true) then
	INSERT INTO v30_querymode
   VALUES (:as_query,:as_sqlselect);
	
	if SQLCA.SQLCode <> 0 then
		messagebox(" INSERT ERROR ",SQLCA.SQLErrText)
	end if	
else
	select sqlselect 
	into :ls_sqlselect 
	from v30_querymode 
	where query=:as_query;
	ls_sqlselect = lower(ls_sqlselect)
	//wf_Output(as_sqlselect,f_string(ls_SQLSelect),as_query)
	wf_Output(f_string(ls_SQLSelect),as_sqlselect,as_query)
	
end if

return ls_sqlselect
end function

public function string wf_dealstring (string as_sqlselect);long start_pos=1
string old_str, new_str, mystring
mystring = as_sqlselect
old_str = " "
new_str = ""
// Find the first occurrence of old_str.
start_pos = Pos(mystring, old_str, start_pos)
// Only enter the loop if you find old_str.
DO WHILE start_pos > 0
    // Replace old_str with new_str.
    mystring = Replace(mystring, start_pos, Len(old_str), new_str)
    // Find the next occurrence of old_str.
    start_pos = Pos(mystring, old_str, start_pos+Len(new_str))
LOOP
mystring = lower(mystring)

return mystring
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
ls_message[]={'[±àºÅ]','','QueryMode '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"QueryMode"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public function integer wf_returnerror ();return il_error_no
end function

public subroutine wf_autorun (boolean ab_outputright, boolean ab_closepopwin, integer ai_testitem);/*
ai_testitem <= 0Ê±È«²¿Ö´ÐÐ¡¡
*/

Long i
long li_rowcount,li_newrowcount


//ÊÇ·ñ¹Ø±Õµ¯³ö´°¿Ú
if ab_closepopwin then
	timer(1)
else
	timer(0)
end if
if not ab_outputright then	cbx_right.checked = false

if ai_testitem <= 0 then ai_testitem = lb_testitems.TotalItems()
 
FOR i = 1 to ai_testitem

	il_testno=i
	ii_errornumber = 0
	li_rowcount = dw_output.rowcount()
	
	lb_testitems.setState(i,true)
	wf_testitems(true)
	lb_testitems.setState(i,false)
	
	if ii_errornumber = 0 and not(cbx_right.checked) then
		li_newrowcount = dw_output.rowcount()
		dw_output.rowsdiscard(li_rowcount + 1,li_newrowcount,Primary!)
	end if
	

NEXT

//±£´æ
cb_save.TriggerEvent(clicked!)
cbx_right.checked = true
timer(0)

end subroutine

on w_integration_case_querymode.create
this.cb_12=create cb_12
this.mle_1=create mle_1
this.cbx_4=create cbx_4
this.cbx_3=create cbx_3
this.cbx_2=create cbx_2
this.cb_all=create cb_all
this.cb_7=create cb_7
this.st_split=create st_split
this.cbx_8=create cbx_8
this.cb_9=create cb_9
this.sle_position=create sle_position
this.cb_save=create cb_save
this.dw_output=create dw_output
this.cbx_right=create cbx_right
this.st_4=create st_4
this.st_error=create st_error
this.cbx_7=create cbx_7
this.cb_1=create cb_1
this.lb_testitems=create lb_testitems
this.cb_11=create cb_11
this.cb_21=create cb_21
this.cb_rsize=create cb_rsize
this.st_2=create st_2
this.st_1=create st_1
this.cb_run=create cb_run
this.cb_19=create cb_19
this.cb_13=create cb_13
this.cb_10=create cb_10
this.cb_4=create cb_4
this.cb_3=create cb_3
this.lb_1=create lb_1
this.cb_2=create cb_2
this.dw_1=create dw_1
this.gb_1=create gb_1
this.gb_testitems=create gb_testitems
this.gb_4=create gb_4
this.dw_3=create dw_3
this.gb_2=create gb_2
this.Control[]={this.cb_12,&
this.mle_1,&
this.cbx_4,&
this.cbx_3,&
this.cbx_2,&
this.cb_all,&
this.cb_7,&
this.st_split,&
this.cbx_8,&
this.cb_9,&
this.sle_position,&
this.cb_save,&
this.dw_output,&
this.cbx_right,&
this.st_4,&
this.st_error,&
this.cbx_7,&
this.cb_1,&
this.lb_testitems,&
this.cb_11,&
this.cb_21,&
this.cb_rsize,&
this.st_2,&
this.st_1,&
this.cb_run,&
this.cb_19,&
this.cb_13,&
this.cb_10,&
this.cb_4,&
this.cb_3,&
this.lb_1,&
this.cb_2,&
this.dw_1,&
this.gb_1,&
this.gb_testitems,&
this.gb_4,&
this.dw_3,&
this.gb_2}
end on

on w_integration_case_querymode.destroy
destroy(this.cb_12)
destroy(this.mle_1)
destroy(this.cbx_4)
destroy(this.cbx_3)
destroy(this.cbx_2)
destroy(this.cb_all)
destroy(this.cb_7)
destroy(this.st_split)
destroy(this.cbx_8)
destroy(this.cb_9)
destroy(this.sle_position)
destroy(this.cb_save)
destroy(this.dw_output)
destroy(this.cbx_right)
destroy(this.st_4)
destroy(this.st_error)
destroy(this.cbx_7)
destroy(this.cb_1)
destroy(this.lb_testitems)
destroy(this.cb_11)
destroy(this.cb_21)
destroy(this.cb_rsize)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_run)
destroy(this.cb_19)
destroy(this.cb_13)
destroy(this.cb_10)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.lb_1)
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.gb_1)
destroy(this.gb_testitems)
destroy(this.gb_4)
destroy(this.dw_3)
destroy(this.gb_2)
end on

event open;dw_1.settransobject(sqlca)
dw_1.retrieve()

end event

event timer;string ls_string[] ={	"Save PDF File As",&
								"Specify Filter",&
								"Specify Sort Columns",&
								"DataWindow",&
								"Appeon Web Library",&
								"DataWindow Error",&
								"Alert",&
								"Specify Retrieval Arguments",&
								"Specify Retrieval Criteria"}
uint  lu_val
int i
for i = 1 to upperbound(ls_string)
	lu_val = FindWindowA(0, ls_string[i])
	if lu_val>0 then
		//if i = 2 or i = 3 then
		//else
			
			send(lu_val,16,0,0)
		//end if
	end if
next
end event

type cb_12 from commandbutton within w_integration_case_querymode
integer x = 1563
integer y = 392
integer width = 402
integer height = 84
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "GetSQLSelect"
end type

event clicked;mle_1.text = dw_1.getsqlselect()
end event

type mle_1 from multilineedit within w_integration_case_querymode
integer x = 1431
integer y = 32
integer width = 983
integer height = 348
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
string text = "none"
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type cbx_4 from checkbox within w_integration_case_querymode
integer x = 2537
integer y = 328
integer width = 722
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Event With Return Value"
end type

type cbx_3 from checkbox within w_integration_case_querymode
integer x = 2537
integer y = 236
integer width = 443
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Show Event"
end type

type cbx_2 from checkbox within w_integration_case_querymode
integer x = 2537
integer y = 140
integer width = 466
integer height = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "RowSelect"
end type

type cb_all from commandbutton within w_integration_case_querymode
integer x = 1138
integer y = 312
integer width = 210
integer height = 84
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "All"
end type

event clicked;wf_autorun(false,true,0)
end event

type cb_7 from commandbutton within w_integration_case_querymode
boolean visible = false
integer x = 2743
integer y = 1996
integer width = 521
integer height = 84
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "SaveFilterAndSort"
end type

type st_split from statictext within w_integration_case_querymode
event ue_mousedown pbm_lbuttondown
event ue_mousemove pbm_mousemove
event ue_mouseup pbm_lbuttonup
integer x = 2565
integer y = 516
integer width = 14
integer height = 1852
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string pointer = "SizeWE!"
long textcolor = 33554432
long backcolor = 8421504
boolean border = true
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

event ue_mousedown;//
If KeyDown(KeyLeftButton!) Then
	This.backcolor = RGB(192,192,192)
End If 
end event

event ue_mousemove;//
If keyDown(keyleftbutton!) Then
	This.X = parent.pointerX()
	dw_1.Width = This.X - 5 - dw_1.X
	lb_1.X = This.x + This.Width + 5
	lb_1.Width = parent.WorkSpaceWidth() - lb_1.X - 10
End If 
end event

event ue_mouseup;//
This.backcolor = parent.BackColor
end event

type cbx_8 from checkbox within w_integration_case_querymode
integer x = 1138
integer y = 68
integer width = 183
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Max"
end type

event clicked;IF this.checked Then
	lb_testitems.Height=800
	lb_testitems.BringToTop = TRUE
else
	lb_testitems.Height=352
end if
end event

type cb_9 from commandbutton within w_integration_case_querymode
boolean visible = false
integer x = 256
integer y = 288
integer width = 146
integer height = 128
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "stop"
end type

event clicked;ib_interrupt=true
end event

type sle_position from singlelineedit within w_integration_case_querymode
boolean visible = false
integer x = 549
integer y = 288
integer width = 146
integer height = 64
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
string text = "0"
borderstyle borderstyle = stylelowered!
end type

type cb_save from commandbutton within w_integration_case_querymode
integer x = 4023
integer y = 288
integer width = 256
integer height = 88
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Save"
end type

event clicked;if dw_output.SaveAs("c:\output.txt", Text!	, FALSE)=1 then
	messagebox("Alert","save to output.text,OK!")
end if
end event

type dw_output from datawindow within w_integration_case_querymode
integer x = 2597
integer y = 520
integer width = 1911
integer height = 1840
integer taborder = 50
string title = "none"
string dataobject = "d_output"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)

end event

type cbx_right from checkbox within w_integration_case_querymode
integer x = 4096
integer y = 64
integer width = 411
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "output Right"
boolean checked = true
end type

type st_4 from statictext within w_integration_case_querymode
integer x = 4169
integer y = 448
integer width = 183
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Error:"
boolean focusrectangle = false
end type

type st_error from statictext within w_integration_case_querymode
integer x = 4389
integer y = 448
integer width = 183
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "0"
boolean focusrectangle = false
end type

type cbx_7 from checkbox within w_integration_case_querymode
integer x = 3401
integer y = 64
integer width = 439
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Save PB Value"
end type

type cb_1 from commandbutton within w_integration_case_querymode
boolean visible = false
integer x = 1243
integer y = 1996
integer width = 402
integer height = 88
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "findrequired"
end type

type lb_testitems from listbox within w_integration_case_querymode
event ue_buttondown pbm_lbuttondown
integer x = 37
integer y = 64
integer width = 1024
integer height = 352
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
boolean multiselect = true
borderstyle borderstyle = stylelowered!
boolean extendedselect = true
end type

event ue_buttondown;//string ls_event
//ls_event = "pbm_lbuttondown"
//is_event += ls_event+","
//if cbx_3.checked then
//	lb_1.additem(ls_event+" flags = "+ string(flags)+" xpos = " + string(xpos) + " ypos = "+string(ypos))
//end if
//if cbx_4.checked then
//	return wf_eventreturn(ls_event)
//end if
//
end event

event constructor;wf_testitems(false)

end event

event doubleclicked;wf_testitems(true)
end event

type cb_11 from commandbutton within w_integration_case_querymode
boolean visible = false
integer x = 695
integer y = 1996
integer width = 549
integer height = 88
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "update two table"
end type

event clicked;//¶à±í¸üÐÂ
//____________________________________________________________________________________________
integer rc
int		li_ret,li_currow
string ls_message

string err
string ls_name,ls_fname,ls_lname
int li_emp_id,li_dept_id

//²åÈëÒ»Êý¾Ý
delete from department_update where dept_id=2;
delete from employee_update where emp_id=22;


dw_1.dataobject = "d_update_twotable"
dw_1.settransobject(sqlca)
dw_1.retrieve()

li_currow = dw_1.insertrow(0)
dw_1.object.department_update_dept_name[li_currow]="twotable"
dw_1.object.department_update_dept_id[li_currow]=2

dw_1.object.employee_update_emp_fname[li_currow]="two"
dw_1.object.employee_update_emp_lname[li_currow]="table"
dw_1.object.employee_update_emp_id[li_currow]=22
dw_1.object.employee_update_dept_id[li_currow]=222
//employee_update_emp_id

rc = dw_1.Update(TRUE, FALSE)


IF rc = 1 THEN
		//Turn off update for department columns.
		dw_1.Modify("department_update_dept_name.Update = No")
		dw_1.Modify("department_update_dept_id.Update = No")
		dw_1.Modify("department_update_dept_id.Key = No")

// Make employee table updatable.
		dw_1.Modify( &
		 "DataWindow.Table.UpdateTable = ~"employee_update~"")

//Turn on update for desired employee columns.
		dw_1.Modify("employee_update_emp_id.Update = Yes")
		dw_1.Modify("employee_update_emp_fname.Update = Yes")
		dw_1.Modify("employee_update_emp_lname.Update = Yes")
		dw_1.Modify("employee_update_dept_id.Update = Yes")
		dw_1.Modify("employee_update_emp_id.Key = Yes")

//Then update the employee table.
		rc = dw_1.Update()
		IF rc = 1 THEN
			COMMIT USING SQLCA;
		ELSE
		ROLLBACK USING SQLCA;
		MessageBox("Status", &
			+ "Update of employee_update table failed. " &
			+ "Rolling back all changes.")
		END IF

ELSE
		ROLLBACK USING SQLCA;
		MessageBox("Status", &
			+ "Update of department_update table failed. " &
			+ "Rolling back changes to department.")

END IF

select count(*) into:li_ret from department_update where dept_id=2;

select dept_name,dept_id into:ls_name,:li_dept_id from department_update where dept_id=2;


if li_ret = 1 and ls_name="twotable" and li_dept_id=2 then
	ls_message="Right|1.Update two table (first table) insert(2,twotable) success rowcount = "+string(li_ret)+" value("+string(li_dept_id)+","+ls_name+")"
else
	ls_message="Error|1.Update two table (first table) insert(2,twotable) success rowcount = "+string(li_ret)+" value("+string(li_dept_id)+","+ls_name+")"
end if
wf_additem(ls_message)

select count(*) into:li_ret from employee_update where emp_id=22;
select emp_fname,emp_lname,emp_id,dept_id into :ls_fname,:ls_lname,:li_emp_id,:li_dept_id from employee_update where emp_id=22;

if li_ret = 1 and ls_fname="two"  and ls_lname="table" and li_emp_id=22 and li_dept_id=222 then
	ls_message="Right|1.Update two table (second table) insert(22,two,table,222) success rowcount = "+string(li_ret)+" value("+string(li_emp_id)+","+ls_fname+","+ls_lname+","+string(li_dept_id)+")"
else
	ls_message="Error|1.Update two table (second table) success rowcount = "+string(li_ret)
end if
wf_additem(ls_message)




end event

type cb_21 from commandbutton within w_integration_case_querymode
boolean visible = false
integer x = 37
integer y = 1996
integer width = 658
integer height = 88
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "rowsmoveandcopy"
end type

type cb_rsize from commandbutton within w_integration_case_querymode
integer x = 4023
integer y = 192
integer width = 256
integer height = 88
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Max"
end type

event clicked;if this.text="Max" then
	
	lb_1.width=lb_1.width+lb_1.x
	lb_1.x=0
	this.text="Min"
	st_split.visible=false
	dw_1.visible=false
else
	lb_1.x=st_split.x+28
	lb_1.width =lb_1.width -st_split.x -5
	this.text="Max"
	st_split.visible=true
	dw_1.visible=true
end if


end event

type st_2 from statictext within w_integration_case_querymode
integer x = 2597
integer y = 448
integer width = 343
integer height = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Result:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_integration_case_querymode
integer y = 448
integer width = 512
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datawindow Display:"
boolean focusrectangle = false
end type

type cb_run from commandbutton within w_integration_case_querymode
integer x = 1138
integer y = 168
integer width = 206
integer height = 96
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Run"
end type

event clicked;wf_testitems(true)
end event

type cb_19 from commandbutton within w_integration_case_querymode
boolean visible = false
integer x = 1646
integer y = 1996
integer width = 366
integer height = 88
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "SaveStatus"
end type

type cb_13 from commandbutton within w_integration_case_querymode
integer x = 4279
integer y = 192
integer width = 256
integer height = 88
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Sort"
end type

event clicked;//if this.text="Sort" then
	lb_1.sorted=true
//	this.text="UnSort"
//else
//	lb_1.sorted=false
//	this.text="Sort"
//end if

end event

type cb_10 from commandbutton within w_integration_case_querymode
integer x = 3474
integer y = 192
integer width = 315
integer height = 88
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Reset DW"
end type

event clicked;dw_1.dataobject = "d_querymode_grid"
dw_1.settransobject(sqlca)
dw_1.retrieve()

end event

type cb_4 from commandbutton within w_integration_case_querymode
integer x = 4279
integer y = 288
integer width = 256
integer height = 88
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Reset"
end type

event clicked;lb_1.reset()
il_error_no=0
st_error.text=string(il_error_no)
dw_output.reset()
end event

type cb_3 from commandbutton within w_integration_case_querymode
boolean visible = false
integer x = 2011
integer y = 1996
integer width = 366
integer height = 88
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "GetItemValue"
end type

event clicked;integer li_ret,li_currow
string ls_ret
boolean lb_ret
date ld_ret
time lt_ret
datetime ldt_ret
decimal ldc_ret
string ls_message,ls_sql
dw_1.dataobject="d_integration_case_freeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//		<Interface param_number="4">GetItemDate</Interface>
//default value
dw_1.setfilter("dept_id=100")
dw_1.filter()
dw_1.deleterow(1)
dw_1.deleterow(1)
if dw_1.deletedcount()=0 or dw_1.filteredcount()=0 then
	messagebox("Message","Please delete a row and filter")
	return
end if
ld_ret=dw_1.GetItemDate(1,'start_date')
if string(ld_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemDate(1,'start_date') return "+string(ld_ret)
elseif not isnull(ld_ret) then
	ls_message="Right|dw_1.GetItemDate(1,'start_date') return "+string(ld_ret)
else
	ls_message="Error|dw_1.GetItemDate(1,'start_date') return null"
end if
wf_additem(ls_message)
//primary! and riginal values
ld_ret=dw_1.GetItemDate(1,'start_date',primary!,true)
if string(ld_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemDate(1,'start_date',primary!,true) return "+string(ld_ret)
elseif not isnull(ld_ret) then
	ls_message="Right|dw_1.GetItemDate(1,'start_date',primary!,true) return "+string(ld_ret)
else
	ls_message="Error|dw_1.GetItemDate(1,'start_date',primary!,true) return null"
end if
wf_additem(ls_message)
//primary! and current values
ld_ret=dw_1.GetItemDate(1,'start_date',primary!,false)
if string(ld_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemDate(1,'start_date',primary!,false) return "+string(ld_ret)
elseif not isnull(ld_ret) then
	ls_message="Right|dw_1.GetItemDate(1,'start_date',primary!,false) return "+string(ld_ret)
else
	ls_message="Error|dw_1.GetItemDate(1,'start_date',primary!,false) return null"
end if
wf_additem(ls_message)
//filter! and original values
ld_ret=dw_1.GetItemDate(1,'start_date',filter!,true)
if string(ld_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemDate(1,'start_date',filter!,true) return "+string(ld_ret)
elseif not isnull(ld_ret) then
	ls_message="Right|dw_1.GetItemDate(1,'start_date',filter!,true) return "+string(ld_ret)
else
	ls_message="Error|dw_1.GetItemDate(1,'start_date',filter!,true) return null"
end if
wf_additem(ls_message)
//filter! and current values
ld_ret=dw_1.GetItemDate(1,'start_date',filter!,false)
if string(ld_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemDate(1,'start_date',filter!,false) return "+string(ld_ret)
elseif not isnull(ld_ret) then
	ls_message="Right|dw_1.GetItemDate(1,'start_date',filter!,false) return "+string(ld_ret)
else
	ls_message="Error|dw_1.GetItemDate(1,'start_date',filter!,false) return null"
end if
wf_additem(ls_message)
//delete! and original values
ld_ret=dw_1.GetItemDate(1,'start_date',delete!,true)
if string(ld_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemDate(1,'start_date',delete!,true) return "+string(ld_ret)
elseif not isnull(ld_ret) then
	ls_message="Right|dw_1.GetItemDate(1,'start_date',delete!,true) return "+string(ld_ret)
else
	ls_message="Error|dw_1.GetItemDate(1,'start_date',delete!,true) return null"
end if
wf_additem(ls_message)

//delete! and current values
ld_ret=dw_1.GetItemDate(1,'start_date',delete!,false)
if string(ld_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemDate(1,'start_date',delete!,false) return "+string(ld_ret)
elseif not isnull(ld_ret) then
	ls_message="Right|dw_1.GetItemDate(1,'start_date',delete!,false) return "+string(ld_ret)
else
	ls_message="Error|dw_1.GetItemDate(1,'start_date',delete!,false) return null"
end if
wf_additem(ls_message)
lb_1.additem("")
//////////////////////////////////////////////////////////////////////////////////////////
//default value
lt_ret=dw_1.GetItemTime(1,'mytime')
if string(lt_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemTime(1,'mytime') return "+string(lt_ret)
elseif not isnull(lt_ret) then
	ls_message="Right|dw_1.GetItemTime(1,'mytime') return "+string(lt_ret)
else
	ls_message="Error|dw_1.GetItemTime(1,'mytime') return null"
end if
wf_additem(ls_message)
//primary! and riginal values
lt_ret=dw_1.GetItemTime(1,'mytime',primary!,true)
if string(lt_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemTime(1,'mytime',primary!,true) return "+string(lt_ret)
elseif not isnull(lt_ret) then
	ls_message="Right|dw_1.GetItemTime(1,'mytime',primary!,true) return "+string(lt_ret)
else
	ls_message="Error|dw_1.GetItemTime(1,'mytime',primary!,true) return null"
end if
wf_additem(ls_message)
//primary! and current values
lt_ret=dw_1.GetItemTime(1,'mytime',primary!,false)
if string(lt_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemTime(1,'mytime',primary!,false) return "+string(lt_ret)
elseif not isnull(lt_ret) then
	ls_message="Right|dw_1.GetItemTime(1,'mytime',primary!,false) return "+string(lt_ret)
else
	ls_message="Error|dw_1.GetItemTime(1,'mytime',primary!,false) return null"
end if
wf_additem(ls_message)
//filter! and original values
lt_ret=dw_1.GetItemTime(1,'mytime',filter!,true)
if string(lt_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemTime(1,'mytime',filter!,true) return "+string(lt_ret)
elseif not isnull(lt_ret) then
	ls_message="Right|dw_1.GetItemTime(1,'mytime',filter!,true) return "+string(lt_ret)
else
	ls_message="Error|dw_1.GetItemTime(1,'mytime',filter!,true) return null"
end if
wf_additem(ls_message)
//filter! and current values
lt_ret=dw_1.GetItemTime(1,'mytime',filter!,false)
if string(lt_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemTime(1,'mytime',filter!,false) return "+string(lt_ret)
elseif not isnull(lt_ret) then
	ls_message="Right|dw_1.GetItemTime(1,'mytime',filter!,false) return "+string(lt_ret)
else
	ls_message="Error|dw_1.GetItemTime(1,'mytime',filter!,false) return null"
end if
wf_additem(ls_message)
//delete! and original values
lt_ret=dw_1.GetItemTime(1,'mytime',delete!,true)
if string(lt_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemTime(1,'mytime',delete!,true) return "+string(lt_ret)
elseif not isnull(lt_ret) then
	ls_message="Right|dw_1.GetItemTime(1,'mytime',delete!,true) return "+string(lt_ret)
else
	ls_message="Error|dw_1.GetItemTime(1,'mytime',delete!,true) return null"
end if
wf_additem(ls_message)

//delete! and current values
lt_ret=dw_1.GetItemTime(1,'mytime',delete!,false)
if string(lt_ret)="1900-01-01" then
	ls_message="Error|dw_1.GetItemTime(1,'mytime',delete!,false) return "+string(lt_ret)
elseif not isnull(lt_ret) then
	ls_message="Right|dw_1.GetItemTime(1,'mytime',delete!,false) return "+string(lt_ret)
else
	ls_message="Error|dw_1.GetItemTime(1,'mytime',delete!,false) return null"
end if
wf_additem(ls_message)

lb_1.additem("")
//////////////////////////////////////////////////////////////////////////////////////////
//		<Interface param_number="4">GetItemDateTime</Interface>
//default value
ldt_ret=dw_1.GetItemDatetime(1,'mydatetime')
if string(ldt_ret)="1900-01-01 00:00:00.000000" then
	ls_message="Error|dw_1.GetItemDatetime(1,'mydatetime') return "+string(ldt_ret)
elseif not isnull(ldt_ret) then
	ls_message="Right|dw_1.GetItemDatetime(1,'mydatetime') return "+string(ldt_ret)
else
	ls_message="Error|dw_1.GetItemDatetime(1,'mydatetime') return null"
end if
wf_additem(ls_message)
//primary! and riginal values
ldt_ret=dw_1.GetItemDateTime(1,'mydatetime',primary!,true)
if string(ldt_ret)="1900-01-01 00:00:00.000000" then
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',primary!,true) return "+string(ldt_ret)
elseif not isnull(ldt_ret) then
	ls_message="Right|dw_1.GetItemDateTime(1,'mydatetime',primary!,true) return "+string(ldt_ret)
else
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',primary!,true) return null"
end if
wf_additem(ls_message)
//primary! and current values
ldt_ret=dw_1.GetItemDateTime(1,'mydatetime',primary!,false)
if string(ldt_ret)="1900-01-01 00:00:00.000000" then
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',primary!,false) return "+string(ldt_ret)
elseif not isnull(ldt_ret) then
	ls_message="Right|dw_1.GetItemDateTime(1,'mydatetime',primary!,false) return "+string(ldt_ret)
else
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',primary!,false) return null"
end if
wf_additem(ls_message)
//filter! and original values
ldt_ret=dw_1.GetItemDateTime(1,'mydatetime',filter!,true)
if string(ldt_ret)="1900-01-01 00:00:00.000000" then
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',filter!,true) return "+string(ldt_ret)
elseif not isnull(ldt_ret) then
	ls_message="Right|dw_1.GetItemDateTime(1,'mydatetime',filter!,true) return "+string(ldt_ret)
else
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',filter!,true) return null"
end if
wf_additem(ls_message)
//filter! and current values
ldt_ret=dw_1.GetItemDateTime(1,'mydatetime',filter!,false)
if string(ldt_ret)="1900-01-01 00:00:00.000000" then
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',filter!,false) return "+string(ldt_ret)
elseif not isnull(ldt_ret) then
	ls_message="Right|dw_1.GetItemDateTime(1,'mydatetime',filter!,false) return "+string(ldt_ret)
else
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',filter!,false) return null"
end if
wf_additem(ls_message)
//delete! and original values
ldt_ret=dw_1.GetItemDateTime(1,'mydatetime',delete!,true)
if string(ldt_ret)="1900-01-01 00:00:00.000000" then
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',delete!,true) return "+string(ldt_ret)
elseif not isnull(ldt_ret) then
	ls_message="Right|dw_1.GetItemDateTime(1,'mydatetime',delete!,true) return "+string(ldt_ret)
else
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',delete!,true) return null"
end if
wf_additem(ls_message)

//delete! and current values
ldt_ret=dw_1.GetItemDateTime(1,'mydatetime',delete!,false)
if string(ldt_ret)="1900-01-01 00:00:00.000000" then
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',delete!,false) return "+string(ldt_ret)
elseif not isnull(ldt_ret) then
	ls_message="Right|dw_1.GetItemDateTime(1,'mydatetime',delete!,false) return "+string(ldt_ret)
else
	ls_message="Error|dw_1.GetItemDateTime(1,'mydatetime',delete!,false) return null"
end if
wf_additem(ls_message)
lb_1.additem("")
//////////////////////////////////////////////////////////////////////////////////////////
//		<Interface param_number="4">GetItemDecimal</Interface>
//default value
ldc_ret=dw_1.GetItemDecimal(1,'mydecimal')
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal') return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemDecimal(1,'mydecimal') return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal') return null"
end if
wf_additem(ls_message)
//primary! and riginal values
ldc_ret=dw_1.GetItemDecimal(1,'mydecimal',primary!,true)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',primary!,true) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemDecimal(1,'mydecimal',primary!,true) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',primary!,true) return null"
end if
wf_additem(ls_message)
//primary! and current values
ldc_ret=dw_1.GetItemDecimal(1,'mydecimal',primary!,false)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',primary!,false) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemDecimal(1,'mydecimal',primary!,false) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',primary!,false) return null"
end if
wf_additem(ls_message)
//filter! and original values
ldc_ret=dw_1.GetItemDecimal(1,'mydecimal',filter!,true)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',filter!,true) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemDecimal(1,'mydecimal',filter!,true) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',filter!,true) return null"
end if
wf_additem(ls_message)
//filter! and current values
ldc_ret=dw_1.GetItemDecimal(1,'mydecimal',filter!,false)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',filter!,false) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemDecimal(1,'mydecimal',filter!,false) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',filter!,false) return null"
end if
wf_additem(ls_message)
//delete! and original values
ldc_ret=dw_1.GetItemDecimal(1,'mydecimal',delete!,true)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',delete!,true) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemDecimal(1,'mydecimal',delete!,true) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',delete!,true) return null"
end if
wf_additem(ls_message)

//delete! and current values
ldc_ret=dw_1.GetItemDecimal(1,'mydecimal',delete!,false)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',delete!,false) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemDecimal(1,'mydecimal',delete!,false) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemDecimal(1,'mydecimal',delete!,false) return null"
end if
wf_additem(ls_message)
lb_1.additem("")

//////////////////////////////////////////////////////////////////////////////////////////
//		<Interface param_number="4">GetItemNumber</Interface>
//default value
ldc_ret=dw_1.GetItemNumber(1,'dept_id')
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id') return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemNumber(1,'dept_id') return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id') return null"
end if
wf_additem(ls_message)
//primary! and riginal values
ldc_ret=dw_1.GetItemNumber(1,'dept_id',primary!,true)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',primary!,true) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemNumber(1,'dept_id',primary!,true) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',primary!,true) return null"
end if
wf_additem(ls_message)
//primary! and current values
ldc_ret=dw_1.GetItemNumber(1,'dept_id',primary!,false)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',primary!,false) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemNumber(1,'dept_id',primary!,false) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',primary!,false) return null"
end if
wf_additem(ls_message)
//filter! and original values
ldc_ret=dw_1.GetItemNumber(1,'dept_id',filter!,true)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',filter!,true) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemNumber(1,'dept_id',filter!,true) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',filter!,true) return null"
end if
wf_additem(ls_message)
//filter! and current values
ldc_ret=dw_1.GetItemNumber(1,'dept_id',filter!,false)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',filter!,false) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemNumber(1,'dept_id',filter!,false) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',filter!,false) return null"
end if
wf_additem(ls_message)
//delete! and original values
ldc_ret=dw_1.GetItemNumber(1,'dept_id',delete!,true)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',delete!,true) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemNumber(1,'dept_id',delete!,true) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',delete!,true) return null"
end if
wf_additem(ls_message)

//delete! and current values
ldc_ret=dw_1.GetItemNumber(1,'dept_id',delete!,false)
if ldc_ret=-1 then
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',delete!,false) return "+string(ldc_ret)
elseif not isnull(ldc_ret) then
	ls_message="Right|dw_1.GetItemNumber(1,'dept_id',delete!,false) return "+string(ldc_ret)
else
	ls_message="Error|dw_1.GetItemNumber(1,'dept_id',delete!,false) return null"
end if
wf_additem(ls_message)
lb_1.additem("")

//////////////////////////////////////////////////////////////////////////////////////////
//		<Interface param_number="4">GetItemString</Interface>
//default value
ls_ret=dw_1.GetItemString(1,'emp_lname')
if ls_ret="" then
	ls_message="Error|dw_1.GetItemString(1,'emp_lname') return "+string(ls_ret)
elseif not isnull(ls_ret) then
	ls_message="Right|dw_1.GetItemString(1,'emp_lname') return "+string(ls_ret)
else
	ls_message="Error|dw_1.GetItemString(1,'emp_lname') return null"
end if
wf_additem(ls_message)
//primary! and riginal values
ls_ret=dw_1.GetItemString(1,'emp_lname',primary!,true)
if ls_ret="" then
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',primary!,true) return "+string(ls_ret)
elseif not isnull(ls_ret) then
	ls_message="Right|dw_1.GetItemString(1,'emp_lname',primary!,true) return "+string(ls_ret)
else
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',primary!,true) return null"
end if
wf_additem(ls_message)
//primary! and current values
ls_ret=dw_1.GetItemString(1,'emp_lname',primary!,false)
if ls_ret="" then
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',primary!,false) return "+string(ls_ret)
elseif not isnull(ls_ret) then
	ls_message="Right|dw_1.GetItemString(1,'emp_lname',primary!,false) return "+string(ls_ret)
else
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',primary!,false) return null"
end if
wf_additem(ls_message)
//filter! and original values
ls_ret=dw_1.GetItemString(1,'emp_lname',filter!,true)
if ls_ret="" then
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',filter!,true) return "+string(ls_ret)
elseif not isnull(ls_ret) then
	ls_message="Right|dw_1.GetItemString(1,'emp_lname',filter!,true) return "+string(ls_ret)
else
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',filter!,true) return null"
end if
wf_additem(ls_message)
//filter! and current values
ls_ret=dw_1.GetItemString(1,'emp_lname',filter!,false)
if ls_ret="" then
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',filter!,false) return "+string(ls_ret)
elseif not isnull(ls_ret) then
	ls_message="Right|dw_1.GetItemString(1,'emp_lname',filter!,false) return "+string(ls_ret)
else
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',filter!,false) return null"
end if
wf_additem(ls_message)
//delete! and original values
ls_ret=dw_1.GetItemString(1,'emp_lname',delete!,true)
if ls_ret="" then
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',delete!,true) return "+string(ls_ret)
elseif not isnull(ls_ret) then
	ls_message="Right|dw_1.GetItemString(1,'emp_lname',delete!,true) return "+string(ls_ret)
else
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',delete!,true) return null"
end if
wf_additem(ls_message)

//delete! and current values
ls_ret=dw_1.GetItemString(1,'emp_lname',delete!,false)
if ls_ret="" then
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',delete!,false) return "+string(ls_ret)
elseif not isnull(ls_ret) then
	ls_message="Right|dw_1.GetItemString(1,'emp_lname',delete!,false) return "+string(ls_ret)
else
	ls_message="Error|dw_1.GetItemString(1,'emp_lname',delete!,false) return null"
end if
wf_additem(ls_message)



end event

type lb_1 from listbox within w_integration_case_querymode
boolean visible = false
integer x = 3653
integer y = 8
integer width = 1975
integer height = 1864
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
boolean multiselect = true
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_integration_case_querymode
integer x = 3474
integer y = 288
integer width = 315
integer height = 88
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Close"
end type

event clicked;string ls_str
ls_str="abc~""
ls_str="abc~'"
Close(parent)
end event

type dw_1 from datawindow within w_integration_case_querymode
event ue_lbuttonup pbm_dwnlbuttonup
event ue_rbuttondown pbm_dwnrbuttondown
event ue_rbuttonup pbm_dwnrbuttonup
event ue_key pbm_dwnkey
event ue_lbuttondown pbm_lbuttondown
integer y = 512
integer width = 2560
integer height = 1864
integer taborder = 10
string title = "none"
string dataobject = "d_querymode_grid"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_lbuttonup;//

string ls_event
ls_event = "lbuttonup"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event ue_rbuttondown;//lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event ue_rbuttonup;string ls_event
ls_event = "rbuttonup"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event ue_key;string ls_event
ls_event = "pbm_dwnkey"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" key = "+ string(key)+" keyflags = "+ string(keyflags))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event ue_lbuttondown;//²»ÊÇdwÌØÓÐÊÂ¼þ£¬ÔÝÊ±²»Ö§³Ö¡£
//string ls_event
//ls_event = "pbm_lbuttondown"
//is_event += ls_event+","
//if cbx_3.checked then
//	lb_1.additem(ls_event+" flags = "+ string(flags)+" xpos = " + string(xpos) + " ypos = "+string(ypos))
//end if
//if cbx_4.checked then
//	return wf_eventreturn(ls_event)
//end if

end event

event clicked;integer li_ret,li_currow
string ls_ret
boolean lb_ret
string ls_message,ls_sql
//		<Interface param_number="0">GetClickedColumn</Interface>  
/*
li_ret=dw_1.GetClickedColumn()
if not isnull(li_ret) then
	ls_message="Right|GetClickedColumn() return "+string(li_ret)
else
	ls_message="Error|GetClickedColumn() return null"
end if
wf_additem(ls_message)

//		<Interface param_number="0">GetClickedRow</Interface> 
li_ret=dw_1.GetClickedRow()
if not isnull(li_ret) then
	ls_message="Right|dw_1.GetClickedRow() return "+string(li_ret)
else
	ls_message="Error|dw_1.GetClickedRow() return null"
end if
wf_additem(ls_message)
*/

if cbx_2.checked then
	this.selectrow(0,false)
	this.selectrow(row,true)
else
	this.selectrow(0,false)
end if
string ls_event
ls_event = "clicked"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" x="+string(x)+" y="+string(y))
	
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if


end event

event buttonclicked;string ls_event
ls_event = "buttonclicked"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+" actionreturncode= " + string(actionreturncode) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
	end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if


end event

event buttonclicking;string ls_event
ls_event = "buttonclicking"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type)
	end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if


end event

event constructor;string ls_event
ls_event = "contructor"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event dberror;string ls_event
ls_event = "dberror"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" sqldbcode = "+string(sqldbcode) + " sqlerrtext = "+sqlerrtext +" sqlsynax = "+sqlsyntax +" row = "+string(row))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event destructor;string ls_event
ls_event = "destructor"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event doubleclicked;string ls_event
ls_event = "doubleclicked"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" x="+string(x)+" y="+string(y))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

//messagebox("",string(dwo.primary[1]))

	
end event

event editchanged;string ls_event
ls_event = "editchanged"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event getfocus;string ls_event
ls_event = "getfocus"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event itemchanged;string ls_event
ls_event = "itemchanged"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event itemerror;string ls_event
ls_event = "itemerror"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event itemfocuschanged;string ls_event
ls_event = "itemfocuschanged"
is_event += ls_event+","
if cbx_3.checked then
	//lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type)
	wf_output(ls_event,ls_event," row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
if ib_trackflag then is_tracklog+="[Event: itemfocuschanged ("+"row:"+string(row)+" dwo:"+string(dwo.name)+")]"
//messagebox("",string(dwo.name))


end event

event losefocus;string ls_event
ls_event = "losefocus"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

end event

event rbuttondown;string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" x="+string(x)+" y="+string(y))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event resize;string ls_event
ls_event = "resize"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+"sizetype = "+string(sizetype)+" newwidth="+string(newwidth)+" newheight="+string(newheight))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event retrieveend;string ls_event
ls_event = "retrieveend"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" rowcount="+string(rowcount))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event retrievestart;string ls_event
ls_event = "retrievestart"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

if cbx_4.checked=false and ii_retrievestart>=0 then 
	return ii_retrievestart //²âÊÔ·µ»ØÖµ
end if
end event

event rowfocuschanged;string ls_event
ls_event = "rowfocuschanged"
is_event += ls_event+","
if cbx_3.checked then
	//lb_1.additem(ls_event+" currentrow="+string(currentrow))
	wf_output(ls_event,ls_event," currentrow="+string(currentrow))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if


if ib_trackflag then is_tracklog+="[Event: rowfocuschanged ("+"currentrow:"+string(currentrow)+")]"//+"@"+string(this.getrow())+"@"+string(this.GetColumn())+"@"+"@"+string(this.rowcount())+"@"
end event

event rowfocuschanging;string ls_event
ls_event = "rowfocuschanging"
is_event += ls_event+","
if cbx_3.checked then
	//lb_1.additem(ls_event+" currentrow="+string(currentrow)+" newrow="+string(newrow))
	wf_output(ls_event,ls_event," currentrow="+string(currentrow)+" newrow="+string(newrow))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

//is_tracklog+="[Event: rowfocuschanging "+"parameter: 1:"+string(currentrow)+" 2:"+string(newrow)+"]"
if ib_trackflag then is_tracklog+="[Event: rowfocuschanging ("+"currentrow:"+string(currentrow)+" newrow:"+string(newrow)+")]"

if ii_Rowfocuschanging=1 then 
	return ii_Rowfocuschanging
end if
end event

event updateend;string ls_event
ls_event = "updateend"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" rowsinserted="+string(rowsinserted)+" rowsupdated="+string(rowsupdated)+" rowdeleted="+string(rowsdeleted))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event updatestart;string ls_event
ls_event = "updatestart"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event scrollhorizontal;string ls_event
ls_event = "scrollhorizontal"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" scrollpos="+string(scrollpos)+" pane="+string(pane))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event scrollvertical;string ls_event
ls_event = "scrollvertical"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" scrollpos="+string(scrollpos))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event sqlpreview;string ls_request,ls_sqltype,ls_buffer
choose case request
	case PreviewFunctionRetrieve!
		ls_request ="PreviewFunctionRetrieve"
	case PreviewFunctionReselectRow!	
		ls_request ="PreviewFunctionReselectRow"
	case PreviewFunctionRetrieve!
		ls_request ="PreviewFunctionUpdate"
end choose		
choose case sqltype
	case PreviewSelect!
		ls_sqltype = "PreviewSelect"
	case PreviewInsert!
		ls_sqltype = "PreviewInsert"
	case PreviewDelete!
		ls_sqltype = "PreviewDelete"
	case PreviewUpdate!
		ls_sqltype = "PreviewUpdate"
end choose		
choose case buffer
	case Primary!
		ls_buffer = "Primary"
	case Delete!	
		ls_buffer = "Delete"
	case Filter!	
		ls_buffer = "Filter"
end choose

string ls_event
ls_event = "sqlpreview"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" sqlpreviewfunction="+ls_request+" sqltype="+ls_sqltype+" sqlsynatax="+sqlsyntax+" buffer="+ls_buffer+" row ="+string(row))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

type gb_1 from groupbox within w_integration_case_querymode
integer x = 3328
integer width = 585
integer height = 448
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Other"
end type

type gb_testitems from groupbox within w_integration_case_querymode
integer width = 1399
integer height = 448
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Function Test"
end type

type gb_4 from groupbox within w_integration_case_querymode
integer x = 3950
integer width = 658
integer height = 448
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "ListBox"
end type

type dw_3 from datawindow within w_integration_case_querymode
boolean visible = false
integer x = 2670
integer y = 1600
integer width = 914
integer height = 576
integer taborder = 30
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_2 from groupbox within w_integration_case_querymode
integer x = 2473
integer y = 4
integer width = 795
integer height = 448
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Event OutPut"
end type

