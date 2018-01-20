$PBExportHeader$w_integration_case_freeform.srw
$PBExportComments$Datawindow Integration Test Case--FreeForm
forward
global type w_integration_case_freeform from window
end type
type cb_4 from commandbutton within w_integration_case_freeform
end type
type lb_2 from listbox within w_integration_case_freeform
end type
type sle_propparm from singlelineedit within w_integration_case_freeform
end type
type cb_set from commandbutton within w_integration_case_freeform
end type
type lb_propparm from listbox within w_integration_case_freeform
end type
type lb_prop from listbox within w_integration_case_freeform
end type
type cb_testbringtotop from commandbutton within w_integration_case_freeform
end type
type cbx_showright from checkbox within w_integration_case_freeform
end type
type cb_autorun from commandbutton within w_integration_case_freeform
end type
type cb_7 from commandbutton within w_integration_case_freeform
end type
type st_split from statictext within w_integration_case_freeform
end type
type cbx_8 from checkbox within w_integration_case_freeform
end type
type cb_9 from commandbutton within w_integration_case_freeform
end type
type sle_position from singlelineedit within w_integration_case_freeform
end type
type cb_8 from commandbutton within w_integration_case_freeform
end type
type dw_output from datawindow within w_integration_case_freeform
end type
type cbx_right from checkbox within w_integration_case_freeform
end type
type st_4 from statictext within w_integration_case_freeform
end type
type st_error from statictext within w_integration_case_freeform
end type
type cbx_7 from checkbox within w_integration_case_freeform
end type
type cb_1 from commandbutton within w_integration_case_freeform
end type
type lb_testitems from listbox within w_integration_case_freeform
end type
type cb_11 from commandbutton within w_integration_case_freeform
end type
type cbx_getobjectatpointer from checkbox within w_integration_case_freeform
end type
type cb_21 from commandbutton within w_integration_case_freeform
end type
type cb_rsize from commandbutton within w_integration_case_freeform
end type
type st_2 from statictext within w_integration_case_freeform
end type
type st_1 from statictext within w_integration_case_freeform
end type
type cbx_6 from checkbox within w_integration_case_freeform
end type
type dw_select from datawindow within w_integration_case_freeform
end type
type cb_run from commandbutton within w_integration_case_freeform
end type
type cb_5 from commandbutton within w_integration_case_freeform
end type
type cb_19 from commandbutton within w_integration_case_freeform
end type
type cb_17 from commandbutton within w_integration_case_freeform
end type
type cb_6 from commandbutton within w_integration_case_freeform
end type
type cbx_4 from checkbox within w_integration_case_freeform
end type
type cbx_3 from checkbox within w_integration_case_freeform
end type
type cbx_2 from checkbox within w_integration_case_freeform
end type
type cbx_1 from checkbox within w_integration_case_freeform
end type
type cb_15 from commandbutton within w_integration_case_freeform
end type
type cb_13 from commandbutton within w_integration_case_freeform
end type
type cb_10 from commandbutton within w_integration_case_freeform
end type
type cb_reset from commandbutton within w_integration_case_freeform
end type
type cb_3 from commandbutton within w_integration_case_freeform
end type
type lb_1 from listbox within w_integration_case_freeform
end type
type cb_2 from commandbutton within w_integration_case_freeform
end type
type dw_1 from datawindow within w_integration_case_freeform
end type
type gb_1 from groupbox within w_integration_case_freeform
end type
type gb_2 from groupbox within w_integration_case_freeform
end type
type gb_testitems from groupbox within w_integration_case_freeform
end type
type gb_4 from groupbox within w_integration_case_freeform
end type
type dw_2 from datawindow within w_integration_case_freeform
end type
type dw_3 from datawindow within w_integration_case_freeform
end type
type cbx_5 from checkbox within w_integration_case_freeform
end type
type gb_5 from groupbox within w_integration_case_freeform
end type
type gb_3 from groupbox within w_integration_case_freeform
end type
type gb_6 from groupbox within w_integration_case_freeform
end type
end forward

global type w_integration_case_freeform from window
integer width = 5979
integer height = 2696
boolean titlebar = true
string title = "Datawindow Integration Test Case"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_4 cb_4
lb_2 lb_2
sle_propparm sle_propparm
cb_set cb_set
lb_propparm lb_propparm
lb_prop lb_prop
cb_testbringtotop cb_testbringtotop
cbx_showright cbx_showright
cb_autorun cb_autorun
cb_7 cb_7
st_split st_split
cbx_8 cbx_8
cb_9 cb_9
sle_position sle_position
cb_8 cb_8
dw_output dw_output
cbx_right cbx_right
st_4 st_4
st_error st_error
cbx_7 cbx_7
cb_1 cb_1
lb_testitems lb_testitems
cb_11 cb_11
cbx_getobjectatpointer cbx_getobjectatpointer
cb_21 cb_21
cb_rsize cb_rsize
st_2 st_2
st_1 st_1
cbx_6 cbx_6
dw_select dw_select
cb_run cb_run
cb_5 cb_5
cb_19 cb_19
cb_17 cb_17
cb_6 cb_6
cbx_4 cbx_4
cbx_3 cbx_3
cbx_2 cbx_2
cbx_1 cbx_1
cb_15 cb_15
cb_13 cb_13
cb_10 cb_10
cb_reset cb_reset
cb_3 cb_3
lb_1 lb_1
cb_2 cb_2
dw_1 dw_1
gb_1 gb_1
gb_2 gb_2
gb_testitems gb_testitems
gb_4 gb_4
dw_2 dw_2
dw_3 dw_3
cbx_5 cbx_5
gb_5 gb_5
gb_3 gb_3
gb_6 gb_6
end type
global w_integration_case_freeform w_integration_case_freeform

type variables
boolean	ib_trackflag=false,ib_interrupt//¸ú×ÙÐÅÏ¢
string 	is_event
string 	is_tracklog,is_trackname
int		ii_retrievestart= -1 //retrieve
int		ii_Rowfocuschanging
int		il_error_no,ii_errornumber = 0,ii_number=1

long		il_counter,il_pos

long		il_testno


//add by liulihua
Integer		il_number
string		is_string
Integer	iFlag
end variables

forward prototypes
public function integer wf_eventreturn (string as_event)
public subroutine wf_savetodb (string as_function, string as_parameter)
public subroutine wf_checkevent (string as_function, string as_parameter)
public subroutine wf_status (integer ai_row, string as_fromstatus, string as_tostatus, string as_type, string as_flag, integer ai_flag)
public function string wf_getstatus (integer ai_row)
public subroutine wf_checkstatus (integer ai_flag)
public function integer wf_checklog (string as_name, string as_content, integer ai_flag)
public function string wf_getvalue (integer ai_row, boolean ab_original)
public subroutine wf_syntax_data ()
public subroutine wf_itemstatus ()
public subroutine wf_dataaccess ()
public subroutine wf_update ()
public subroutine wf_event ()
public subroutine wf_print ()
public subroutine wf_retrieve ()
public subroutine wf_find ()
public subroutine wf_dwbutton ()
public subroutine wf_dwo ()
public subroutine wf_rowsmoveandcopy (integer ai_saveorcheck)
public subroutine wf_rowsmove (integer ai_saveorcheck, string as_operation, datawindow adw_1, long al_startrow, long al_endrow, datawindow adw_2, integer al_beforerow, dwbuffer amovebuffer, dwbuffer atargetbuffer, boolean ab_samedw)
public subroutine wf_rowscopy (integer ai_saveorcheck, string as_operation, datawindow adw_1, long al_startrow, long al_endrow, datawindow adw_2, integer al_beforerow, dwbuffer amovebuffer, dwbuffer atargetbuffer, boolean ab_samedw)
public function boolean wf_count ()
public function boolean wf_additem (string as_message)
public subroutine wf_rowid ()
public subroutine wf_getitemvalue ()
public subroutine wf_rowsmovecopy_old ()
public subroutine wf_updatetwotable ()
public subroutine wf_findrequired (boolean ab_edit, integer ai_save_flag)
public subroutine wf_updatethreetable ()
public subroutine wf_filterandsort (boolean ab_save)
public subroutine wf_save (boolean ab_save, string as_value, string as_flag)
public subroutine wf_message (string as_operate, string as_problem)
public function integer wf_returnerror ()
public function integer wf_str2array (string as_data, ref string as_rv[])
public subroutine wf_run_genfun ()
public function string wf_produce (string as_type)
public subroutine wf_additem (string as_data, listbox alst_ctrl)
public subroutine wf_add_pro ()
public subroutine wf_testitems (boolean ab_runonly)
public subroutine wf_run_property ()
public function string wf_retoutput_message (string as_right, string as_get, string as_pro)
public subroutine wf_random (string as_type, listbox alst)
public subroutine wf_run_genfun2 ()
public subroutine wf_generalfunction (boolean ab_dwreadonly)
end prototypes

event ue_autorun();
cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
//cb_error.TriggerEvent(clicked!)
cb_8.TriggerEvent(clicked!)
cbx_right.checked = true

end event

public function integer wf_eventreturn (string as_event);integer li_ret
select returnvalue into :li_ret from eventreturn where event = :as_event;
return li_ret
end function

public subroutine wf_savetodb (string as_function, string as_parameter);
integer li_count
select count(*) into :li_count from event where function = :as_function and parameter = :as_parameter;
if li_count = 0 then
	insert into event(function,event,parameter) values(:as_function, :is_event,:as_parameter);
else
	update event set event = :is_event where function = :as_function and parameter = :as_parameter;
end if
is_event = ""
end subroutine

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

public subroutine wf_status (integer ai_row, string as_fromstatus, string as_tostatus, string as_type, string as_flag, integer ai_flag);//wf_status(1, "datamodified", "notmodified", "111", "0", 1)
/************************************************************
	Function:		wf_status

	Access: 			public

	Arguments:	
	ai_row			rows number
	as_fromstatus	
	as_tostatus
	as_type			"111"
	as_flag			
	ai_flag			1 - save
						2 - check
	
	Returns:  		None

	Description: 
*************************************************************/
integer	li_count
string	ls_columnstatus,ls_rowstatus,ls_message,ls_columnstatus1,ls_rowstatus1
string	ls_return,ls_originalvalue,ls_originalvalue1,ls_valuetype
string	ls_currentvalue,ls_currentvalue1 
ls_originalvalue = wf_getvalue(ai_row,true)//Ô­Ê¼Öµ
ls_currentvalue  = wf_getvalue(ai_row,false)//ÏÖÓÐÖµ



ls_return = wf_getstatus(ai_row)//»ñÈ¡Ä³ÐÐµÄÐÐÁÐ×´Ì¬
ls_rowstatus = f_get_token(ls_return,",")
ls_columnstatus = ls_return
//ls_valuetype = as_type +"1" //Ô­Ê¼ÖµµÄÀàÐÍ£¬ÎªËÄÎ»
if ai_flag = 1 then//±£´æ
	//±£´æ×´Ì¬
	select count(*) into :li_count from status 
		where fromstatus = :as_fromstatus and tostatus = :as_tostatus and type = :as_type and flag = :as_flag;
	if li_count > 0 then
		update status set columnstatus=:ls_columnstatus,rowstatus = ls_rowstatus,original_data=:ls_originalvalue
				where fromstatus = :as_fromstatus and tostatus = :as_tostatus and type = :as_type and flag = :as_flag;
	else
		insert into status (fromstatus,tostatus,type,columnstatus,rowstatus,flag,original_data,current_data)
				values(:as_fromstatus,:as_tostatus,:as_type,:ls_columnstatus,:ls_rowstatus,:as_flag,:ls_originalvalue,:ls_currentvalue);
	end if

else//¼ì²é
	//¼ì²é×´Ì¬
	select columnstatus,rowstatus,original_data,current_data into :ls_columnstatus1,:ls_rowstatus1,:ls_originalvalue1,:ls_currentvalue1 from status 
		where fromstatus = :as_fromstatus and tostatus = :as_tostatus and type = :as_type and flag = :as_flag;
	if isnull(ls_columnstatus) then ls_columnstatus = ""
	if isnull(ls_rowstatus) then ls_rowstatus = ""
	
	if (ls_columnstatus1 = ls_columnstatus and ls_rowstatus1 = ls_rowstatus) then
		ls_message = "Right|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") return rowstatus:"+ls_rowstatus+" columnstatus:"+ls_columnstatus
		wf_additem(ls_message)
	else
		ls_message = "Error|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") return rowstatus PB:"+ls_rowstatus1+" columnstatus:"+ls_columnstatus1		
		wf_additem(ls_message)
		ls_message = "Error|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") return rowstatus JS:"+ls_rowstatus+" columnstatus:"+ls_columnstatus
		wf_additem(ls_message)
	end if
	
	if (trim(ls_originalvalue1) = trim(ls_originalvalue)) then
		ls_message = "Right|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") original value:"+ls_originalvalue
		wf_additem(ls_message)
	else
		ls_message = "Error|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") original value PB:"+ls_originalvalue1
		wf_additem(ls_message)
		ls_message = "Error|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") original value JS:"+ ls_originalvalue
		wf_additem(ls_message)
	end if
	
	if (trim(ls_currentvalue1) = trim(ls_currentvalue)) then
		ls_message = "Right|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") current value:"+ls_currentvalue
		wf_additem(ls_message)
	else
		ls_message = "Error|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") current value PB:"+ls_currentvalue1
		wf_additem(ls_message)
		ls_message = "Error|("+as_flag+" "+as_fromstatus+"-->"+as_tostatus+":"+as_type+") current value JS:"+ ls_currentvalue
		wf_additem(ls_message)
	end if
end if

end subroutine

public function string wf_getstatus (integer ai_row);dwItemStatus l_status
integer columncount,i
string ls_status,ls_status1
//È¡µÃÐÐµÄ×´Ì¬
l_status = dw_1.getitemstatus(ai_row,0,primary!)
choose case l_status
	case new!
		ls_status = "new"
	case newmodified!
		ls_status = "newmodified"
	case datamodified!
		ls_status = "datamodified"
	case notmodified!
		ls_status = "notmodified"
end choose
columncount = integer(dw_1.object.datawindow.column.count)
for i = 1 to columncount
	l_status = dw_1.getitemstatus(ai_row,i,primary!)
	choose case l_status
		case new!
			ls_status1 = "new"
		case newmodified!
			ls_status1 = "newmodified"
		case datamodified!
			ls_status1 = "datamodified"
		case notmodified!
			ls_status1 = "notmodified"
	end choose
	ls_status = ls_status + "," +ls_status1
next
return ls_status
end function

public subroutine wf_checkstatus (integer ai_flag);/************************************************************
	Function:		wf_checkstatus

	Access: 			public

	Arguments:	
	ai_flag			1 - save
						2 - check
	
	Returns:  		None

	Description: 
*************************************************************/
dwItemStatus l_status
integer li_currow
string ls_null
setnull(ls_null)
//ÐÐ×´Ì¬µÄ¸Ä±ä
//dw_1.dataobject = "d_integration_case_freeform"
dw_1.dataobject = "d_dwitemstaus_feeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//11¡¢row is datamodified 
//111¡¢ÏÖÓÐÐÐµÄÁÐÖµÐÞ¸Ä
//-----------------------------------------------------------

//111
dw_1.object.emp_id[1] = 111
//Rows Status From datamodified to notmodified
dw_1.setitemstatus(1,0,primary!,notmodified!)
////zsb modify
// ai_flag 1Îª±£´æ£¬2ÎªÐÞ¸Ä
if ai_flag <>1 then ai_flag=2
wf_status(1, "datamodified", "notmodified", "111", "0", ai_flag)

//111
//Rows Status From datamodified to new!
dw_1.object.emp_id[2] = 222
dw_1.setitemstatus(2,0,primary!,new!)
wf_status(2, "datamodified", "new", "111", "0",ai_flag)

//111
//Rows Status From datamodified to newmodified
dw_1.object.emp_id[3] = 333
dw_1.setitemstatus(3,0,primary!,newmodified!)
wf_status(3, "datamodified", "newmodified", "111", "0",ai_flag)


dw_1.retrieve()
//-----------------------------------------------------------
///112¡¢ÏÖÓÐÐÐµÄÒ»ÁÐµÄ×´Ì¬ÐÞ¸ÄÎªdatamodified

dw_1.setitemstatus(4,1,primary!,datamodified!)
//Rows Status From datamodified to notmodified
dw_1.setitemstatus(4,0,primary!,notmodified!)
wf_status(4, "datamodified", "notmodified", "112", "0",ai_flag)



//Rows Status From datamodified to new!
dw_1.setitemstatus(5,1,primary!,datamodified!)
dw_1.setitemstatus(5,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(5, "datamodified", "new", "112", "0", 1)
else
	wf_status(5, "datamodified", "new", "112", "0", 2)
end if
//Rows Status From datamodified to newmodified
dw_1.setitemstatus(6,1,primary!,datamodified!)
dw_1.setitemstatus(6,0,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(6, "datamodified", "newmodified", "112", "0", 1)
else	
	wf_status(6, "datamodified", "newmodified", "112", "0", 2)
end if
//-----------------------------------------------------------
///114¡¢ÏÖÓÐÐÐµÄÁ½ÁÐµÄ×´Ì¬ÐÞ¸ÄÎªdatamodified
dw_1.setitemstatus(7,1,primary!,datamodified!)
//Rows Status From datamodified to notmodified
dw_1.setitemstatus(7,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(7, "datamodified", "notmodified", "114", "0", 1)
else	
	wf_status(7, "datamodified", "notmodified", "114", "0", 2)
end if	
//Rows Status From datamodified to new!
dw_1.setitemstatus(8,1,primary!,datamodified!)
dw_1.setitemstatus(8,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(8, "datamodified", "new", "114", "0", 1)
else
	wf_status(8, "datamodified", "new", "114", "0", 2)
end if
//Rows Status From datamodified to newmodified
dw_1.setitemstatus(9,1,primary!,datamodified!)
dw_1.setitemstatus(9,0,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(9, "datamodified", "newmodified", "114", "0", 1)
else	
	wf_status(9, "datamodified", "newmodified", "114", "0", 2)
end if

//-----------------------------------------------------------
///113¡¢²åÈëÐÐ£¬Í¨¹ýsetitemstauts
//Rows Status From datamodified to notmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "notmodified", "113", "0", 1)
else
	wf_status(li_currow, "datamodified", "notmodified", "113", "0", 2)
end if
//Rows Status From datamodified to new!
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "new", "113", "0", 1)
else
	wf_status(li_currow, "datamodified", "new", "113", "0", 2)
end if
//Rows Status From datamodified to newmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "newmodified", "113", "0", 1)
else
	wf_status(li_currow, "datamodified", "newmodified", "113", "0", 2)
end if
//-----------------------------------------------------------
///115¡¢²åÈëÐÐ£¬Í¨¹ýsetitemstauts
//Rows Status From datamodified to notmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "notmodified", "115", "0", 1)
else
	wf_status(li_currow, "datamodified", "notmodified", "115", "0", 2)
end if
//Rows Status From datamodified to new!
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "new", "115", "0", 1)
else
	wf_status(li_currow, "datamodified", "new", "115", "0", 2)
end if
//Rows Status From datamodified to newmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "newmodified", "115", "0", 1)
else
	wf_status(li_currow, "datamodified", "newmodified", "115", "0", 2)
end if

dw_1.retrieve()
//-----------------------------------------------------------
//12¡¢row is new
//121¡¢ÏÖÓÐÊý¾ÝÐÞ¸ÄÎªnew
//Rows Status From new to notmodified
dw_1.setitemstatus(10,0,primary!,new!)
dw_1.setitemstatus(10,0,primary!,notmodified!)
wf_status(10, "new", "notmodified", "121", "0",ai_flag)

//Rows Status From new to datamodified
dw_1.setitemstatus(11,0,primary!,new!)
dw_1.setitemstatus(11,0,primary!,datamodified!)
wf_status(11, "new", "datamodified", "121", "0", ai_flag)

//Rows Status From new to newmodified
dw_1.setitemstatus(12,0,primary!,new!)
dw_1.setitemstatus(12,0,primary!,newmodified!)
wf_status(12, "new", "newmodified", "121", "0", ai_flag)



//122¡¢²åÈëÐÂÐÐ
//Rows Status From new to notmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "new", "notmodified", "122", "0", 1)
else
	wf_status(li_currow, "new", "notmodified", "122", "0", 2)
end if
//Rows Status From new to datamodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "new", "datamodified", "122", "0", 1)
else
	wf_status(li_currow, "new", "datamodified", "122", "0", 2)
end if
//Rows Status From new to notmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "new", "notmodified", "122", "0", 1)
else
	wf_status(li_currow, "new", "notmodified", "122", "0", 2)
end if

dw_1.retrieve()
//----------------------------------------------------------------
//13¡¢row is notmodified
//131¡¢ÏÖÓÐµÄÐÐ
//Rows Status From notmodified to new
dw_1.setitemstatus(20,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(20, "notmodified", "new", "131", "0", 1)
else
	wf_status(20, "notmodified", "new", "131", "0", 2)
end if
//Rows Status From new to datamodified
dw_1.setitemstatus(21,0,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(21, "notmodified", "datamodified", "131", "0", 1)
else
	wf_status(21, "notmodified", "datamodified", "131", "0", 2)
end if
//Rows Status From new to notmodified
dw_1.setitemstatus(22,0,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(22, "notmodified", "newmodified", "131", "0", 1)
else
	wf_status(22, "notmodified", "newmodified", "131", "0", 2)
end if

////notmodified->newmodifiedËø¶¨ÁÐÔÙ²âÒ»²â
//dw_1.setitemstatus(22,0,primary!,newmodified!)
//dw_1.setitemstatus(22,1,primary!,notmodified!)
//wf_status(22, "notmodified", "newmodified", "131a", "0", ai_flag)

//132¡¢²åÈëµÄÐÐ
//Rows Status From notmodified to new
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
dw_1.setitemstatus(20,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "notmodified", "new", "132", "0", 1)
else
	wf_status(li_currow, "notmodified", "new", "132", "0", 2)
end if
//Rows Status From new to datamodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "notmodified", "datamodified", "132", "0", 1)
else
	wf_status(li_currow, "notmodified", "datamodified", "132", "0", 2)
end if
//Rows Status From new to notmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "notmodified", "newmodified", "132", "0", 1)
else
	wf_status(li_currow, "notmodified", "newmodified", "132", "0", 2)
end if
dw_1.retrieve()
//----------------------------------------------------------------------
//14¡¢row is newmodified
//141¡¢ÏÖÓÐµÄÐÐ
//Rows Status From newmodified to new
dw_1.retrieve()
dw_1.setitemstatus(30,0,primary!,newmodified!)
dw_1.setitemstatus(30,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(30, "newmodified", "new", "141", "0", 1)
else
	wf_status(30, "newmodified", "new", "141", "0", 2)
end if
//Rows Status From newmodified to datamodified
dw_1.setitemstatus(31,0,primary!,newmodified!)
dw_1.setitemstatus(31,0,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(31, "newmodified", "datamodified", "141", "0", 1)
else
	wf_status(31, "newmodified", "datamodified", "141", "0", 2)
end if
//Rows Status From newmodified to notmodified
dw_1.setitemstatus(32,0,primary!,newmodified!)
dw_1.setitemstatus(32,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(32, "newmodified", "notmodified", "141", "0", 1)
else
	wf_status(32, "newmodified", "notmodified", "141", "0", 2)
end if




//143¡¢ÏÖÓÐµÄÐÐ±ä³Édatamodified
//Rows Status From newmodified to new
dw_1.setitemstatus(33,0,primary!,datamodified!)
dw_1.setitemstatus(33,0,primary!,newmodified!)
dw_1.setitemstatus(33,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(33, "newmodified", "new", "143", "0", 1)
else
	wf_status(33, "newmodified", "new", "143", "0", 2)
end if
//Rows Status From newmodified to datamodified
dw_1.setitemstatus(34,0,primary!,datamodified!)
dw_1.setitemstatus(34,0,primary!,newmodified!)
dw_1.setitemstatus(34,0,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(34, "newmodified", "datamodified", "143", "0", 1)
else
	wf_status(34, "newmodified", "datamodified", "143", "0", 2)
end if
//Rows Status From newmodified to notmodified
dw_1.setitemstatus(35,0,primary!,datamodified!)
dw_1.setitemstatus(35,0,primary!,newmodified!)
dw_1.setitemstatus(35,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(35, "newmodified", "notmodified", "143", "0", 1)
else
	wf_status(35, "newmodified", "notmodified", "143", "0", 2)
end if
//142¡¢ÐÂ²åÈëµÄÐÐ
//Rows Status From newmodified to new
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,0,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "newmodified", "new", "142", "0", 1)
else
	wf_status(li_currow, "newmodified", "new", "142", "0", 2)
end if
//Rows Status From newmodified to datamodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "newmodified", "datamodified", "142", "0", 1)
else
	wf_status(li_currow, "newmodified", "datamodified", "142", "0", 2)
end if
//Rows Status From newmodified to notmodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "newmodified", "notmodified", "142", "0", 1)
else
	wf_status(li_currow, "newmodified", "notmodified", "142", "0", 2)
end if

//ÁÐ×´Ì¬µÄ¸Ä±ä
dw_1.retrieve()
//21:column is notmodified
//211¡¢ÏÖÓÐÐÐ
//Column status from notmodified to datamodified
dw_1.setitemstatus(1,1,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(1, "notmodified", "datamodified!", "211", "1", 1)
else
	wf_status(1, "notmodified", "datamodified!", "211", "1", 2)
end if
//Column status from notmodified to new!
dw_1.setitemstatus(2,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(2, "notmodified", "new!", "211", "1", 1)
else
	wf_status(2, "notmodified", "new!", "211", "1", 2)
end if
//Column status from notmodified to newmodified!
dw_1.setitemstatus(3,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(3, "notmodified", "newmodified!", "211", "1", 1)
else
	wf_status(3, "notmodified", "newmodified!", "211", "1", 2)
end if
//Column status from notmodified to datamodified
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
dw_1.setitemstatus(1,1,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(1, "notmodified", "datamodified!", "211", "1", 1)
else
	wf_status(1, "notmodified", "datamodified!", "211", "1", 2)
end if
//212:²åÈëÐÐ,¶ÔÐÂÐÐÏÈ±äÎªnotmodified£¬ÔÙ¶ÔÁÐ±äÎªdatamodified
//Column status from notmodified to new!
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
dw_1.setitemstatus(li_currow,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "notmodified", "new!", "212", "1", 1)
else
	wf_status(li_currow, "notmodified", "new!", "212", "1", 2)
end if
//Column status from notmodified to newmodified!
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,notmodified!)
dw_1.setitemstatus(li_currow,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "notmodified", "newmodified!", "212", "1", 1)
else
	wf_status(li_currow, "notmodified", "newmodified!", "212", "1", 2)
end if
//Column status from notmodified to datamodified!
li_currow = dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,datamodified!)
dw_1.setitemstatus(li_currow,1,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "notmodified", "datamodified!", "212", "1", 1)
else
	wf_status(li_currow, "notmodified", "datamodified!", "212", "1", 2)
end if


//22:column is datamodified
//221¡¢ÏÖÓÐÐÐ,Í¨¹ýsetitemstatus,Ê¹ÁÐ±äÎªdatamodified
//Column status from datamodified to notmodified
dw_1.setitemstatus(10,1,primary!,datamodified!)
dw_1.setitemstatus(10,1,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(10, "datamodified", "notmodified!", "221", "1", 1)
else
	wf_status(10, "datamodified", "notmodified!", "221", "1", 2)
end if
//Column status from datamodified to new
dw_1.setitemstatus(11,1,primary!,datamodified!)
dw_1.setitemstatus(11,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(11, "datamodified", "new!", "221", "1", 1)
else
	wf_status(11, "datamodified", "new!", "221", "1", 2)
end if
//Column status from datamodified to newmodified
dw_1.setitemstatus(12,1,primary!,datamodified!)
dw_1.setitemstatus(12,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(12, "datamodified", "newmodified!", "221", "1", 1)
else
	wf_status(12, "datamodified", "newmodified!", "221", "1", 2)
end if
//222¡¢ÏÖÓÐÐÐ,Í¨¹ý¸³Öµ,Ê¹ÁÐ±äÎªdatamodified
//Column status from datamodified to datamodified
dw_1.object.emp_id[21] = 911
dw_1.setitemstatus(21,1,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(21, "datamodified", "notmodified!", "222", "1", 1)
else
	wf_status(21, "datamodified", "notmodified!", "222", "1", 2)
end if
//Column status from datamodified to new
dw_1.object.emp_id[22] = 911
dw_1.setitemstatus(22,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(22, "datamodified", "new!", "222", "1", 1)
else
	wf_status(22, "datamodified", "new!", "222", "1", 2)
end if
//Column status from datamodified to newmodified
dw_1.object.emp_id[23] = 911
dw_1.setitemstatus(23,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(23, "datamodified", "newmodified!", "222", "1", 1)
else
	wf_status(23, "datamodified", "newmodified!", "222", "1", 2)
end if

//223¡¢²åÈëÐÐ,Í¨¹ýsetitemstatus,Ê¹ÁÐ±äÎªdatamodified
//Column status from datamodified to notmodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,1,primary!,datamodified!)
dw_1.setitemstatus(li_currow,1,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "notmodified!", "223", "1", 1)
else
	wf_status(li_currow, "datamodified", "notmodified!", "223", "1", 2)
end if
//Column status from datamodified to new
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,1,primary!,datamodified!)
dw_1.setitemstatus(li_currow,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "new!", "223", "1", 1)
else
	wf_status(li_currow, "datamodified", "new!", "223", "1", 2)
end if
//Column status from datamodified to newmodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,1,primary!,datamodified!)
dw_1.setitemstatus(li_currow,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "datamodified", "newmodified!", "223", "1", 1)
else
	wf_status(li_currow, "datamodified", "newmodified!", "223", "1", 2)
end if
dw_1.retrieve()
//31¡¢ÐÐµÄ×´Ì¬Îªnew
//311¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnotmodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,1,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row new", "column notmodified", "311", "1", 1)
else
	wf_status(li_currow, "row new", "column notmodified", "311", "1", 2)
end if
//312¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªdatamodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,1,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row new", "column datamodified", "312", "1", 1)
else
	wf_status(li_currow, "row new", "column datamodified", "312", "1", 2)
end if
//313¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnewmodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row new", "column newmodified", "313", "1", 1)
else
	wf_status(li_currow, "row new", "column newmodified", "313", "1", 2)
end if

//314¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnew
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row new", "column new", "314", "1", 1)
else
	wf_status(li_currow, "row new", "column new", "314", "1", 2)
end if
//32¡¢ÐÐµÄ×´Ì¬Îªnewmodified
//321¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnotmodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,1,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row newmodified", "column notmodified", "321", "2", 1)
else
	wf_status(li_currow, "row newmodified", "column notmodified", "321", "2", 2)
end if
//322¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªdatamodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,1,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row newmodified", "column datamodified", "322", "2", 1)
else
	wf_status(li_currow, "row newmodified", "column datamodified", "322", "2", 2)
end if
//323¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnewmodified
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row newmodified", "column newmodified", "323", "2", 1)
else
	wf_status(li_currow, "row newmodified", "column newmodified", "323", "2", 2)
end if
//324¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnew
li_currow=dw_1.insertrow(0)
dw_1.setitemstatus(li_currow,0,primary!,newmodified!)
dw_1.setitemstatus(li_currow,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(li_currow, "row newmodified", "column new", "324", "2", 1)
else
	wf_status(li_currow, "row newmodified", "column new", "324", "2", 2)
end if
//33¡¢ÐÐµÄ×´Ì¬Îªnotmodified
//331¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnotmodified
dw_1.setitemstatus(1,1,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(1, "row notmodified", "column notmodified", "331", "2", 1)
else
	wf_status(1, "row notmodified", "column notmodified", "331", "2", 2)
end if
//332¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªdatamodified
dw_1.setitemstatus(2,1,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(2, "row notmodified", "column datamodified", "332", "2", 1)
else
	wf_status(2, "row notmodified", "column datamodified", "332", "2", 2)
end if
//333¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnewmodified
dw_1.setitemstatus(3,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(3, "row notmodified", "column newmodified", "333", "2", 1)
else
	wf_status(3, "row notmodified", "column newmodified", "333", "2", 2)
end if
//334¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnew
dw_1.setitemstatus(4,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(4, "row notmodified", "column new", "334", "2", 1)
else
	wf_status(4, "row notmodified", "column new", "334", "2", 2)
end if

//34¡¢ÐÐµÄ×´Ì¬Îªdatamodified
//341¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnotmodified
dw_1.setitemstatus(10,0,primary!,datamodified!)
dw_1.setitemstatus(10,1,primary!,notmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(10, "row datamodified", "column notmodified", "341", "2", 1)
else
	wf_status(10, "row datamodified", "column notmodified", "341", "2", 2)
end if
//342¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªdatamodified
dw_1.setitemstatus(11,0,primary!,datamodified!)
dw_1.setitemstatus(11,1,primary!,datamodified!)
if ai_flag = 1 then//±£´æ
	wf_status(11, "row datamodified", "column datamodified", "342", "2", 1)
else
	wf_status(11, "row datamodified", "column datamodified", "342", "2", 2)
end if
//343¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnewmodified
dw_1.setitemstatus(12,0,primary!,datamodified!)
dw_1.setitemstatus(12,1,primary!,newmodified!)
if ai_flag = 1 then//±£´æ
	wf_status(12, "row datamodified", "column newmodified", "343", "2", 1)
else
	wf_status(12, "row datamodified", "column newmodified", "343", "2", 2)
end if
//344¡¢ÐÞ¸ÄÁÐµÄ×´Ì¬Îªnew
dw_1.setitemstatus(13,0,primary!,datamodified!)
dw_1.setitemstatus(13,1,primary!,new!)
if ai_flag = 1 then//±£´æ
	wf_status(13, "row datamodified", "column new", "344", "2", 1)
else
	wf_status(13, "row datamodified", "column new", "344", "2", 2)
end if

l_status = dw_1.getitemstatus(li_currow,0,primary!)


end subroutine

public function integer wf_checklog (string as_name, string as_content, integer ai_flag);/************************************************************
	Function:		wf_checklog

	Access: 			public

	Arguments:	
						as_id:				track id
						as_content:	
						ai_flag:			1--save
											2--check
	
	Returns:  		None

	Description: 
	
	Author:			zhushaobin
*************************************************************/
//wf_checklog(as_name,as_content,ai_flag)
//integer li_count
//string ls_columnstatus,ls_rowstatus,ls_message,ls_columnstatus1,ls_rowstatus1
//string ls_return,ls_originalvalue,ls_originalvalue1,ls_valuetype
//
//ls_originalvalue = wf_getvalue(ai_row)//Ô­Ê¼Öµ
//ls_return = wf_getstatus(ai_row)//»ñÈ¡Ä³ÐÐµÄÐÐÁÐ×´Ì¬
//ls_rowstatus = f_get_token(ls_return,",")
//ls_columnstatus = ls_return
//ls_valuetype = as_type +"1" //Ô­Ê¼ÖµµÄÀàÐÍ£¬ÎªËÄÎ»
long li_count,i,li_num
string ls_name,ls_content,ls_message,ls_temp
if ai_flag = 1 then//±£´æ
	li_num=len(as_content)/255
	//±£´æ×´Ì¬
	select count(*) into :li_count from tracklog 
		where name = :as_name ;
	if li_count > 0 then
		delete from tracklog where name = :as_name;
	end if
	if li_num>0 then
		for i=1 to li_num +1 //Êý¾ÝÌ«³¤·Ö¶Î
			ls_content=Mid(as_content,(i -1)*256,255)

			insert into tracklog (name,id,content)
					values(:as_name ,:i,:ls_content );
		next
	else
		insert into tracklog (name,id,content)
					values(:as_name ,1,:as_content );
	end if

else//¼ì²é
	//¼ì²é×´Ì¬
	select count(*) into :li_count from tracklog 
		where name = :as_name ;
	
	for i=1 to li_count
		select content into :ls_temp from tracklog
			where name = :as_name and id=:i ;
		ls_content+=ls_temp
	next
			
			

	if isnull(ls_content) then ls_content = ""
	ls_message="Error|"+as_name+"PB:"+ls_content
							
	if  as_content = ls_content then
		return 1

	else //³ö´íÏÔÊ¾PBÖµ
		wf_additem(ls_message)
		return -1
	end if
end if

return 1

end function

public function string wf_getvalue (integer ai_row, boolean ab_original);//»ñÈ¡Ä³ÐÐµÄÔ­Ê¼»º³åÇøµÄÊý¾Ý
string ls_ret
integer j,columncount
string ls_coltype
columncount = integer(dw_1.object.datawindow.column.count)
for j = 1 to columncount
	ls_coltype = dw_1.describe("#"+string(j)+".coltype")
	choose case lower(left(ls_coltype,5))
		case "char("
			if not isnull(dw_1.getitemstring(ai_row,j,primary!,ab_original))then
				ls_ret = ls_ret + dw_1.getitemstring(ai_row,j,primary!,ab_original) + " "
		end if
		case "date"
			if not isnull(dw_1.getitemdate(ai_row,j,primary!,ab_original)) then
				ls_ret = ls_ret + string(dw_1.getitemdate(ai_row,j,primary!,ab_original),"mm/dd/yyyy") + " "
			end if
		case "datet"
			if not isnull(dw_1.getitemdatetime(ai_row,j,primary!,ab_original)) then
				ls_ret = ls_ret + string(dw_1.getitemdatetime(ai_row,j,primary!,ab_original),"mm/dd/yyyy hh:mm:ss") + " "
			end if
		case "time"
			if not isnull(dw_1.getitemtime(ai_row,j,primary!,ab_original)) then
				ls_ret = ls_ret + string(dw_1.getitemtime(ai_row,j,primary!,ab_original),"hh:mm:ss") + " "
			end if
		case else
			if not isnull(dw_1.getitemnumber(ai_row,j,primary!,ab_original)) then
				ls_ret = ls_ret + string(dw_1.getitemnumber(ai_row,j,primary!,ab_original)) + " "
			end if
	end choose			
next

return ls_ret
end function

public subroutine wf_syntax_data ();//²âÊÔsyntax.data

string ls_null,ls_testname,ls_fun_name,ls_ret,ls_ret_pb,ls_message

dw_1.object.data.primary.original[1,1]=9999
//int,int,int,char,char,char,date,char,char
dw_1.object.data.primary.original[1,2]=0
dw_1.object.data.primary.original[1,3]=0
dw_1.object.data.primary.original[1,4]='| : ; " '
dw_1.object.data.primary.original[1,5]="' / ~t ~n"
//dw_1.object.data.primary.original[1,6]=
//dw_1.object.data.primary.original[1,7]=""//~`!@#$%^&*"
dw_1.object.data.primary.original[1,8]=ls_null
dw_1.object.data.primary.original[1,9]=""
dw_1.object.data.primary.original[1,10]="~`!@#$%^&*"
//dw_1.object.data.primary.original[1,11]=9999
//dw_1.object.data.primary.original[1,12]=9999
//dw_1.object.data.primary.original[1,13]=9999
//dw_1.object.data.primary.original[1,14]=9999
dw_1.setfilter("#1=9999")
dw_1.filter()
ls_ret = dw_1.Describe("DataWindow.Syntax.Data")

ls_testname="DataWindow.Syntax.Data"
ls_fun_name="DataWindow.Syntax.Data"

if 1=2 then //±£´æ
	delete from function where test=:ls_testname and function=:ls_fun_name;
	
	insert into functions(test,function,return_value)
	values(:ls_testname,:ls_fun_name,:ls_ret);
end if

select return_value into :ls_ret_pb from functions where test=:ls_testname and function=:ls_fun_name;

if  ls_ret_pb<>ls_ret then
	ls_message="Right|ds.DataWindow.Syntax.Data return "+ls_ret
else
	ls_message="Error|ds.DataWindow.Syntax.Data pb return "+ls_ret
	wf_additem(ls_message)
	ls_message="Error|ds.DataWindow.Syntax.Data js return "+ls_ret
end if

wf_additem(ls_message)
end subroutine

public subroutine wf_itemstatus ();
////¼ì²éÐÐÁÐ×´Ì¬±ä»¯Ïà»¥Ó°Ïì
wf_checkstatus(2)

//////////////////////////////////////////////////////////////////////////////////////////
end subroutine

public subroutine wf_dataaccess ();integer 		li_ret,li_currow,columncount,j,li_sum,li_saveorcheck=2,i
string 		ls_ret,ls_coltype
boolean 		lb_ret
string 		ls_message,ls_sql
string 		ls_null,ls_ret_pb//,ls_ret
string 		ls_testname,ls_fun_name,ls_argument
setnull(ls_null)


//datastore 	ds
//

////Í¨¹ýgetitemÈ¡Öµ
//cb_3.event clicked()

dw_1.dataobject="d_integration_case_freeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()


dw_2.dataobject="d_integration_case_freeform"
dw_2.settransobject(sqlca)

dw_3.dataobject="d_integration_case_freeform"
dw_3.settransobject(sqlca)


//ds=create datastore
//ds.dataobject=dw_1.dataobject
//ds.settransobject(sqlca)


//»ñÈ¡¼ÆËãÁÐµÄÖµ
li_ret = dw_1.object.add[1]
if li_ret = dw_1.object.dept_id[1] + dw_1.object.emp_id[1] then
	ls_message="Right|computed column add[1] value :"+string(li_ret)
else
	ls_message="Error|computed column add[1] value :"+string(li_ret)
end if
wf_additem(ls_message)
ls_ret = dw_1.object.Status[1]
if ls_ret = "NotModify" then
	ls_message="Right|computed column Status[1] value :"+ls_ret
else
	ls_message="Right|computed column Status[1] value :"+ls_ret
end if
wf_additem(ls_message)
select sum(dept_id) into :li_sum from employee where emp_id<=300;
li_ret = dw_1.object.sum[1]
if li_ret = li_sum then
	ls_message="Right|computed column sum[1] value :"+string(li_ret)
else
	ls_message="Error|computed column sum[1] value :"+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")



//µã²Ù×÷
/////////////////////////////////////
dw_2.object.data=dw_1.object.data
if dw_2.rowcount() = dw_1.rowcount() and f_dw_checkrowdata(dw_1,1,"",dw_2,1,"") then
	ls_message="Right|object.data"
else
	ls_message="Error|object.data"
end if
wf_additem(ls_message)
dw_2.reset()

dw_2.object.data=dw_1.object.data.primary.current
if dw_2.rowcount() = dw_1.rowcount() and f_dw_checkrowdata(dw_1,1,"",dw_2,1,"") then
	ls_message="Right|object.data.primary.current"
else
	ls_message="Error|object.data.primary.current"
end if
wf_additem(ls_message)
dw_2.reset()

dw_2.object.data=dw_1.object.data.primary.original
if dw_2.rowcount() = dw_1.rowcount() and f_dw_checkrowdata(dw_1,1,"",dw_2,1,"") then
	ls_message="Right|object.data.primary.original"
else
	ls_message="Error|object.data.primary.original"
end if
wf_additem(ls_message)
dw_2.reset()

dw_1.deleterow(1)
dw_2.object.data=dw_1.object.data.delete
dw_1.retrieve()
if dw_2.rowcount() = 1 and f_dw_checkrowdata(dw_1,1,"",dw_2,1,"") then
	ls_message="Right|object.data.delete"
else
	ls_message="Error|object.data.delete"
end if
wf_additem(ls_message)
dw_2.reset()

dw_1.setfilter("emp_id <> 299")
dw_1.filter()
dw_2.object.data=dw_1.object.data.filter
dw_1.setfilter("")
dw_1.filter()
li_ret = dw_1.find("emp_id=299",1,dw_1.rowcount())
if dw_2.rowcount() =1 and f_dw_checkrowdata(dw_1,li_ret,"",dw_2,1,"") then
	ls_message="Right|object.data.filter"
else
	ls_message="Error|object.data.filter"
end if
wf_additem(ls_message)
dw_2.reset()


/////////////////////////////////////
dw_2.object.data[2]=dw_1.object.data[1]
if dw_2.rowcount() = 2 and f_dw_checkrowdata(dw_1,1,"",dw_2,2,"") and dw_2.object.dept_id[1] = 100 then
	ls_message="Right|object.data[row]"
else
	ls_message="Error|object.data[row]"
end if
wf_additem(ls_message)
dw_2.reset()



li_currow = dw_1.rowcount()
dw_2.object.dept_id[1,li_currow] = dw_1.object.dept_id[1,li_currow]
dw_2.object.emp_id[1,li_currow] = dw_1.object.emp_id[1,li_currow]
dw_2.object.manager_id[1,li_currow] = dw_1.object.manager_id[1,li_currow]
dw_2.object.emp_fname[1,li_currow] = dw_1.object.emp_fname[1,li_currow]
dw_2.object.emp_lname[1,li_currow] = dw_1.object.emp_lname[1,li_currow]
dw_2.object.city[1,li_currow] = dw_1.object.city[1,li_currow]
dw_2.object.start_date[1,li_currow] = dw_1.object.start_date[1,li_currow]
dw_2.object.zip_code[1,li_currow] = dw_1.object.zip_code[1,li_currow]
dw_2.object.street[1,li_currow] = dw_1.object.street[1,li_currow]
dw_2.object.bene_health_ins[1,li_currow] = dw_1.object.bene_health_ins[1,li_currow]
dw_2.object.bene_life_ins[1,li_currow] = dw_1.object.bene_life_ins[1,li_currow]
dw_2.object.mydatetime[1,li_currow] = dw_1.object.mydatetime[1,li_currow]
dw_2.object.mydecimal[1,li_currow] = dw_1.object.mydecimal[1,li_currow]
dw_2.object.mytime[1,li_currow] = dw_1.object.mytime[1,li_currow]
if dw_2.rowcount() = dw_1.rowcount() and f_dw_checkrowdata(dw_1,1,"",dw_2,1,"") then
	ls_message="Right|object.column[1,rowcount]"
else
	ls_message="Error|object.column[1,rowcount]"
end if
wf_additem(ls_message)
dw_2.reset()

li_ret = dw_1.find("emp_id=999",1,dw_1.rowcount())
if li_ret = 0 then return
li_currow=dw_2.insertrow(0)
dw_2.object.data[li_currow]=dw_1.object.data[li_ret]
if f_dw_checkrowdata(dw_1,li_ret,"",dw_2,li_currow,"") then
	ls_message="Right|object.data[rownum]"
else
	ls_message="Error|object.data[rownum]"
end if
wf_additem(ls_message)
	
li_currow=dw_2.insertrow(0)
columncount = integer(dw_1.object.datawindow.column.count)
for j = 1 to columncount
	dw_2.object.data[li_currow,j]=dw_1.object.data[li_ret,j]
next
if f_dw_checkrowdata(dw_1,li_ret,"",dw_2,li_currow,"") then
	ls_message="Right|object.data[rownum,columnnum]"
else
	ls_message="Error|object.data[rownum,columnnum]"
end if
wf_additem(ls_message)

li_currow=dw_2.insertrow(0)
dw_2.object.data[li_currow,1,li_currow,columncount]=dw_1.object.data[li_ret,1,li_ret,columncount]
if f_dw_checkrowdata(dw_1,li_ret,"",dw_2,li_currow,"") then
	ls_message="Right|object.data[startrow,startcolumn,startrow,endcolumn]"
else
	ls_message="Error|object.data[startrow,startcolumn,startrow,endcolumn]"
end if
wf_additem(ls_message)


li_currow=dw_2.insertrow(0)
for j = 1 to columncount
	ls_coltype = dw_1.describe("#"+string(j)+".coltype")
	choose case lower(left(ls_coltype,5))
		case "char("
			dw_2.setitem(li_currow,j,dw_1.getitemstring(li_ret,j))
		case "date"
			dw_2.setitem(li_currow,j,dw_1.getitemdate(li_ret,j))
		case "datet"
			dw_2.setitem(li_currow,j,dw_1.getitemdatetime(li_ret,j))
		case "time"
			dw_2.setitem(li_currow,j,dw_1.getitemtime(li_ret,j))
		case else
			dw_2.setitem(li_currow,j,dw_1.getitemnumber(li_ret,j))
	end choose			
next
dw_2.accepttext()
if f_dw_checkrowdata(dw_1,li_ret,"",dw_2,li_currow,"") then
	ls_message="Right|setvalue"
else
	ls_message="Error|setvalue"
end if
wf_additem(ls_message)

dw_1.selectrow(0,false)
dw_1.selectrow(li_ret,true)
li_currow=dw_2.insertrow(0)
dw_2.object.data[li_currow]=dw_1.object.data.selected
if f_dw_checkrowdata(dw_1,li_ret,"",dw_2,li_currow,"") then
	ls_message="Right|object.data.selected"
else
	ls_message="Error|object.data.selected"
end if
wf_additem(ls_message)

//li_currow=dw_2.insertrow(0)
//dw_2.selectrow(0,false)
//dw_2.selectrow(li_currow,true)
//dw_2.object.dept_id.selected=dw_1.object.dept_id.selected
//if f_dw_checkrowdata(dw_1,li_ret,dw_2,li_currow) then
//	ls_message="Right|object.column.selected"
//else
//	ls_message="Error|object.data.selected"
//end if
//wf_additem(ls_message)
//



li_currow=dw_2.insertrow(0)
dw_2.object.dept_id[li_currow,li_currow] = dw_1.object.dept_id[li_ret,li_ret]
dw_2.object.emp_id[li_currow,li_currow] = dw_1.object.emp_id[li_ret,li_ret]
dw_2.object.manager_id[li_currow,li_currow] = dw_1.object.manager_id[li_ret,li_ret]
dw_2.object.emp_fname[li_currow,li_currow] = dw_1.object.emp_fname[li_ret,li_ret]
dw_2.object.emp_lname[li_currow,li_currow] = dw_1.object.emp_lname[li_ret,li_ret]
dw_2.object.city[li_currow,li_currow] = dw_1.object.city[li_ret,li_ret]
dw_2.object.start_date[li_currow,li_currow] = dw_1.object.start_date[li_ret,li_ret]
dw_2.object.zip_code[li_currow,li_currow] = dw_1.object.zip_code[li_ret,li_ret]
dw_2.object.street[li_currow,li_currow] = dw_1.object.street[li_ret,li_ret]
dw_2.object.bene_health_ins[li_currow,li_currow] = dw_1.object.bene_health_ins[li_ret,li_ret]
dw_2.object.bene_life_ins[li_currow,li_currow] = dw_1.object.bene_life_ins[li_ret,li_ret]
dw_2.object.mydatetime[li_currow,li_currow] = dw_1.object.mydatetime[li_ret,li_ret]
dw_2.object.mydecimal[li_currow,li_currow] = dw_1.object.mydecimal[li_ret,li_ret]
dw_2.object.mytime[li_currow,li_currow] = dw_1.object.mytime[li_ret,li_ret]
if f_dw_checkrowdata(dw_1,li_ret,"",dw_2,li_currow,"") then
	ls_message="Right|object.column[row,row]"
else
	ls_message="Error|object.column[row,row]"
end if
wf_additem(ls_message)




li_currow=dw_2.insertrow(0)
dw_2.object.dept_id[li_currow] = dw_1.object.dept_id[li_ret]
dw_2.object.emp_id[li_currow] = dw_1.object.emp_id[li_ret]
dw_2.object.manager_id[li_currow] = dw_1.object.manager_id[li_ret]
dw_2.object.emp_fname[li_currow] = dw_1.object.emp_fname[li_ret]
dw_2.object.emp_lname[li_currow] = dw_1.object.emp_lname[li_ret]
dw_2.object.city[li_currow] = dw_1.object.city[li_ret]
dw_2.object.start_date[li_currow] = dw_1.object.start_date[li_ret]
dw_2.object.zip_code[li_currow] = dw_1.object.zip_code[li_ret]
dw_2.object.street[li_currow] = dw_1.object.street[li_ret]
dw_2.object.bene_health_ins[li_currow] = dw_1.object.bene_health_ins[li_ret]
dw_2.object.bene_life_ins[li_currow] = dw_1.object.bene_life_ins[li_ret]
dw_2.object.mydatetime[li_currow] = dw_1.object.mydatetime[li_ret]
dw_2.object.mydecimal[li_currow] = dw_1.object.mydecimal[li_ret]
dw_2.object.mytime[li_currow] = dw_1.object.mytime[li_ret]
if f_dw_checkrowdata(dw_1,li_ret,"",dw_2,li_currow,"") then
	ls_message="Right|object.column[row]"
else
	ls_message="Error|object.column[row]"
end if
wf_additem(ls_message)
lb_1.additem("")

////		<Interface param_number="6">RowsCopy</Interface>
////0
//
//li_ret=dw_1.rowscopy(1,2,primary!,dw_2,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) return null"
//end if
//wf_additem(ls_message)
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_2,i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////1 Í¬Ò»buffer
//li_ret=dw_1.rowscopy(1,2,primary!,dw_1,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_1,i+2,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////1.1Í¬Ò»bufferÓÐ¿ÕÖµ
////data[1,x]=null,data[1,y]=null
////dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)
////3,4
//dw_1.object.data.primary.current[1,4]=ls_null
//dw_1.object.data.primary.current[1,5]=ls_null
//li_ret=dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) return null"
//end if
//wf_additem(ls_message)
//
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_1,dw_1.rowcount() -2+i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
////2
//
//li_ret=dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_2,dw_2.rowcount() -2+i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////3
//li_ret=dw_2.rowscopy(1,2,primary!,dw_1,1,delete!)
//if li_ret=1 then
//	ls_message="Right|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) return -1"
//else
//	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) return null"
//end if
//wf_additem(ls_message)
//
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_2,i,"primary",dw_1,i,"delete")=false then
//		ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
////4
//li_ret=dw_2.rowscopy(1,2,primary!,dw_1,1,filter!)
//if li_ret=1 then
//	ls_message="Right|dw_2.rowscopy(1,2,primary!,dw_1,1,filter!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,filter!) return -1"
//else
//	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,filter!) return null"
//end if
//wf_additem(ls_message)
//
////4.1
//li_ret=dw_1.rowscopy(1,2,delete!,dw_2,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"delete",dw_2,i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"delete",dw_2,i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////4.2
//li_ret=dw_1.rowscopy(1,2,filter!,dw_2,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"filter",dw_2,i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
//
////5
//li_ret=dw_1.rowscopy(1,2,primary!,ds,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dwds_checkrowdata(dw_1,i,"primary",ds,i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
//
//
//
//
//
//
////6
//li_ret=dw_1.rowscopy(1,2,primary!,ds,1000,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) return null"
//end if
//wf_additem(ls_message)
//
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dwds_checkrowdata(dw_1,i,"primary",ds,ds.rowcount() -2+i,"primary")=false then
//		ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
//
//
//
//
////7
//li_ret=ds.rowscopy(1,2,primary!,dw_1,1,delete!)
//if li_ret=1 then
//	ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,delete!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,delete!) return -1"
//else
//	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,delete!) return null"
//end if
//wf_additem(ls_message)
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dwds_checkrowdata(dw_1,i,"delete",ds,i,"primary")=false then
//		ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,delete!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,delete!) data=data"
//	end if
//next
//wf_additem(ls_message)
////
//
////
//li_ret=ds.rowscopy(1,2,primary!,dw_1,1,filter!)
//if li_ret=1 then
//	ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,filter!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,filter!) return -1"
//else
//	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,filter!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dwds_checkrowdata(dw_1,i,"filter",ds,i,"primary")=false then
//		ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,filter!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,filter!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//lb_1.additem("")
////		<Interface param_number="6">RowsMove</Interface>
//
//dw_1.retrieve()
//
////0.001
////²»ÏàÍ¬µÄÊý¾Ý´°¿Ú
////dw_3.dataobject="d_integration_case_freeform"
////dw_3.settransobject(sqlca)
//dw_3.dataobject="d_employee"
//dw_3.settransobject(sqlca)
//dw_3.retrieve()
//i=dw_1.rowcount()
//j=dw_3.rowcount()
//li_ret=dw_1.rowsmove(3,5,primary!,dw_3,1,primary!)
//if li_ret= -1 then
//	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) return -1"
//elseif isnull(li_ret) then
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) return null"
//else
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) return "+string(li_ret)
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//
//if i<>dw_1.rowcount() and j<>dw_3.rowcount() then
//	
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) data<>data"
//else
//	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) data=data"
//end if
//wf_additem(ls_message)
//
//dw_3.dataobject="d_integration_case_freeform"
//dw_3.settransobject(sqlca)
//
////dw_1.rowsmove(3,5,primary!,dw_1,4,primary!)//²»±ä
////0.01
//dw_3.reset()
//
//dw_1.rowscopy(3,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,5,primary!,dw_1,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////dw_1.rowsmove(3,5,primary!,dw_1,2,primary!)
////0.02
//dw_3.reset()
//dw_1.rowscopy(3,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,5,primary!,dw_1,2,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 3
//	if f_dw_checkrowdata(dw_1,i+1,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////dw_1.rowsmove(3,5,primary!,dw_1,7,primary!)
////0.03
//dw_3.reset()
//dw_1.rowscopy(3,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,5,primary!,dw_1,7,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 3
//	if f_dw_checkrowdata(dw_1,i+3,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////dw_1.rowsmove(3,5,primary!,dw_1,6,primary!)// ²»±ä
////0.04
//
//dw_3.reset()
//dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,4,primary!,dw_1,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////dw_1.rowsmove(3,4,primary!,dw_1,2,primary!)
////0.2
//dw_3.reset()
//dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,4,primary!,dw_1,2,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i+1,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////dw_1.rowsmove(3,4,primary!,dw_1, -1,primary!)
////0.3
////·µ»Ø-1²»ÔËÐÐrowsmove()
//dw_3.reset()
////dw_1.retrieve()
//dw_1.rowscopy(4,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!)
//if li_ret= -1 then
//	ls_message="Right|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) return -1"
//elseif not isnull(li_ret) then
//	ls_message="Error|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) return "+string(li_ret)
//else
//	ls_message="Error|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=true then
//		ls_message="Error|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount(),primary!)
////0.4
//dw_3.reset()
//dw_1.rowscopy(8,9,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//
//li_ret=dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,dw_1.rowcount() -3+i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////dw_1.rowsmove(3,4,primary!,dw_1,2,primary!)
////0.5
//dw_3.reset()
//dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,dw_1.rowcount() -2+i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////dw_1.rowsmove(3,4,primary!,dw_1,1000,primary!)
////0.6
//dw_3.reset()
//dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,dw_1.rowcount() -2+i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////w_1.rowsmove(3,4,primary!,dw_1,0,primary!)
////0.7
//dw_3.reset()
//dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(3,4,primary!,dw_1, 0,primary!)
//if li_ret= -1 then
//	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) return -1"
//elseif not isnull(li_ret) then
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) return "+string(li_ret)
//else
//	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=true then
//		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) data=data"
//	end if
//next
////li_ret=dw_1.rowsmove(1,2,delete!,dw_2,1,primary!)
////0.8
//dw_3.reset()
//dw_1.deleterow(0)
//dw_1.deleterow(0)
//dw_1.rowscopy(1,2,delete!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(1,2,delete!,dw_1,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
////0.9
////li_ret=dw_1.rowsmove(1,2,filter!,dw_2,1,primary!)
//dw_3.reset()
//dw_1.rowscopy(3,4,primary!,dw_1,1,filter!) 
//if dw_1.filteredcount()<0 then 
//	messagebox("Alert","rowscopy() false!")
//end if
//dw_1.rowscopy(1,2,filter!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(1,2,filter!,dw_1,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////1
//dw_3.reset()
//dw_1.rowscopy(1,2,primary!,dw_3,1,primary!) //ÏÈ±£´æ
//li_ret=dw_1.rowsmove(1,2,primary!,dw_2,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_2,i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
////2
//dw_3.reset()
//dw_1.rowscopy(1,3,primary!,dw_3,1,primary!)//±£´æ
//li_ret=dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 3
//	if f_dw_checkrowdata(dw_2,dw_2.rowcount() -3+i,"primary",dw_3,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
//
//
//
//
//
//
////3
//dw_3.reset()
//dw_2.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
//li_ret=dw_2.rowsmove(1,2,primary!,dw_1,1,delete!)
//if li_ret=1 then
//	ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) return -1"
//else
//	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) return null"
//end if
//wf_additem(ls_message)
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"delete",dw_3,i,"primary")=false then
//		ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
//
////4
//dw_3.reset()
//dw_2.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
//li_ret=dw_2.rowsmove(1,2,primary!,dw_1,1,filter!)
//if li_ret=1 then
//	ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) return -1"
//else
//	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_1,i,"filter",dw_3,i,"primary")=false then
//		ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////5
//dw_3.reset()
//dw_1.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
//li_ret=dw_1.rowsmove(1,2,primary!,ds,1,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(1,2,primary!,ds,1,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(1,2,primary!,ds,1,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(1,2,primary!,ds,1,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dwds_checkrowdata(dw_3,i,"primary",ds,i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(1,2,primary!,ds,1,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(1,2,primary!,ds,1,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
//
////6
//dw_3.reset()
//dw_1.rowscopy(1,3,primary!,dw_3,1,primary!)//±£´æ
//li_ret=dw_1.rowsmove(1,3,primary!,ds,1000,primary!)
//if li_ret=1 then
//	ls_message="Right|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) return -1"
//else
//	ls_message="Error|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) return null"
//end if
//wf_additem(ls_message)
//
////Êý¾Ý¶Ô±È
//for i=1 to 3
//	if f_dwds_checkrowdata(dw_3,i,"primary",ds,ds.rowcount() -3+i,"primary")=false then
//		ls_message="Error|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
//
//
////7
//dw_3.reset()
//ds.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
//li_ret=ds.rowsmove(1,2,primary!,dw_1,1,delete!)
//if li_ret=1 then
//	ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,delete!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,delete!) return -1"
//else
//	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,delete!) return null"
//end if
//wf_additem(ls_message)
//
//
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_3,i,"primary",dw_1,i,"delete")=false then
//		ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,delete!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,delete!) data=data"
//	end if
//next
//wf_additem(ls_message)
//
////8
//dw_3.reset()
//ds.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
//li_ret=ds.rowsmove(1,2,primary!,dw_1,1,filter!)
//if li_ret=1 then
//	ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,filter!) return 1"
//elseif li_ret=-1 then
//	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,filter!) return -1"
//else
//	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,filter!) return null"
//end if
//wf_additem(ls_message)
////Êý¾Ý¶Ô±È
//for i=1 to 2
//	if f_dw_checkrowdata(dw_3,i,"primary",dw_1,i,"filter")=false then
//		ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,filter!) data<>data"
//		
//		exit
//	else
//		ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,filter!) data=data"
//	end if
//next
//wf_additem(ls_message)

//destroy ds

//lb_1.reset()
//wf_rowsmoveandcopy() //ÔÝÊ±×¢ÊÍµô

//<Interface>DataWindow.Syntax.Data</Interface>
wf_syntax_data() //pb´úÂëÌ«³¤£¬×öÎªº¯Êý´¦Àí

wf_dwo() //dwo²âÊÔ


end subroutine

public subroutine wf_update ();integer li_currow,li_ret,li_count,li_count1
string ls_message,ls_null
setnull(ls_null)
delete from update_table;
commit using sqlca;
insert into update_table (dept_id,dept_name)	values(100,'aaa');
insert into update_table (dept_id,dept_name)	values(200,'bbb');
insert into update_table (dept_id,dept_name)	values(300,'ccc');
insert into update_table (dept_id,dept_name)	values(400,'ddd');
insert into update_table (dept_id,dept_name)	values(500,'eee');
commit using sqlca;
dw_1.dataobject = "d_update"
dw_1.settransobject(sqlca)
dw_1.retrieve()
//²âÊÔupdate²»´ø²ÎÊý
li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=600
dw_1.object.dept_name[li_currow]="fff"
dw_1.object.allownull[li_currow]="fff"
if dw_1.update() = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 6 then
	ls_message="Right|1.after Update(),rowcount = "+string(li_ret)
else
	ls_message="Error|1.after Update(),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

if dw_1.update() = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 6 then
	ls_message="Right|2.after Update(),rowcount = "+string(li_ret)
else
	ls_message="Error|2.after Update(),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")

dw_1.setsort("dept_id A")
dw_1.sort()
if dw_1.object.dept_id[6]=600 and dw_1.object.dept_name[6]="fff" and dw_1.object.allownull[6]="fff" then
	ls_message="Right|3.after Update(),data are Right row 6: "+string(dw_1.object.dept_id[6])+","+dw_1.object.dept_name[6]+","+dw_1.object.allownull[6]
else
	ls_message="Error|3.after Update(),data are Right row 6: "+string(dw_1.object.dept_id[6])+","+dw_1.object.dept_name[6]+","+dw_1.object.allownull[6]
end if
wf_additem(ls_message)
lb_1.additem("")
//²âÊÔupdate(true,true)

li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=700
dw_1.object.dept_name[li_currow]="ggg"
dw_1.object.allownull[li_currow]=ls_null
if dw_1.update(true,true) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 7 then
	ls_message="Right|1.after Update(true,true),rowcount = "+string(li_ret)
else
	ls_message="Error|1.after Update(true,true),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

if dw_1.update(true,true) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 7 then
	ls_message="Right|2.after Update(true,true),rowcount = "+string(li_ret)
else
	ls_message="Error|2.after Update(true,true),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")
dw_1.retrieve()

//²âÊÔupdate(true,false)
li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=800
dw_1.object.dept_name[li_currow]="hhh"
if dw_1.update(true,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|1.after Update(true,false),rowcount = "+string(li_ret)
else
	ls_message="Error|1.after Update(true,false),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

if dw_1.update(true,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 9 then
	ls_message="Right|2.after Update(true,false),rowcount = "+string(li_ret)
else
	ls_message="Error|2.after Update(true,false),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

dw_1.resetupdate()
if dw_1.update(true,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 9 then
	ls_message="Right|3.resetupdate() then Update(true,false),rowcount = "+string(li_ret)
else
	ls_message="Error|3.resetupdate() then  Update(true,false),rowcount = "+string(li_ret)
end if


dw_1.retrieve()
wf_additem(ls_message)
lb_1.additem("")
dw_1.setsort("dept_id A")
dw_1.sort()
//²âÊÔupdate(true) accepttext

dw_1.object.dept_id[1] = 101
if dw_1.update(true) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
dw_1.retrieve()
dw_1.setsort("dept_id A")
dw_1.sort()

li_ret = dw_1.object.dept_id[1]
if li_ret = 101 then
	ls_message="Right|1.after setitem(1,1,101) Update(true),dept_id = "+string(li_ret)
else
	ls_message="Error|1.after setitem(1,1,101) Update(true),dept_id = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")

//²âÊÔupdate(false) not accepttext

//dw_1.setitem(2,1,201)
dw_1.object.dept_id[2] = 201
if dw_1.update(false,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
dw_1.retrieve()
dw_1.setsort("dept_id A")
dw_1.sort()

li_ret = dw_1.object.dept_id[2]
if li_ret = 201 then
	ls_message="Right|2.after setitem(2,1,201) Update(false,false),dept_id = "+string(li_ret)
else
	ls_message="Error|2.after setitem(2,1,201) Update(false,false),dept_id = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")

//²âÊÔ deletrow
//
dw_1.deleterow(8)
if dw_1.update(true,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|1.deleterow() then Update(true,false),rowcount = "+string(li_ret)
else
	ls_message="Error|1.deleterow() then  Update(true,false),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

dw_1.retrieve()
if dw_1.update(true,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;

if li_ret = 8 then
	ls_message="Right|2.deleterow() then Update(true,false),rowcount = "+string(li_ret)
else
	ls_message="Error|2.deleterow() then  Update(true,false),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")

//»ìºÏinsert,delete,and update
dw_1.retrieve()
dw_1.deleterow(8)

li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=900
dw_1.object.dept_name[li_currow]="iii"

dw_1.object.dept_id[1] = 111

if dw_1.update() = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|1.deleterow(),insertrow(),setitem then Update(),rowcount = "+string(li_ret)
else
	ls_message="Error|1.deleterow(),insertrow(),setitem then Update(),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

dw_1.retrieve()
if dw_1.update() = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|2.deleterow(),insertrow(),setitem then Update(),rowcount = "+string(li_ret)
else
	ls_message="Error|2.deleterow(),insertrow(),setitem then Update(),rowcount = "+string(li_ret)
end if
dw_1.retrieve()
dw_1.setsort("dept_id a")
dw_1.sort()
wf_additem(ls_message)
li_ret = dw_1.object.dept_id[1]
if li_ret = 111 then
	ls_message="Right|3.deleterow(),insertrow(),setitem then Update(),dept_id = "+string(li_ret)
else
	ls_message="Error|3.deleterow(),insertrow(),setitem then Update(),dept_id = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")
//update(true,true)
dw_1.deleterow(8)
li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=900
dw_1.object.dept_name[li_currow]="iiiiii"

dw_1.object.dept_id[2] = 222

if dw_1.update(true,true) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|1.deleterow(),insertrow(),setitem then Update(true,true),rowcount = "+string(li_ret)
else
	ls_message="Error|1.deleterow(),insertrow(),setitem then Update(true,true),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)
dw_1.retrieve()
if dw_1.update(true,true) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|2.deleterow(),insertrow(),setitem then Update(true,true),rowcount = "+string(li_ret)
else
	ls_message="Error|2.deleterow(),insertrow(),setitem then Update(true,true),rowcount = "+string(li_ret)
end if
dw_1.retrieve()
dw_1.setsort("dept_id a")
dw_1.sort()
wf_additem(ls_message)
li_ret = dw_1.object.dept_id[2]
if li_ret = 222 then
	ls_message="Right|3.deleterow(),insertrow(),setitem then Update(true,true),dept_id = "+string(li_ret)
else
	ls_message="Error|3.deleterow(),insertrow(),setitem then Update(true,true),dept_id = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")

//update(true,true)
dw_1.deleterow(8)
li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=900
dw_1.object.dept_name[li_currow]="IIIII"

dw_1.object.dept_id[3] = 333

if dw_1.update(true,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|1.deleterow(),insertrow(),setitem then Update(true,false),rowcount = "+string(li_ret)
else
	ls_message="Error|1.deleterow(),insertrow(),setitem then Update(true,false),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)
dw_1.retrieve()
if dw_1.update(true,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|2.deleterow(),insertrow(),setitem then Update(true,false),rowcount = "+string(li_ret)
else
	ls_message="Error|2.deleterow(),insertrow(),setitem then Update(true,false),rowcount = "+string(li_ret)
end if
dw_1.retrieve()
dw_1.setsort("dept_id a")
dw_1.sort()
wf_additem(ls_message)
li_ret = dw_1.object.dept_id[3]
if li_ret = 333 then
	ls_message="Right|3.deleterow(),insertrow(),setitem then Update(true,false),dept_id = "+string(li_ret)
else
	ls_message="Error|3.deleterow(),insertrow(),setitem then Update(true,false),dept_id = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")
//update(false,false)
dw_1.deleterow(8)
li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=900
dw_1.object.dept_name[li_currow]="IIIIIdehhh"

dw_1.object.dept_id[4] = 444

if dw_1.update(false,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|1.deleterow(),insertrow(),setitem then Update(false,false),rowcount = "+string(li_ret)
else
	ls_message="Error|1.deleterow(),insertrow(),setitem then Update(false,false),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)
dw_1.retrieve()
if dw_1.update(false,false) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|2.deleterow(),insertrow(),setitem then Update(false,false),rowcount = "+string(li_ret)
else
	ls_message="Error|2.deleterow(),insertrow(),setitem then Update(false,false),rowcount = "+string(li_ret)
end if
dw_1.retrieve()
dw_1.setsort("dept_id a")
dw_1.sort()
wf_additem(ls_message)
li_ret = dw_1.object.dept_id[4]
if li_ret = 444 then
	ls_message="Right|3.deleterow(),insertrow(),setitem then Update(false,true),dept_id = "+string(li_ret)
else
	ls_message="Error|3.deleterow(),insertrow(),setitem then Update(false,false),dept_id = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")

//update(false,true)
dw_1.deleterow(8)
li_currow = dw_1.insertrow(0)
dw_1.object.dept_id[li_currow]=900
dw_1.object.dept_name[li_currow]="IIIIIhhh"

dw_1.object.dept_id[5] = 555

if dw_1.update(false,true) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|1.deleterow(),insertrow(),setitem then Update(false,true),rowcount = "+string(li_ret)
else
	ls_message="Error|1.deleterow(),insertrow(),setitem then Update(false,true),rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

dw_1.retrieve()
if dw_1.update(false,true) = 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
select count(*) into :li_ret from update_table;
if li_ret = 8 then
	ls_message="Right|2.deleterow(),insertrow(),setitem then Update(false,true),rowcount = "+string(li_ret)
else
	ls_message="Error|2.deleterow(),insertrow(),setitem then Update(false,true),rowcount = "+string(li_ret)
end if
dw_1.setsort("dept_id a")
dw_1.sort()
wf_additem(ls_message)
li_ret = dw_1.object.dept_id[5]
if li_ret = 555 then
	ls_message="Right|3.deleterow(),insertrow(),setitem then Update(false,true),dept_id = "+string(li_ret)
else
	ls_message="Error|3.deleterow(),insertrow(),setitem then Update(false,true),dept_id = "+string(li_ret)
end if
wf_additem(ls_message)
lb_1.additem("")
dw_1.retrieve()

//¶à±í¸üÐÂ
//____________________________________________________________________________________________

wf_updatetwotable()
wf_updatethreetable()
end subroutine

public subroutine wf_event ();integer li_count
dw_1.dataobject="d_child"
dw_1.settransobject(sqlca)
is_event = ""
dw_1.Retrieve()
wf_checkevent("Retrieve",",hasdata")

//dw_1.Resize(dw_1.width - 10,dw_1.height - 10)
//wf_checkevent("Resize",",hasdata")

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

public subroutine wf_print ();integer li_ret
string ls_message,ls_ret
li_ret=dw_1.print()
if li_ret=1 then
	ls_message="Right|dw_1.print() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.print() return -1"
else
	ls_message="Error|dw_1.print() return null"
end if
wf_additem(ls_message)
//lb_1.additem("")
li_ret=dw_1.SaveAs('c:\abc.xls',Excel!,true)

if li_ret=1 then
	ls_message="Right|dw_1.SaveAs('c:\abc.xls',Excel!,true) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SaveAs('c:\abc.xls',Excel!,true) return -1"
else
	ls_message="Error|dw_1.SaveAs('c:\abc.xls',Excel!,true) return null"
end if
wf_additem(ls_message)
li_ret=dw_1.SaveAs('c:\abcd.xls',Excel!,false)
if li_ret=1 then
	ls_message="Right|dw_1.SaveAs('c:\abcd.xls',Excel!,false) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SaveAs('c:\abcd.xls',Excel!,false) return -1"
else
	ls_message="Error|dw_1.SaveAs('c:\abcd.xls',Excel!,false) return null"
end if
wf_additem(ls_message)
li_ret=dw_1.SaveAs('c:\abc.txt',Text!,true)
if li_ret=1 then
	ls_message="Right|dw_1.SaveAs('c:\abc.txt',Text!,true) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SaveAs('c:\abc.txt',Text!,true) return -1"
else
	ls_message="Error|dw_1.SaveAs('c:\abc.txt',Text!,true) return null"
end if
wf_additem(ls_message)

li_ret=dw_1.SaveAs('c:\abc.txt',Text!,false)
if li_ret=1 then
	ls_message="Right|dw_1.SaveAs('c:\abc.txt',Text!,false) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SaveAs('c:\abc.txt',Text!,false) return -1"
else
	ls_message="Error|dw_1.SaveAs('c:\abc.txt',Text!,false) return null"
end if
wf_additem(ls_message)
setnull(ls_ret)
li_ret = dw_1.setFilter(ls_ret)
if li_ret = 1 then
	ls_message="Right|dw_1.setFilter(null) return "+string(li_ret)
else
	ls_message="Error|dw_1.setFilter(null) return "+string(li_ret)
end if
wf_additem(ls_message)
//lb_1.additem("")
li_ret=dw_1.SetSort(ls_ret)
if li_ret>=0 then
	ls_message="Right|dw_1.SetSort(null) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|dw_1.SetSort(null) return -1"
else
	ls_message="Error|dw_1.SetSort(null) return null"
end if
wf_additem(ls_message)
//ÒÔÏÂÊÇÍâ²¿Êý¾ÝÔ´µÄ²âÊÔ
dw_1.dataobject = "d_extenal_update"
li_ret=dw_1.print()
if li_ret=1 then
	ls_message="Right|Exteranl DataSource dw_1.print() return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|Exteranl DataSource dw_1.print() return -1"
else
	ls_message="Error|Exteranl DataSource dw_1.print() return null"
end if
wf_additem(ls_message)
//lb_1.additem("")
//li_ret=dw_1.SaveAs('c:\abc.xls',Excel!,true)
//if li_ret=1 then
//	ls_message="Right|Exteranl DataSource dw_1.SaveAs('c:\abc.xls',Excel!,true) return "+string(li_ret)
//elseif li_ret=-1 then
//	ls_message="Error|Exteranl DataSource dw_1.SaveAs('c:\abc.xls',Excel!,true) return -1"
//else
//	ls_message="Error|Exteranl DataSource dw_1.SaveAs('c:\abc.xls',Excel!,true) return null"
//end if
//wf_additem(ls_message)
setnull(ls_ret)
li_ret = dw_1.setFilter(ls_ret)
if li_ret = 1 then
	ls_message="Right|Exteranl DataSource dw_1.setFilter(null) return "+string(li_ret)
else
	ls_message="Error|Exteranl DataSource dw_1.setFilter(null) return "+string(li_ret)
end if
wf_additem(ls_message)
//lb_1.additem("")
li_ret=dw_1.SetSort(ls_ret)
if li_ret>=0 then
	ls_message="Right|Exteranl DataSource dw_1.SetSort(null) return "+string(li_ret)
elseif li_ret=-1 then
	ls_message="Error|Exteranl DataSource dw_1.SetSort(null) return -1"
else
	ls_message="Error|Exteranl DataSource dw_1.SetSort(null) return null"
end if
wf_additem(ls_message)

end subroutine

public subroutine wf_retrieve ();integer li_ret,li_dept_id[]
string ls_message,ls_emp_lname[],ls_emp_lname2[4,10],ls_emp_lname3[4,4,4]
date ld_date,ld_mydate[]
datetime ld_datetime,ld_mydatetime[]
time ld_time,ld_mytime[]
long ll_rowcount
dw_1.dataobject = "d_par_numberstring"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(200,'b')
if li_ret>0 then
	ls_message="Right|d_par_stringnumber retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_stringnumber retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if

//primary ÓÐÊý¾Ý
li_ret = dw_1.retrieve(200,'b')

SELECT count(*) into: ll_rowcount FROM employee
   WHERE (emp_id >200 ) AND ( emp_fname> 'b' )  ;


if li_ret=ll_rowcount then
	ls_message="Right|d_par_stringnumber (primary buffer have data) retrieve return "+string(li_ret)
elseif isnull(li_ret ) then
	ls_message="Error|d_par_stringnumber (primary buffer have data) retrieve return null"
else
	ls_message="Error|d_par_stringnumber (primary buffer have data) retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if

//primary ÎÞÓÐÊý¾Ý
dw_1.rowsmove(1,dw_1.rowcount(),primary!,dw_1,1,delete!)
li_ret = dw_1.retrieve(200,'b')

if li_ret=ll_rowcount then
	ls_message="Right|d_par_stringnumber  (primary buffer have not data) retrieve return "+string(li_ret)
elseif isnull(li_ret ) then
	ls_message="Error|d_par_stringnumber  (primary buffer have not data) retrieve return null"
else
	ls_message="Error|d_par_stringnumber  (primary buffer have not data) retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if

if cbx_4.checked=false  then
	//ÔÚretrievestartÊÂ¼þÖÐ"return 2"£¬½øÐÐÁ½´Îretrieve²Ù×÷,ÇÒÃ»ÓÐretrieveµ½Êý¾Ý
	li_ret = dw_1.retrieve(10000,'b')
	ii_retrievestart=2
	li_ret=0
	li_ret += dw_1.retrieve(10000,'b')
	li_ret += dw_1.retrieve(10000,'b')
	if li_ret=0 then
		ls_message="Right|d_par_stringnumber  (retrieve twice and have not data) retrieve return "+string(li_ret)
	elseif isnull(li_ret ) then
		ls_message="Error|d_par_stringnumber  (retrieve twice and have not data) retrieve return null"
	else
		ls_message="Error|d_par_stringnumber  (retrieve twice and have not data) retrieve return "+string(li_ret)
	end if
	wf_additem(ls_message)
	ii_retrievestart= -1
	if cbx_1.checked then
		if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
	end if
	//ÔÚretrievestartÊÂ¼þÖÐ"return 2"£¬½øÐÐÁ½´Îretrieve²Ù×÷,ÇÒÃ»ÓÐretrieveµ½Êý¾Ý
	li_ret = dw_1.retrieve(200,'b')
	ii_retrievestart=2
	li_ret = dw_1.retrieve(200,'b')
	li_ret = dw_1.retrieve(200,'b')
	if li_ret=ll_rowcount*3 then
		ls_message="Right|d_par_stringnumber  (retrieve twice and have data) retrieve return "+string(li_ret)
	elseif isnull(ll_rowcount ) then
		ls_message="Error|d_par_stringnumber  (retrieve twice and have data) retrieve return null"
	else
		ls_message="Error|d_par_stringnumber  (retrieve twice and have data) retrieve return "+string(li_ret)
	end if
	wf_additem(ls_message)
	ii_retrievestart= -1
	if cbx_1.checked then
		if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
	end if

	ii_retrievestart= -1
end if

ld_date = date('1965-01-01')
ld_datetime = datetime(date('1999-01-01'))
ld_time = time('01:01:01')

dw_1.dataobject = "d_par_datetime"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(ld_date,ld_datetime,ld_time)
if li_ret>0 then
	ls_message="Right|d_par_datetime retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_datetime retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if


li_dept_id[1]=100
li_dept_id[3]=200
li_dept_id[6]=300
li_dept_id[4]=400


dw_1.dataobject = "d_par_numberarraystring"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(li_dept_id,'a')
if li_ret>0 then
	ls_message="Right|d_par_numberarraystring retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_numberarraystring retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if

ls_emp_lname[1]='Whitney'
ls_emp_lname[9]='Cobb'
ls_emp_lname[2]='Chin'
ls_emp_lname[6]='Jordan'

dw_1.dataobject = "d_par_numberstringarray"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(100,ls_emp_lname)
if li_ret>0 then
	ls_message="Right|d_par_numberstringarray retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_numberstringarray retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if

li_dept_id[1]=100
li_dept_id[2]=200
li_dept_id[9]=300
li_dept_id[4]=400

ls_emp_lname[1]='Whitney'
ls_emp_lname[2]='Cobb'
ls_emp_lname[3]='Chin'
ls_emp_lname[9]='Jordan'

dw_1.dataobject = "d_par_numarrstrstrarr"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(li_dept_id,'a',ls_emp_lname)
if li_ret>0 then
	ls_message="Right|d_par_numarrstrstrarr retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_numarrstrstrarr retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if

ld_mydatetime[1]=datetime(date('2000-1-1'),time('10:10:10'))
ld_mydatetime[2]=datetime(date('2000-1-2'),time('10:10:10'))
ld_mydatetime[8]=datetime(date('2000-1-3'),time('10:10:10'))
ld_mydatetime[4]=datetime(date('2000-1-4'),time('10:10:10'))

ld_mytime[1] = time('10:10:10')
ld_mytime[8] = time('11:10:10')
ld_mytime[3] = time('12:10:10')
ld_mytime[4] = time('13:10:10')

ld_mydate[1] = date("1959-6-5")
ld_mydate[8] = date("1961-12-4")
ld_mydate[3] = date("1952-12-13")
ld_mydate[4] = date("1940-12-14")



dw_1.dataobject = "d_par_manyarray"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(ld_mydatetime,'a',ld_mytime,ld_mydate,100)
if li_ret>0 then
	ls_message="Right|d_par_manyarray retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_manyarray retrieve return "+string(li_ret)
end if
wf_additem(ls_message)


ls_emp_lname2[1,1]='Whitney'
ls_emp_lname2[2,2]='Cobb'
ls_emp_lname2[3,3]='Chin'
ls_emp_lname2[4,4]='Jordan'

dw_1.dataobject = "d_par_numberstringarray"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(100,ls_emp_lname)
if li_ret>0 then
	ls_message="Right|d_par_numberstringarray(two boundary) retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_numberstringarray(two boundary) retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if

ls_emp_lname3[1,1,1]='Whitney'
ls_emp_lname3[2,2,2]='Cobb'
ls_emp_lname3[3,3,3]='Chin'
ls_emp_lname3[4,4,4]='Jordan'

dw_1.dataobject = "d_par_numberstringarray"
dw_1.settransobject(sqlca)
li_ret = dw_1.retrieve(100,ls_emp_lname)
if li_ret>0 then
	ls_message="Right|d_par_numberstringarray(three boundary) retrieve return "+string(li_ret)
else
	ls_message="Error|d_par_numberstringarray(three boundary) retrieve return "+string(li_ret)
end if
wf_additem(ls_message)
if cbx_1.checked then
	if messagebox("",ls_message+"~r~n Exit?",question!,yesno!,2) = 1 then return
end if


end subroutine

public subroutine wf_find ();//find()



string ls_message
integer li_ret,li_rowcount



dw_1.dataobject="d_integration_case_freeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()

li_rowcount=dw_1.rowcount()
li_ret=dw_1.find('dept_id=300',1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find('dept_id=300',1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find('dept_id=300',1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find('dept_id=300',1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)
li_ret=dw_1.find("string(dept_id)='300'",1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find(~"string(dept_id)='300'~",1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find(~"string(dept_id)='300'~",1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find(~"string(dept_id)='300'~",1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)
li_ret=dw_1.find('#1=300',1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find('#1=300',1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find('#1=300',1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find('#1=300',1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)

li_ret=dw_1.find("string(#1)='300'",1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find(~"string(#1)='300'~",1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find(~"string(#1)='300'~",1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find(~"string(#1)='300'~",1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)
li_ret=dw_1.find("dept_id=300 and city>'C'",1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find(~"dept_id=300 and city>'C'~",1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find(~"dept_id=300 and city>'C'~",1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find(~"dept_id=300 and city>'C'~",1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)
li_ret=dw_1.find("#1=300 and #6>'C'",1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find(~"#1=300 and #6>'C'~",1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find(~"#1=300 and #6>'C'~",1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find(~"#1=300 and #6>'C'~",1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)
li_ret=dw_1.find("isnull(#1)",1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find(~"isnull(#1)~",1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find(~"isnull(#1)~",1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find(~"isnull(#1)~",1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)
li_ret=dw_1.find('#4="I~'m"',1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find('#4=~"I~'m~"',1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find('#4=~"I~'m~"',1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find('#4=~"I~'m~"',1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)

//²ÎÊýÖÐÆðÊ¼ÐÐ´óÓÚ½áÊøÐÐ
//ÕÒµÄµ½
li_ret=dw_1.find('dept_id=300',li_rowcount,1)
if isnull(li_ret) then
	ls_message="Error|dw_1.find('dept_id=300',li_rowcount,1) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find('dept_id=300',li_rowcount,1) return "+string(li_ret)
else
	ls_message="Error|dw_1.find('dept_id=300',li_rowcount,1) return "+string(li_ret)
end if
wf_additem(ls_message)
//ÕÒ²»µ½
li_ret=dw_1.find('dept_id=-30000',li_rowcount,1)
if isnull(li_ret) then
	ls_message="Error|dw_1.find('dept_id=-30000',li_rowcount,1) return "+string(li_ret)
elseif li_ret=0 then
	ls_message="Right|dw_1.find('dept_id=-30000',li_rowcount,1) return "+string(li_ret)
else
	ls_message="Error|dw_1.find('dept_id=-30000',li_rowcount,1) return "+string(li_ret)
end if
wf_additem(ls_message)

//²ÎÊýÖÐÆðÊ¼ÐÐÐ¡ÓÚ½áÊøÐÐ
//ÕÒµÄµ½
li_ret=dw_1.find('dept_id=300',1,li_rowcount)
if isnull(li_ret) then
	ls_message="Error|dw_1.find('dept_id=300',1,li_rowcount) return "+string(li_ret)
elseif li_ret>=0 then
	ls_message="Right|dw_1.find('dept_id=300',1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find('dept_id=300',1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)
//ÕÒ²»µ½
li_ret=dw_1.find('dept_id=-30000',li_rowcount,1)
if isnull(li_ret) then
	ls_message="Error|dw_1.find('dept_id=-30000',1,li_rowcount) return "+string(li_ret)
elseif li_ret=0 then
	ls_message="Right|dw_1.find('dept_id=-30000',1,li_rowcount) return "+string(li_ret)
else
	ls_message="Error|dw_1.find('dept_id=-30000',1,li_rowcount) return "+string(li_ret)
end if
wf_additem(ls_message)














//¶Ôpage()µÄ²âÊÔ£¬Ö»¶ÔµÚÒ»Ò³µÄµÚÒ»ÐÐÆð×÷ÓÃ£¬¿ÉÄÜÊÇpbµÄbug
////dw_1.describe("evaluate('page()',5)")
////messagebox('',dw_1.Describe("object.page()"))
////dw_1.ScrollNextPage()
////messagebox('',dw_1.describe("evaluate('page()',8)"))
//dw_1.ScrollToRow(15)
//messagebox("",dw_1.getrow())
////dw_1.ScrollNextPage()
//li_ret = dw_1.find("dept_id=300 and page()=1",1,dw_1.rowcount())
//if li_ret=1 then
//	ls_message="Right|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return "+string(li_ret)
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return  -1"
//else
//	ls_message="Error|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return  null"
//end if
//wf_additem(ls_message)
//
////li_ret = dw_1.find("dept_id=300 and page()=1",1,dw_1.rowcount())
////if li_ret=1 then
////	ls_message="Right|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return "+string(li_ret)
////elseif li_ret=-1 then
////	ls_message="Error|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return  -1"
////else
////	ls_message="Error|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return  null"
////end if
////wf_additem(ls_message)
//
//
////dw_1.ScrollNextPage()
//li_ret = dw_1.find("dept_id=100 and page()=3",1,dw_1.rowcount())
//if li_ret=1 then
//	ls_message="Right|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return "+string(li_ret)
//elseif li_ret=-1 then
//	ls_message="Error|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return  -1"
//else
//	ls_message="Error|dw_1.find('dept_id=300 and page()=1',1,dw_1.rowcount()) return  null"
//end if
//wf_additem(ls_message)



end subroutine

public subroutine wf_dwbutton ();dw_1.dataobject="d_button_freeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()


//dw_1.EVENT buttonClicking(1,dw_1.object.b_pagenext4)
//dw_1.EVENT Clicked(37,96,0,dw_1.object.b_pagenext4)
dw_1.Event buttonclicked(0,0,dw_1.object.b_pagenext4)



end subroutine

public subroutine wf_dwo ();//¶Ôdwo²âÊÔ
string ls_message
DWObject dwo_column

dw_1.dataobject="d_integration_case_freeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()

dwo_column = dw_1.Object.city
wf_additem(ls_message)
if dwo_column.primary[1]=dw_1.getitemstring(1,'city') then 
	ls_message="Right|dwo.primary[1]="+dwo_column.Primary[1]
else
	ls_message="Error|PB dwo.primary[1]="+dw_1.getitemstring(1,'city')
	wf_additem(ls_message)
	ls_message="Error|IE dwo.primary[1]="+dwo_column.Primary[1]
end if
wf_additem(ls_message)

wf_additem("")

end subroutine

public subroutine wf_rowsmoveandcopy (integer ai_saveorcheck);//ai_saveorcheck=1¡¡±£´æ
//ai_saveorcheck=2¡¡±È½Ï

int 		li_ret,i
long 		ll_rowcount,ll_current,ll_newcurrent
string	ls_message,ls_operation

dw_1.dataobject="d_dwitemstaus_feeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()

dw_2.dataobject="d_nodata_freeform"
dw_2.settransobject(sqlca)

dw_3.dataobject="d_nodata_freeform"
dw_3.settransobject(sqlca)

//f_rowscopyandcopy(ds)
ib_trackflag=true



////		<Interface>RowsCopy</Interface>
//// µ±Ç°ÐÐ,Í¬Ò»dw,before currentrow,after currentrow
////µ±Ç°ÐÐ0 
////---------------------------------------------------------------------------------------------------
//for i=0 to 1
//	ii_Rowfocuschanging=i //ÊÂ¼þ·µ¼ÓÖµ²âÊÔ
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() µ±Ç°ÐÐ 0
//	dw_1.setRow(0)
//	dw_2.setRow(0)
//	//Ô´  Ö»ÓÐdw_1²Å´¦ÀíÊÂ¼þ
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(1,5,primary!,dw_2,1,primary!)0"+string(i),dw_1,1,5,dw_2,1,primary!,primary!,false)
//	//Ä¿±ê
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(1,5,primary!,dw_1,1,primary!)0"+string(i),dw_2,1,5,dw_1,1,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Í¬Ò»Êý¾Ý´°¿Ú 1
//	dw_1.setRow(0)
//	dw_2.setRow(0)
//	//Ô´  
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(7,8,primary!,dw_1,1,primary!)1"+string(i),dw_1,7,8,dw_1,1,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopyÔÚÔ´ºÍÄ¿±êDataWindowµÄcurrentrow()Ö®Ç°
//	//rowscopy() getrow() between startrow endrow  Ä¿±êDW getrow() £¼ beforerow 2
//	dw_1.setRow(6)
//	dw_2.setRow(6)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(1,5,primary!,dw_2,1,primary!)0"+string(i),dw_1,1,5,dw_2,1,primary!,primary!,false)
//	//Ä¿±ê
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(1,5,primary!,dw_1,1,primary!)0"+string(i),dw_2,1,5,dw_1,1,primary!,primary!,false)
//	
//next
//////3  rowscopyÔÚÄ¿±êDataWindowµÄcurrentrow()Ö®Ç°,ÔÚÔ´Ö®ºó
////dw_1.setRow(3)
////dw_2.setRow(3)
////is_tracklog=""
//
//////4  rowscopyÔÚÔ´\Ä¿±êDataWindowµÄcurrentrow()Ö®ºó
////dw_1.setRow(1)
////dw_2.setRow(1)
//
//////5  rowscopyÔÚÔ´DataWindowµÄcurrentrow()Ö®Ç°,ÔÚÄ¿±êÖ®ºó
////dw_1.setRow(3)
////dw_2.setRow(3)
////is_tracklog=""
//
//for i=0 to 1
//	ii_Rowfocuschanging=i //ÊÂ¼þ·µ¼ÓÖµ²âÊÔ
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() £¼ startrow  Ä¿±êDW getrow() £¼ beforerow 0
//	dw_1.setRow(0)
//	dw_2.setRow(0)
//	//Ô´  Ö»ÓÐdw_1²Å´¦ÀíÊÂ¼þ
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(2,15,primary!,dw_2,1,primary!)0"+string(i),dw_1,2,15,dw_2,1,primary!,primary!,false)
//	//Ä¿±ê
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(2,5,primary!,dw_1,1,primary!)0"+string(i),dw_2,2,5,dw_1,1,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() £¼ startrow  Ä¿±êDW getrow() £¾ beforerow 1
//	dw_1.setRow(0)
//	dw_2.setRow(3)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(2,6,primary!,dw_2,1,primary!)1"+string(i),dw_1,2,6,dw_2,1,primary!,primary!,false)
//	//Ä¿±ê
//	dw_1.setRow(3)
//	dw_2.setRow(0)
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(2,5,primary!,dw_1,1,primary!)1"+string(i),dw_2,2,5,dw_1,1,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() between startrow endrow  Ä¿±êDW getrow() £¼ beforerow 2
//	dw_1.setRow(5)
//	dw_2.setRow(1)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(4,7,primary!,dw_2,2,primary!)2"+string(i),dw_1,4,7,dw_2,2,primary!,primary!,false)
//	//Ä¿±ê
//	dw_1.setRow(1)
//	dw_2.setRow(5)
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(4,6,primary!,dw_1,2,primary!)2"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() between startrow endrow  Ä¿±êDW getrow() £¾¡¡beforerow 3
//	dw_1.setRow(5)
//	dw_2.setRow(2)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(4,7,primary!,dw_2,2,primary!)3"+string(i),dw_1,4,7,dw_2,2,primary!,primary!,false)
//	//Ä¿±ê
//	dw_1.setRow(2)
//	dw_2.setRow(5)
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(4,6,primary!,dw_1,2,primary!)3"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() £¾ startrow endrow  Ä¿±êDW getrow() £¼¡¡beforerow 4
//	dw_1.setRow(7)
//	dw_2.setRow(1)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(4,6,primary!,dw_2,2,primary!)4"+string(i),dw_1,4,6,dw_2,2,primary!,primary!,false)
//	//Ä¿±ê
//	dw_1.setRow(1)
//	dw_2.setRow(7)
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(4,6,primary!,dw_1,2,primary!)4"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() £¾ startrow endrow  Ä¿±êDW getrow() £¾¡¡beforerow 5
//	dw_1.setRow(7)
//	dw_2.setRow(2)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(4,6,primary!,dw_2,2,primary!)5"+string(i),dw_1,4,6,dw_2,2,primary!,primary!,false)
//	//Ä¿±ê
//	dw_1.setRow(2)
//	dw_2.setRow(7)
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(4,6,primary!,dw_1,2,primary!)5"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
//	
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() = startrow endrow  Ä¿±êDW getrow() =¡¡beforerow 6ÁÙ½çÖµ
//	dw_1.setRow(3)
//	dw_2.setRow(3)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(3,5,primary!,dw_2,3,primary!)6"+string(i),dw_1,3,5,dw_2,3,primary!,primary!,false)
//	//Ä¿±ê
//	dw_1.setRow(3)
//	dw_2.setRow(3)
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(3,5,primary!,dw_1,3,primary!)6"+string(i),dw_2,3,5,dw_1,3,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() = endrow  Ä¿±êDW getrow() =¡¡beforerow 7ÁÙ½çÖµ
//	dw_1.setRow(5)
//	dw_2.setRow(5)
//	//Ô´
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(3,5,primary!,dw_2,3,primary!)7"+string(i),dw_1,3,5,dw_2,3,primary!,primary!,false)
//	//Ä¿±ê
//	dw_1.setRow(5)
//	dw_2.setRow(5)
//	wf_rowscopy(ai_saveorcheck,"dw_2.rowscopy(3,5,primary!,dw_1,3,primary!)7"+string(i),dw_2,3,5,dw_1,3,primary!,primary!,false)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() = startrow   8Í¬Ò»Êý¾Ý´°¿Ú
//	dw_1.setRow(6)
//	dw_2.setRow(6)
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(6,7,primary!,dw_1,6,primary!)8"+string(i),dw_1,6,7,dw_1,6,primary!,primary!,true)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() = endrow   9Í¬Ò»Êý¾Ý´°¿Ú
//	dw_1.setRow(7)
//	dw_2.setRow(7)
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(6,7,primary!,dw_1,7,primary!)9"+string(i),dw_1,6,7,dw_1,7,primary!,primary!,true)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() between startrow endrow   10Í¬Ò»Êý¾Ý´°¿Ú
//	dw_1.setRow(7)
//	dw_2.setRow(7)
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(6,8,primary!,dw_1,7,primary!)10"+string(i),dw_1,6,8,dw_1,7,primary!,primary!,true)
//	//---------------------------------------------------------------------------------------------------
//	//rowscopy() Ô´DW¡¡getrow() = endrow+1   11Í¬Ò»Êý¾Ý´°¿Ú
//	dw_1.setRow(8)
//	dw_2.setRow(8)
//	wf_rowscopy(ai_saveorcheck,"dw_1.rowscopy(6,7,primary!,dw_1,8,primary!)11"+string(i),dw_1,6,8,dw_1,7,primary!,primary!,true)
//	
//	
//	
//	wf_additem("")
//next
//---------------------------------------------------------------------------------------------------
wf_additem("")
wf_additem("")
for i=0 to 1
	ii_Rowfocuschanging=i //ÊÂ¼þ·µ¼ÓÖµ²âÊÔ
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() £¼ startrow  Ä¿±êDW getrow() £¼ beforerow 0
	dw_1.setRow(0)
	dw_2.setRow(0)
	//Ô´  Ö»ÓÐdw_1²Å´¦ÀíÊÂ¼þ
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(2,15,primary!,dw_2,1,primary!)0"+string(i),dw_1,2,15,dw_2,1,primary!,primary!,false)
	//Ä¿±ê
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(2,5,primary!,dw_1,1,primary!)0"+string(i),dw_2,2,5,dw_1,1,primary!,primary!,false)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() £¼ startrow  Ä¿±êDW getrow() £¾ beforerow 1
	dw_1.setRow(0)
	dw_2.setRow(3)
	//Ô´
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(2,6,primary!,dw_2,1,primary!)1"+string(i),dw_1,2,6,dw_2,1,primary!,primary!,false)
	//Ä¿±ê
	dw_1.setRow(3)
	dw_2.setRow(0)
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(2,5,primary!,dw_1,1,primary!)1"+string(i),dw_2,2,5,dw_1,1,primary!,primary!,false)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() between startrow endrow  Ä¿±êDW getrow() £¼ beforerow 2
	dw_1.setRow(5)
	dw_2.setRow(1)
	//Ô´
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(4,7,primary!,dw_2,2,primary!)2"+string(i),dw_1,4,7,dw_2,2,primary!,primary!,false)
	//Ä¿±ê
	dw_1.setRow(1)
	dw_2.setRow(5)
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(4,6,primary!,dw_1,2,primary!)2"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() between startrow endrow  Ä¿±êDW getrow() £¾¡¡beforerow 3
	dw_1.setRow(5)
	dw_2.setRow(2)
	//Ô´
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(4,7,primary!,dw_2,2,primary!)3"+string(i),dw_1,4,7,dw_2,2,primary!,primary!,false)
	//Ä¿±ê
	dw_1.setRow(2)
	dw_2.setRow(5)
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(4,6,primary!,dw_1,2,primary!)3"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() £¾ startrow endrow  Ä¿±êDW getrow() £¼¡¡beforerow 4
	dw_1.setRow(7)
	dw_2.setRow(1)
	//Ô´
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(4,6,primary!,dw_2,2,primary!)4"+string(i),dw_1,4,6,dw_2,2,primary!,primary!,false)
	//Ä¿±ê
	dw_1.setRow(1)
	dw_2.setRow(7)
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(4,6,primary!,dw_1,2,primary!)4"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() £¾ startrow endrow  Ä¿±êDW getrow() £¾¡¡beforerow 5
	dw_1.setRow(7)
	dw_2.setRow(2)
	//Ô´
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(4,6,primary!,dw_2,2,primary!)5"+string(i),dw_1,4,6,dw_2,2,primary!,primary!,false)
	//Ä¿±ê
	dw_1.setRow(2)
	dw_2.setRow(7)
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(4,6,primary!,dw_1,2,primary!)5"+string(i),dw_2,4,6,dw_1,2,primary!,primary!,false)
	
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() = startrow endrow  Ä¿±êDW getrow() =¡¡beforerow 6ÁÙ½çÖµ
	dw_1.setRow(3)
	dw_2.setRow(3)
	//Ô´
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(3,5,primary!,dw_2,3,primary!)6"+string(i),dw_1,3,5,dw_2,3,primary!,primary!,false)
	//Ä¿±ê
	dw_1.setRow(3)
	dw_2.setRow(3)
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(3,5,primary!,dw_1,3,primary!)6"+string(i),dw_2,3,5,dw_1,3,primary!,primary!,false)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() = endrow  Ä¿±êDW getrow() =¡¡beforerow 7ÁÙ½çÖµ
	dw_1.setRow(5)
	dw_2.setRow(5)
	//Ô´
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(3,5,primary!,dw_2,3,primary!)7"+string(i),dw_1,3,5,dw_2,3,primary!,primary!,false)
	//Ä¿±ê
	dw_1.setRow(5)
	dw_2.setRow(5)
	wf_rowsmove(ai_saveorcheck,"dw_2.rowsmove(3,5,primary!,dw_1,3,primary!)7"+string(i),dw_2,3,5,dw_1,3,primary!,primary!,false)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() = startrow   8Í¬Ò»Êý¾Ý´°¿Ú
	dw_1.setRow(6)
	dw_2.setRow(6)
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(6,7,primary!,dw_1,6,primary!)8"+string(i),dw_1,6,7,dw_1,6,primary!,primary!,true)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() = endrow   9Í¬Ò»Êý¾Ý´°¿Ú
	/*zhushaobin 2005-01-02
		µÚÁù¡¢Æß²âÊÔµã£º
 
    ÏÖÏó£ºµ±Êý¾Ý´°ÔÚ×Ô¼ºµÄÖ÷»º³åÇø½øÐÐrowscopy²Ù×÷Ê±£¬copyºóµÄÊý¾ÝÓëpb²»Ò»ÖÂ¡£
 
    Ô­Òò£º½øÐÐrowscopy²Ù×÷£¬pbµÄ×ö·¨ÊÇ£ºÏÈcopyÖ¸¶¨µÄµÚÒ»ÐÐÊý¾Ý£¬ÔÙ´ÓcopyÖ®ºóµÄ»º³åÇøÖÐÕÒ³öÐèÒªcopyµÄµÚ¶þÐÐÊý¾Ý½øÐÐcopy²Ù×÷£»
          ¶øwebµÄ×ö·¨ÊÇ£º´Ó»º³åÇøÖÐÕÒ³öËùÓÐÐèÒªcopyµÄÐÐÊý¾Ý½øÐÐcopy²Ù×÷¡£
          ÓÉÓÚÊµÏÖ´æÔÚÒÔÉÏ²îÒì£¬µ±Óï·¨Îªdw_1.rowscopy(2,3,primary!,dw_1,3,primary!)Ê±£¬pbÈ¡³öµÄ½á¹ûÖÐµÚ3ÐÐºÍµÚ4ÐÐµÄÊý¾Ý¶¼Îª
          µÚ2ÐÐµÄÊý¾Ý£»¶øwebµÃµ½µÄÊÇÒÔÇ°µÚ2ÐÐºÍµÚ3ÐÐµÄÊý¾Ý¡£ ¸ù¾Ý²Ù×÷Ä¿µÄ£¬ÎÒÈÏÎªwebµÄ×ö·¨ÊÇÕýÈ·µÄ£¬pb´æÔÚÎÊÌâ£¬ËùÒÔÃ»ÓÐ±ØÒªÄ£·Â
          pb£¬×öÎª²»Ö§³Ö´¦Àí¡£
 
    ÐèÒªÐÞ¸Ä°¸Àý¡£for zhouxiang
	*/
//	dw_1.setRow(7)
//	dw_2.setRow(7)
//	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(6,7,primary!,dw_1,7,primary!)9"+string(i),dw_1,6,7,dw_1,7,primary!,primary!,true)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() between startrow endrow   10Í¬Ò»Êý¾Ý´°¿Ú
	dw_1.setRow(7)
	dw_2.setRow(7)
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(6,8,primary!,dw_1,7,primary!)10"+string(i),dw_1,6,8,dw_1,7,primary!,primary!,true)
	//---------------------------------------------------------------------------------------------------
	//rowsmove() Ô´DW¡¡getrow() = endrow+1   11Í¬Ò»Êý¾Ý´°¿Ú
	dw_1.setRow(8)
	dw_2.setRow(8)
	wf_rowsmove(ai_saveorcheck,"dw_1.rowsmove(6,7,primary!,dw_1,8,primary!)11"+string(i),dw_1,6,8,dw_1,7,primary!,primary!,true)
	
	
	
	wf_additem("")
next

//================================
//zhushaobin 2005-01-25
/*Ö´ÐÐ¶à´ÎPB»áÊä³öerror
--------------------------------*/
ii_Rowfocuschanging=0
//=================================
ib_trackflag=false
//
//

end subroutine

public subroutine wf_rowsmove (integer ai_saveorcheck, string as_operation, datawindow adw_1, long al_startrow, long al_endrow, datawindow adw_2, integer al_beforerow, dwbuffer amovebuffer, dwbuffer atargetbuffer, boolean ab_samedw);//ai_saveorcheck=1¡¡±£´æ
//ai_saveorcheck=2¡¡±È½Ï
//wf_rowsmove(2,"adw_1.rowsmove(1,5,primary!,adw_2,1,primary!)0",dw_1,1,2,dw_2,1)
int 			li_ret,i,j
long 			ll_rowcount,ll_current,ll_newcurrent
string		ls_message


ib_trackflag=true
////---------------------------------------------------------------------------------------------------
//rowsmove()µ±Ç°ÐÐ 0
dw_3.reset()
adw_1.rowscopy(al_startrow,al_endrow,amovebuffer,dw_3,1,primary!) //±£´æÊý¾Ý

is_tracklog="" //Çå¿Õ
ib_trackflag=true //¿ªÊ¼¼ÇÂ¼

ll_rowcount=adw_1.rowcount()
is_tracklog+="rowcount:"+string(ll_rowcount)
ll_current=adw_1.getrow()
is_tracklog+="currentrow:"+string(ll_current)

//as_operation="adw_1.rowsmove(1,5,primary!,adw_2,1,primary!)0"
li_ret=adw_1.rowsmove(al_startrow,al_endrow,amovebuffer,adw_2,al_beforerow,atargetbuffer)

ll_newcurrent=adw_1.getrow()
is_tracklog+="newcurrent:"+string(ll_newcurrent)
//·µ»ØÖµ
if li_ret=1 then
	ls_message="Right|"+as_operation+" return 1"
else
	ls_message="Error|"+as_operation+" return "+f_string(li_ret)
end if
wf_additem(ls_message)

//wf_checklog(as_name,as_content,ai_flag)
//ÊÂ¼þ¶Ô±È
if wf_checklog(as_operation,is_tracklog,ai_saveorcheck)= -1 and ai_saveorcheck=2 then 
	ls_message="Error|"+as_operation+" IE:"+is_tracklog
else
	ls_message="Right|"+as_operation+" IE:"+is_tracklog
end if
wf_additem(ls_message)
if ab_samedw then
	//Êý¾Ý¶Ô±È
	if al_beforerow>=al_startrow and al_beforerow<=al_endrow +1 then j=0 //ÔÚstartrow ºÍ¡¡endrow+1ÐÐÖ®¼ä Î»ÖÃ²»±ä
	if al_beforerow>al_endrow +1 then j=(al_beforerow -(al_endrow -al_startrow) -1 ) -al_startrow //´óÓÚ endrow£«1Ê± beforerow -(endrow +startrow) -1
	
	for i=al_startrow to al_endrow

		if f_dw_checkrowdata(adw_2,i+j,f_buffertostring(atargetbuffer),dw_3,(i -al_startrow)+1,"primary")=false then
			ls_message="Error|"+as_operation+" data<>data"
			exit
		else
			ls_message="Right|"+as_operation+" data=data"
		end if
	next
else
	//Êý¾Ý¶Ô±È
	for i=al_startrow to al_endrow
		if f_dw_checkrowdata(adw_2,(i -al_startrow)+al_beforerow,f_buffertostring(atargetbuffer),dw_3,(i -al_startrow)+1,"primary")=false then
			ls_message="Error|"+as_operation+" data<>data"
			exit
		else
			ls_message="Right|"+as_operation+" data=data"
		end if
	next
end if
wf_additem(ls_message)




end subroutine

public subroutine wf_rowscopy (integer ai_saveorcheck, string as_operation, datawindow adw_1, long al_startrow, long al_endrow, datawindow adw_2, integer al_beforerow, dwbuffer amovebuffer, dwbuffer atargetbuffer, boolean ab_samedw);//ai_saveorcheck=1¡¡±£´æ
//ai_saveorcheck=2¡¡±È½Ï
//wf_rowscopy(2,"adw_1.rowscopy(1,5,primary!,adw_2,1,primary!)0",dw_1,1,2,dw_2,1)
int 			li_ret,i,j
long 			ll_rowcount,ll_current,ll_newcurrent
string		ls_message


ib_trackflag=true
////---------------------------------------------------------------------------------------------------
//rowscopy()µ±Ç°ÐÐ 0
dw_3.reset()
adw_1.rowscopy(al_startrow,al_endrow,amovebuffer,dw_3,1,primary!) //±£´æÊý¾Ý

is_tracklog="" //Çå¿Õ
ib_trackflag=true //¿ªÊ¼¼ÇÂ¼

ll_rowcount=adw_1.rowcount()
is_tracklog+="rowcount:"+string(ll_rowcount)
ll_current=adw_1.getrow()
is_tracklog+="currentrow:"+string(ll_current)

//as_operation="adw_1.rowscopy(1,5,primary!,adw_2,1,primary!)0"
li_ret=adw_1.rowscopy(al_startrow,al_endrow,amovebuffer,adw_2,al_beforerow,atargetbuffer)

ll_newcurrent=adw_1.getrow()
is_tracklog+="newcurrent:"+string(ll_newcurrent)
//·µ»ØÖµ
if li_ret=1 then
	ls_message="Right|"+as_operation+" return 1"
else
	ls_message="Error|"+as_operation+" return "+f_string(li_ret)
end if
wf_additem(ls_message)

//wf_checklog(as_name,as_content,ai_flag)
//ÊÂ¼þ¶Ô±È
if wf_checklog(as_operation,is_tracklog,ai_saveorcheck)= -1 and ai_saveorcheck=2 then 
	ls_message="Error|"+as_operation+" IE:"+is_tracklog
else
	ls_message="Right|"+as_operation+" IE:"+is_tracklog
end if
wf_additem(ls_message)
//if ab_samedw then
//	//Êý¾Ý¶Ô±È
//	if al_beforerow>=al_startrow and al_beforerow<=al_endrow +1 then j=0 //ÔÚstartrow ºÍ¡¡endrow+1ÐÐÖ®¼ä Î»ÖÃ²»±ä
//	if al_beforerow>al_endrow +1 then j=(al_beforerow -(al_endrow -al_startrow) -1 ) -al_startrow //´óÓÚ endrow£«1Ê± beforerow -(endrow +startrow) -1
//	
//	for i=al_startrow to al_endrow
//
//		if f_dw_checkrowdata(adw_2,i+j,f_buffertostring(atargetbuffer),dw_3,(i -al_startrow)+1,"primary")=false then
//			ls_message="Error|"+as_operation+" data<>data"
//			exit
//		else
//			ls_message="Right|"+as_operation+" data=data"
//		end if
//	next
//else
	//================================
	//zhushaobin 2005-01-25
	/*Ö´ÐÐrowscopyÎªÍ¬Ò»dw,beforerowºÍendrowÏàµÈÒªÈ¡ÏÂÒ»ÐÐµÄÊý¾Ý±È½Ï
	--------------------------------*/
	if al_beforerow = al_endrow and adw_2 = adw_1 then
		if al_beforerow > 0 then al_beforerow++
	end if
	//================================
	//Êý¾Ý¶Ô±È
	for i=al_startrow to al_endrow
		if f_dw_checkrowdata(adw_2,(i -al_startrow)+al_beforerow,f_buffertostring(atargetbuffer),dw_3,(i -al_startrow)+1,"primary")=false then
			ls_message="Error|"+as_operation+" data<>data"
			exit
		else
			ls_message="Right|"+as_operation+" data=data"
		end if
	next
//end if
wf_additem(ls_message)




end subroutine

public function boolean wf_count ();il_counter++
if il_counter=il_pos or il_pos=0 then return true
return false

end function

public function boolean wf_additem (string as_message);long ll_index

as_message=as_message+" [Test:"+string(il_testno)+"]"
if pos(lower(as_message),"error|") > 0 then
	il_error_no++
	ii_errornumber++
	ll_index=lb_1.additem(as_message)
	lb_1.SetState ( ll_index, true)
else
	//if cbx_right.checked and cbx_showright.checked then 
	if cbx_right.checked then 
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

public subroutine wf_getitemvalue ();integer li_ret,li_currow
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



end subroutine

public subroutine wf_rowsmovecopy_old ();//		<Interface param_number="6">RowsCopy</Interface>
//0
long li_ret,i,j
string ls_message,ls_null
datastore ds
setnull(ls_null)

dw_1.dataobject="d_dwitemstaus_feeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()

dw_2.dataobject="d_nodata_freeform"
dw_2.settransobject(sqlca)

dw_3.dataobject="d_nodata_freeform"
dw_3.settransobject(sqlca)

ds=create datastore
ds.dataobject=dw_2.dataobject
ds.settransobject(sqlca)

li_ret=dw_1.rowscopy(1,2,primary!,dw_2,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) return null"
end if
wf_additem(ls_message)
//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_2,i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1,primary!) data=data"
	end if
next
wf_additem(ls_message)

//1 Í¬Ò»buffer
li_ret=dw_1.rowscopy(1,2,primary!,dw_1,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) return null"
end if
wf_additem(ls_message)



//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_1,i+2,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1,primary!) data=data"
	end if
next
wf_additem(ls_message)

//1.1Í¬Ò»bufferÓÐ¿ÕÖµ
//data[1,x]=null,data[1,y]=null
//dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)
//3,4
//dw_1.object.data.primary.current[1,4]=ls_null
//dw_1.object.data.primary.current[1,5]=ls_null
dw_1.object.data.primary.current[1,2]=ls_null
li_ret=dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) return null"
end if
wf_additem(ls_message)



//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_1,dw_1.rowcount() -2+i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_1,1000,primary!)(have null value) data=data"
	end if
next
wf_additem(ls_message)


//2

li_ret=dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_2,dw_2.rowcount() -2+i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,primary!,dw_2,1000,primary!) data=data"
	end if
next
wf_additem(ls_message)

//3
li_ret=dw_2.rowscopy(1,2,primary!,dw_1,1,delete!)
if li_ret=1 then
	ls_message="Right|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) return -1"
else
	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) return null"
end if
wf_additem(ls_message)



//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_2,i,"primary",dw_1,i,"delete")=false then
		ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) data<>data"
		
		exit
	else
		ls_message="Right|dw_2.rowscopy(1,2,primary!,dw_1,1,delete!) data=data"
	end if
next
wf_additem(ls_message)


//4
li_ret=dw_2.rowscopy(1,2,primary!,dw_1,1,filter!)
if li_ret=1 then
	ls_message="Right|dw_2.rowscopy(1,2,primary!,dw_1,1,filter!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,filter!) return -1"
else
	ls_message="Error|dw_2.rowscopy(1,2,primary!,dw_1,1,filter!) return null"
end if
wf_additem(ls_message)

//4.1
li_ret=dw_1.rowscopy(1,2,delete!,dw_2,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) return null"
end if
wf_additem(ls_message)



//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"delete",dw_2,i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data=data"
	end if
next
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"delete",dw_2,i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,delete!,dw_2,1,primary!) data=data"
	end if
next
wf_additem(ls_message)

//4.2
li_ret=dw_1.rowscopy(1,2,filter!,dw_2,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) return null"
end if
wf_additem(ls_message)


//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"filter",dw_2,i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,filter!,dw_2,1,primary!) data=data"
	end if
next
wf_additem(ls_message)




//5
li_ret=dw_1.rowscopy(1,2,primary!,ds,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1,primary!) return null"
end if
wf_additem(ls_message)


//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dwds_checkrowdata(dw_1,i,"primary",ds,i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1,primary!) data=data"
	end if
next
wf_additem(ls_message)









//6
li_ret=dw_1.rowscopy(1,2,primary!,ds,1000,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) return -1"
else
	ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) return null"
end if
wf_additem(ls_message)



//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dwds_checkrowdata(dw_1,i,"primary",ds,ds.rowcount() -2+i,"primary")=false then
		ls_message="Error|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowscopy(1,2,primary!,ds,1000,primary!) data=data"
	end if
next
wf_additem(ls_message)







//7
li_ret=ds.rowscopy(1,2,primary!,dw_1,1,delete!)
if li_ret=1 then
	ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,delete!) return 1"
elseif li_ret=-1 then
	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,delete!) return -1"
else
	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,delete!) return null"
end if
wf_additem(ls_message)


//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dwds_checkrowdata(dw_1,i,"delete",ds,i,"primary")=false then
		ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,delete!) data<>data"
		
		exit
	else
		ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,delete!) data=data"
	end if
next
wf_additem(ls_message)
//

//
li_ret=ds.rowscopy(1,2,primary!,dw_1,1,filter!)
if li_ret=1 then
	ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,filter!) return 1"
elseif li_ret=-1 then
	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,filter!) return -1"
else
	ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,filter!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dwds_checkrowdata(dw_1,i,"filter",ds,i,"primary")=false then
		ls_message="Error|ds.rowscopy(1,2,primary!,dw_1,1,filter!) data<>data"
		
		exit
	else
		ls_message="Right|ds.rowscopy(1,2,primary!,dw_1,1,filter!) data=data"
	end if
next
wf_additem(ls_message)

lb_1.additem("")
//		<Interface param_number="6">RowsMove</Interface>

dw_1.retrieve()

//0.001
//²»ÏàÍ¬µÄÊý¾Ý´°¿Ú
dw_3.dataobject="d_employee"
dw_3.settransobject(sqlca)
dw_3.retrieve()
i=dw_1.rowcount()
j=dw_3.rowcount()
li_ret=dw_1.rowsmove(3,5,primary!,dw_3,1,primary!)
if li_ret= -1 then
	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) return -1"
elseif isnull(li_ret) then
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) return null"
else
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) return "+string(li_ret)
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È

if i<>dw_1.rowcount() and j<>dw_3.rowcount() then
	
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) data<>data"
else
	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_3,1,primary!) (columns not match) data=data"
end if
wf_additem(ls_message)

//dw_3.dataobject="d_integration_case_freeform"
//dw_3.settransobject(sqlca)

dw_3.dataobject=dw_1.dataobject
dw_3.settransobject(sqlca)

//dw_1.rowsmove(3,5,primary!,dw_1,4,primary!)//²»±ä
//0.01
dw_3.reset()

dw_1.rowscopy(3,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,5,primary!,dw_1,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) return null"
end if
wf_additem(ls_message)
long a,b
a=dw_1.rowcount()
b=dw_3.rowcount()
//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,1,primary!) data=data"
	end if
next
wf_additem(ls_message)
//dw_1.rowsmove(3,5,primary!,dw_1,2,primary!)
//0.02
dw_3.reset()
dw_1.rowscopy(3,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,5,primary!,dw_1,2,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 3
	if f_dw_checkrowdata(dw_1,i+1,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,2,primary!) data=data"
	end if
next
wf_additem(ls_message)
//dw_1.rowsmove(3,5,primary!,dw_1,7,primary!)
//0.03
dw_3.reset()
dw_1.rowscopy(3,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,5,primary!,dw_1,7,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 3
	if f_dw_checkrowdata(dw_1,i+3,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,5,primary!,dw_1,7,primary!) data=data"
	end if
next
wf_additem(ls_message)

//dw_1.rowsmove(3,5,primary!,dw_1,6,primary!)// ²»±ä
//0.04

dw_3.reset()
dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,4,primary!,dw_1,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,1,primary!) data=data"
	end if
next
wf_additem(ls_message)
//dw_1.rowsmove(3,4,primary!,dw_1,2,primary!)
//0.2
dw_3.reset()
dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,4,primary!,dw_1,2,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i+1,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,2,primary!) data=data"
	end if
next
wf_additem(ls_message)
//dw_1.rowsmove(3,4,primary!,dw_1, -1,primary!)
//0.3
//·µ»Ø-1²»ÔËÐÐrowsmove()
dw_3.reset()
//dw_1.retrieve()
dw_1.rowscopy(4,5,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!)
if li_ret= -1 then
	ls_message="Right|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) return -1"
elseif not isnull(li_ret) then
	ls_message="Error|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=true then
		ls_message="Error|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(4,5,primary!,dw_1, -1,primary!) data=data"
	end if
next
wf_additem(ls_message)
//dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount(),primary!)
//0.4
dw_3.reset()
dw_1.rowscopy(8,9,primary!,dw_3,1,primary!) //ÏÈ±£´æ

li_ret=dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,dw_1.rowcount() -3+i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(8,9,primary!,dw_1, dw_1.rowcount(),primary!) data=data"
	end if
next
wf_additem(ls_message)
//dw_1.rowsmove(3,4,primary!,dw_1,2,primary!)
//0.5
dw_3.reset()
dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,dw_1.rowcount() -2+i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, dw_1.rowcount()+1,primary!) data=data"
	end if
next
wf_additem(ls_message)
//dw_1.rowsmove(3,4,primary!,dw_1,1000,primary!)
//0.6
dw_3.reset()
dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,dw_1.rowcount() -2+i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1, 1000,primary!) data=data"
	end if
next
wf_additem(ls_message)
//w_1.rowsmove(3,4,primary!,dw_1,0,primary!)
//0.7
dw_3.reset()
dw_1.rowscopy(3,4,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(3,4,primary!,dw_1, 0,primary!)
if li_ret= -1 then
	ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) return -1"
elseif not isnull(li_ret) then
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) return "+string(li_ret)
else
	ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=true then
		ls_message="Error|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(3,4,primary!,dw_1,0,primary!) data=data"
	end if
next
//li_ret=dw_1.rowsmove(1,2,delete!,dw_2,1,primary!)
//0.8
dw_3.reset()
dw_1.deleterow(0)
dw_1.deleterow(0)
dw_1.rowscopy(1,2,delete!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(1,2,delete!,dw_1,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(1,2,delete!,dw_1,1,primary!) data=data"
	end if
next
wf_additem(ls_message)
//0.9
//li_ret=dw_1.rowsmove(1,2,filter!,dw_2,1,primary!)
dw_3.reset()
dw_1.rowscopy(3,4,primary!,dw_1,1,filter!) 
if dw_1.filteredcount()<0 then 
	messagebox("Alert","rowscopy() false!")
end if
dw_1.rowscopy(1,2,filter!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(1,2,filter!,dw_1,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(1,2,filter!,dw_1,1,primary!) data=data"
	end if
next
wf_additem(ls_message)

//1
dw_3.reset()
dw_1.rowscopy(1,2,primary!,dw_3,1,primary!) //ÏÈ±£´æ
li_ret=dw_1.rowsmove(1,2,primary!,dw_2,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_2,i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(1,2,primary!,dw_2,1,primary!) data=data"
	end if
next
wf_additem(ls_message)



//2
dw_3.reset()
dw_1.rowscopy(1,3,primary!,dw_3,1,primary!)//±£´æ
li_ret=dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 3
	if f_dw_checkrowdata(dw_2,dw_2.rowcount() -3+i,"primary",dw_3,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(1,3,primary!,dw_2,1000,primary!) data=data"
	end if
next
wf_additem(ls_message)









//3
dw_3.reset()
dw_2.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
li_ret=dw_2.rowsmove(1,2,primary!,dw_1,1,delete!)
if li_ret=1 then
	ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) return -1"
else
	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) return null"
end if
wf_additem(ls_message)


//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"delete",dw_3,i,"primary")=false then
		ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) data<>data"
		
		exit
	else
		ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,delete!) data=data"
	end if
next
wf_additem(ls_message)




//4
dw_3.reset()
dw_2.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
li_ret=dw_2.rowsmove(1,2,primary!,dw_1,1,filter!)
if li_ret=1 then
	ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) return -1"
else
	ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_1,i,"filter",dw_3,i,"primary")=false then
		ls_message="Error|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) data<>data"
		
		exit
	else
		ls_message="Right|dw_2.rowsmove(1,2,primary!,dw_1,1,filter!) data=data"
	end if
next
wf_additem(ls_message)

//5
dw_3.reset()
dw_1.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
li_ret=dw_1.rowsmove(1,2,primary!,ds,1,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(1,2,primary!,ds,1,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(1,2,primary!,ds,1,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(1,2,primary!,ds,1,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dwds_checkrowdata(dw_3,i,"primary",ds,i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(1,2,primary!,ds,1,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(1,2,primary!,ds,1,primary!) data=data"
	end if
next
wf_additem(ls_message)




//6
dw_3.reset()
dw_1.rowscopy(1,3,primary!,dw_3,1,primary!)//±£´æ
li_ret=dw_1.rowsmove(1,3,primary!,ds,1000,primary!)
if li_ret=1 then
	ls_message="Right|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) return 1"
elseif li_ret=-1 then
	ls_message="Error|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) return -1"
else
	ls_message="Error|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) return null"
end if
wf_additem(ls_message)

//Êý¾Ý¶Ô±È
for i=1 to 3
	if f_dwds_checkrowdata(dw_3,i,"primary",ds,ds.rowcount() -3+i,"primary")=false then
		ls_message="Error|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) data<>data"
		
		exit
	else
		ls_message="Right|dw_1.rowsmove(1,3,primary!,ds,1000,primary!) data=data"
	end if
next
wf_additem(ls_message)



//7
dw_3.reset()
ds.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
li_ret=ds.rowsmove(1,2,primary!,dw_1,1,delete!)
if li_ret=1 then
	ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,delete!) return 1"
elseif li_ret=-1 then
	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,delete!) return -1"
else
	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,delete!) return null"
end if
wf_additem(ls_message)


//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_3,i,"primary",dw_1,i,"delete")=false then
		ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,delete!) data<>data"
		
		exit
	else
		ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,delete!) data=data"
	end if
next
wf_additem(ls_message)

//8
dw_3.reset()
ds.rowscopy(1,2,primary!,dw_3,1,primary!)//±£´æ
li_ret=ds.rowsmove(1,2,primary!,dw_1,1,filter!)
if li_ret=1 then
	ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,filter!) return 1"
elseif li_ret=-1 then
	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,filter!) return -1"
else
	ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,filter!) return null"
end if
wf_additem(ls_message)
//Êý¾Ý¶Ô±È
for i=1 to 2
	if f_dw_checkrowdata(dw_3,i,"primary",dw_1,i,"filter")=false then
		ls_message="Error|ds.rowsmove(1,2,primary!,dw_1,1,filter!) data<>data"
		
		exit
	else
		ls_message="Right|ds.rowsmove(1,2,primary!,dw_1,1,filter!) data=data"
	end if
next
wf_additem(ls_message)

destroy ds

end subroutine

public subroutine wf_updatetwotable ();//¶à±í¸üÐÂ
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

commit;
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



end subroutine

public subroutine wf_findrequired (boolean ab_edit, integer ai_save_flag);//findrequired()  

string ls_message,ls_testname,ls_ret,ls_ret_pb,ls_argument,ls_return_argument
integer li_rowcount

long 		ll_row
string	ls_colname,ls_null
int		li_colnbr,i,j,n,m
long		ll_data_arr[]={-1,0,1,1000}
boolean	lb_updateonly 


dw_1.dataobject="d_integration_case_freeform"
dw_1.settransobject(sqlca)
dw_1.retrieve()

string ls_fun_name="FindRequired()"
dwitemstatus  l_status[]={notmodified!,new!,newmodified!,datamodified!}
string		  ls_status[]={"notmodified!","new!","newmodified!","datamodified!"}
//-----------------------------------------------------------------------------
//·µ»ØÖµ
//return 1
ls_message="dw_1.FindRequired(primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)+") pb return: 1 ;js return:"
ls_ret=string(dw_1.FindRequired(primary!,ll_row,li_colnbr,ls_colname,lb_updateonly))
if ls_ret="1" and ll_Row=0 and li_colnbr=0 and ls_colname="" then
	ls_message="Right|"+ls_message+ls_ret+",Arg changed(row:"+string(ll_row)+"colnbr:"+string(li_colnbr)+"colname:"+ls_colname+"updateonly:"+string(lb_updateonly)+")"
elseif isnull(ls_ret) then
	ls_message="Error|"+ls_message+" null ,Arg changed(row:"+string(ll_row)+"colnbr:"+string(li_colnbr)+"colname:"+ls_colname+"updateonly:"+string(lb_updateonly)+")"
else
	ls_message="Error|"+ls_message+ls_ret+",Arg changed(row:"+string(ll_row)+"colnbr:"+string(li_colnbr)+"colname:"+ls_colname+"updateonly:"+string(lb_updateonly)+")"
end if
wf_additem(ls_message)

//-----------------------------------------------------------------------------
//return null
ls_message="dw_1.FindRequired(primary!,null,"+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)+") pb return: null ;js return: "

setnull(ll_row)
ls_ret=string(dw_1.FindRequired(primary!,ll_row,li_colnbr,ls_colname,lb_updateonly))

if isnull(ls_ret) and isnull(ll_Row) and li_colnbr=0 and ls_colname="" then
	ls_message="Right|"+ls_message+" null,Arg changed(row: null colnbr:"+string(li_colnbr)+"colname:"+ls_colname+"updateonly:"+string(lb_updateonly)+")"
else
	ls_message="Error|"+ls_message+ls_ret+",Arg changed(row:"+string(ll_row)+"colnbr:"+string(li_colnbr)+"colname:"+ls_colname+"updateonly:"+string(lb_updateonly)+")"
end if
wf_additem(ls_message)
wf_additem("")

//¸÷ÖÖ±ß½çÖµ
//-------------------------------------------------------------------------
dw_1.Object.city.ddlb.required="yes"

setnull(ls_null)
dw_1.object.city.primary[5]="" //¿Õ´®
dw_1.object.city.primary[6]=ls_null //¿ÕÖµ
dw_1.insertrow(7)
dw_1.object.city.primary[7]=ls_null //¿ÕÖµ

m=0
//-----------------------------------------------------------------------------
//primary
//updateonlyÎªtrue
lb_updateonly=true

//"notmodified!","new!","newmodified!","datamodified!" ÐÐÁÐÖµ{-1,0,1,1000}
for n=1 to UpperBound(l_status) //ÐÐÁÐ×´Ì¬
	dw_1.setitemstatus(5,0,primary!,l_status[n]) //¸÷ÖÖÐÐ×´Ì¬
	dw_1.setitemstatus(6,0,primary!,l_status[n])
	
	for i=1 to UpperBound(ll_data_arr) //{-1,0,1,1000}¸÷ÖÖ±ß½çÖµ
		
		for j=1 to UpperBound(ll_data_arr)
			m++
			ll_row = ll_data_arr[i]
			li_colnbr = ll_data_arr[j]
			ls_testname="FindRequire ("+string(m)+ls_status[n]+")"
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐÇ°³õÊ¼Öµ
				ls_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
				delete from functions where test=:ls_testname and function=:ls_fun_name;
				insert into functions(test,function,arguments)
					values(:ls_testname,:ls_fun_name,:ls_argument);	
				commit;
			end if
			
			ls_ret=string(dw_1.FindRequired(primary!,ll_row,li_colnbr,ls_colname,lb_updateonly))			
			ls_return_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐºóµÄÖµ
				Update functions 
					set return_value =:ls_ret,
						 return_arguments=:ls_return_argument 
				where test=:ls_testname and function=:ls_fun_name;
			else	//±È½Ï
				select return_value,arguments,return_arguments 
					into :ls_ret_pb,:ls_argument,:ls_return_argument 
				from functions where test=:ls_testname and function=:ls_fun_name;
				
				if ls_ret=ls_ret_pb and ls_return_argument= ("primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)) then
					ls_message="Right|"+ls_testname+"["+ls_argument+"]"+"return:"+ls_ret+"("+ls_return_argument+")"
				else
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" pb return:"+ls_ret_pb+"("+ls_return_argument+")"
					wf_additem(ls_message)
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" js return:"+ls_ret+"("+"primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)+")"
				end if
				wf_additem(ls_message)
			end if
		next
	next
	wf_additem("")
next
wf_additem("")


//-----------------------------------------------------------------------------
//primary
//updateonly=false
lb_updateonly=false
//"notmodified!","new!","newmodified!","datamodified!" ÐÐÁÐÖµ{-1,0,1,1000}
for n=1 to UpperBound(l_status) //ÐÐÁÐ×´Ì¬

	dw_1.setitemstatus(5,0,primary!,l_status[n]) //¸÷ÖÖÐÐ×´Ì¬
	dw_1.setitemstatus(6,0,primary!,l_status[n])

	for i=1 to UpperBound(ll_data_arr) //{-1,0,1,1000}¸÷ÖÖ±ß½çÖµ

		for j=1 to UpperBound(ll_data_arr)
			m++
			ll_row=ll_data_arr[i]
			li_colnbr=ll_data_arr[j]
			
			
			ls_testname="FindRequire ("+string(m)+ls_status[n]+")"
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐÇ°³õÊ¼Öµ
				ls_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
				
				delete from functions where test=:ls_testname and function=:ls_fun_name;
		
				insert into functions(test,function,arguments)
				values(:ls_testname,:ls_fun_name,:ls_argument);
				
			end if		
			
			
			ls_ret=string(dw_1.FindRequired(primary!,ll_row,li_colnbr,ls_colname,lb_updateonly))
			ls_return_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
			
			
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐºóµÄÖµ
				
				Update functions set return_value =:ls_ret,return_arguments=:ls_return_argument where test=:ls_testname and function=:ls_fun_name;
			
			else	//±È½Ï
				
				select return_value,arguments,return_arguments into :ls_ret_pb,:ls_argument,:ls_return_argument from functions where test=:ls_testname and function=:ls_fun_name;
			
			
				if ls_ret=ls_ret_pb and ls_return_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly) then
					
					ls_message="Right|"+ls_testname+"["+ls_argument+"]"+"return:"+ls_ret+"("+ls_return_argument+")"
				else
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" pb return:"+ls_ret_pb+"("+ls_return_argument+")"
					wf_additem(ls_message)
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" js return:"+ls_ret+"("+"primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)+")"
				end if
				wf_additem(ls_message)

			end if
		next
	next
	wf_additem("")
next


//-----------------------------------------------------------------------------
wf_additem("")
wf_additem("")
dw_1.setfilter("#1=0")
dw_1.filter()

dw_1.object.city.primary[5]="" //¿Õ´®
dw_1.object.city.primary[6]=ls_colname //¿ÕÖµ
dw_1.insertrow(7)
dw_1.object.city.primary[7]=ls_colname //¿ÕÖµ

ls_colname=''
//filter
//updateonlyÎªtrue
lb_updateonly=true

//"notmodified!","new!","newmodified!","datamodified!" ÐÐÁÐÖµ{-1,0,1,1000}
for n=1 to UpperBound(l_status) //ÐÐÁÐ×´Ì¬
	
	dw_1.setitemstatus(5,0,filter!,l_status[n]) //¸÷ÖÖÐÐ×´Ì¬
	dw_1.setitemstatus(6,0,filter!,l_status[n])

	for i=1 to UpperBound(ll_data_arr) //{-1,0,1,1000}¸÷ÖÖ±ß½çÖµ

		for j=1 to UpperBound(ll_data_arr)
			m++
			ll_row=ll_data_arr[i]
			li_colnbr=ll_data_arr[j]
			
			
			ls_testname="FindRequire ("+string(m)+ls_status[n]+")"
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐÇ°³õÊ¼Öµ
				ls_argument="filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
				
				delete from functions where test=:ls_testname and function=:ls_fun_name;
		
				insert into functions(test,function,arguments)
				values(:ls_testname,:ls_fun_name,:ls_argument);
				
			end if		
			
			
			ls_ret=string(dw_1.FindRequired(filter!,ll_row,li_colnbr,ls_colname,lb_updateonly))
			ls_return_argument="filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
			
			
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐºóµÄÖµ
				
				Update functions set return_value =:ls_ret,return_arguments=:ls_return_argument where test=:ls_testname and function=:ls_fun_name;
			
			else	//±È½Ï
				
				select return_value,arguments,return_arguments into :ls_ret_pb,:ls_argument,:ls_return_argument from functions where test=:ls_testname and function=:ls_fun_name;
			
			
				if ls_ret=ls_ret_pb and ls_return_argument="filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly) then
					
					ls_message="Right|"+ls_testname+"["+ls_argument+"]"+"return:"+ls_ret+"("+ls_return_argument+")"
				else
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" pb return:"+ls_ret_pb+"("+ls_return_argument+")"
					wf_additem(ls_message)
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" js return:"+ls_ret+"("+"filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)+")"
				end if
				wf_additem(ls_message)

			end if
		next
	next
	wf_additem("")
next
wf_additem("")

//-----------------------------------------------------------------------------
//updateonly=false
lb_updateonly=false
//"notmodified!","new!","newmodified!","datamodified!" ÐÐÁÐÖµ{-1,0,1,1000}
for n=1 to UpperBound(l_status) //ÐÐÁÐ×´Ì¬

	dw_1.setitemstatus(5,0,filter!,l_status[n]) //¸÷ÖÖÐÐ×´Ì¬
	dw_1.setitemstatus(6,0,filter!,l_status[n])

	for i=1 to UpperBound(ll_data_arr) //{-1,0,1,1000}¸÷ÖÖ±ß½çÖµ

		for j=1 to UpperBound(ll_data_arr)
			m++
			ll_row=ll_data_arr[i]
			li_colnbr=ll_data_arr[j]
			
			
			ls_testname="FindRequire ("+string(m)+ls_status[n]+")"
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐÇ°³õÊ¼Öµ
				ls_argument="filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
				
				delete from functions where test=:ls_testname and function=:ls_fun_name;
		
				insert into functions(test,function,arguments)
				values(:ls_testname,:ls_fun_name,:ls_argument);
				
			end if		
			
			
			ls_ret=string(dw_1.FindRequired(filter!,ll_row,li_colnbr,ls_colname,lb_updateonly))
			ls_return_argument="filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
			
			
			
			if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐºóµÄÖµ
				
				Update functions set return_value =:ls_ret,return_arguments=:ls_return_argument where test=:ls_testname and function=:ls_fun_name;
			
			else	//±È½Ï
				
				select return_value,arguments,return_arguments into :ls_ret_pb,:ls_argument,:ls_return_argument from functions where test=:ls_testname and function=:ls_fun_name;
			
			
				if ls_ret=ls_ret_pb and ls_return_argument="filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly) then
					
					ls_message="Right|"+ls_testname+"["+ls_argument+"]"+"return:"+ls_ret+"("+ls_return_argument+")"
				else
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" pb return:"+ls_ret_pb+"("+ls_return_argument+")"
					wf_additem(ls_message)
					ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" js return:"+ls_ret+"("+"filter!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)+")"
				end if
				wf_additem(ls_message)

			end if
		next
	next
	wf_additem("")
next




end subroutine

public subroutine wf_updatethreetable ();//¶à±í¸üÐÂ
//____________________________________________________________________________________________
integer rc
int		li_ret,li_currow
string ls_message

string err
string ls_name,ls_fname,ls_lname
int li_emp_id,li_dept_id

//²åÈëÒ»Êý¾Ý
delete from department_update where dept_id=3;
delete from employee_update where emp_id=33;

delete from department_another_update where dept_id=3;
commit;
dw_1.dataobject = "d_update_threetable"
dw_1.settransobject(sqlca)
dw_1.retrieve()

li_currow = dw_1.insertrow(0)
dw_1.object.department_update_dept_name[li_currow]="twotable"
dw_1.object.department_update_dept_id[li_currow]=3

dw_1.object.department_another_update_dept_name[li_currow]="threetable"
dw_1.object.department_another_update_dept_id[li_currow]=3


dw_1.object.employee_update_emp_fname[li_currow]="two"
dw_1.object.employee_update_emp_lname[li_currow]="table"
dw_1.object.employee_update_emp_id[li_currow]=33
dw_1.object.employee_update_dept_id[li_currow]=333
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
		rc = dw_1.Update(TRUE, FALSE)
		IF rc = 1 THEN
			COMMIT USING SQLCA;
		ELSE
		ROLLBACK USING SQLCA;
		MessageBox("Status", &
			+ "Update of employee_update table failed. " &
			+ "Rolling back all changes.")
		END IF

		//update three table
		dw_1.Modify("department_another_update_dept_name.Update = Yes")
		dw_1.Modify("department_another_update_dept_id.Update = Yes")
		dw_1.Modify("department_another_update_dept_id.Key = Yes")

		// Make employee table updatable.
		dw_1.Modify( &
		 "DataWindow.Table.UpdateTable = ~"department_another_update~"")

		//Turn on update for desired employee columns.
		dw_1.Modify("employee_update_emp_id.Update = no")
		dw_1.Modify("employee_update_emp_fname.Update = no")
		dw_1.Modify("employee_update_emp_lname.Update = no")
		dw_1.Modify("employee_update_dept_id.Update = no")
		dw_1.Modify("employee_update_emp_id.Key = no")

		//Then update the employee table.
		rc = dw_1.Update()
		IF rc = 1 THEN
			COMMIT USING SQLCA;
		ELSE
		ROLLBACK USING SQLCA;
		MessageBox("Status", &
			+ "Update of department_another_update table failed. " &
			+ "Rolling back all changes.")
		END IF



ELSE
		ROLLBACK USING SQLCA;
		MessageBox("Status", &
			+ "Update of department_another_update table failed. " &
			+ "Rolling back changes to department.")

END IF

select count(*) into:li_ret from department_update where dept_id=3;

select dept_name,dept_id into:ls_name,:li_dept_id from department_update where dept_id=3;


if li_ret = 1 and ls_name="twotable" and li_dept_id=3 then
	ls_message="Right|1.Update three table (first table) insert(3,twotable) success rowcount = "+string(li_ret)+" value("+string(li_dept_id)+","+ls_name+")"
else
	ls_message="Error|1.Update three table (first table) insert(3,twotable) success rowcount = "+string(li_ret)+" value("+string(li_dept_id)+","+ls_name+")"
end if
wf_additem(ls_message)

select count(*) into:li_ret from employee_update where emp_id=33;
select emp_fname,emp_lname,emp_id,dept_id into :ls_fname,:ls_lname,:li_emp_id,:li_dept_id from employee_update where emp_id=33;

if li_ret = 1 and ls_fname="two"  and ls_lname="table" and li_emp_id=33 and li_dept_id=333 then
	ls_message="Right|1.Update three table (second table) insert(33,two,table,333) success rowcount = "+string(li_ret)+" value("+string(li_emp_id)+","+ls_fname+","+ls_lname+","+string(li_dept_id)+")"
else
	ls_message="Error|1.Update three table (second table) success rowcount = "+string(li_ret)
end if
wf_additem(ls_message)

//check three table
select count(*) into:li_ret from department_another_update where dept_id=3;
select dept_name,dept_id into:ls_name,:li_dept_id from department_another_update where dept_id=3;

if li_ret = 1 and ls_name="threetable" and li_dept_id=3 then
	ls_message="Right|1.Update three table (third table) insert(3,threetable) success rowcount = "+string(li_ret)+" value("+string(li_dept_id)+","+ls_name+")"
else
	ls_message="Error|1.Update three table (third table) insert(3,threetable) success rowcount = "+string(li_ret)+" value("+string(li_dept_id)+","+ls_name+")"
end if
wf_additem(ls_message)


end subroutine

public subroutine wf_filterandsort (boolean ab_save);long ll_i,ll_count
string ls_CurValue,ls_OriValue
string ls_flag = 'filterandsort'
string ls_sort,ls_filter

dw_1.Dataobject = 'd_filterandsort_func'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()

ll_count = dw_1.RowCount()
for ll_i = 1 to ll_Count
	ls_CurValue =ls_CurValue +","+ string(dw_1.GetItemNumber(ll_i,'emp_ID'))
next

if ab_save then
	//±£´æ
	delete exp_fun where value = 'exp include function' and flag =:ls_flag;
	Insert into exp_Fun(value,result,flag) values('exp include function',:ls_CurValue,:ls_flag);
else
	//±È½Ï
	select result into :ls_OriValue from exp_fun where value = 'exp include function' and flag = :ls_flag;
	
	//µÃµ½¶ÔÏóSortÓëFilterÌõ¼þ
	ls_sort = dw_1.describe("DataWindow.table.sort")
	ls_filter = dw_1.describe("DataWindow.table.filter")
	if ls_curValue = ls_OriValue then
		wf_additem("Right JS|Include function:Filter:"+ls_Filter+";Soft:"+ls_sort+"|Emp_ID"+ls_OriValue)
	else
		wf_additem("Error PB|Include function:Filter:"+ls_Filter+";Soft:"+ls_sort+"|Emp_ID"+ls_OriValue)
		wf_additem("Error JS|Include function:Filter:"+ls_Filter+";Soft:"+ls_sort+"|Emp_ID"+ls_curValue)
	end if
end if
commit;

dw_1.DataObject = 'd_filterandsort_logic'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()

ll_count = dw_1.RowCount()
ls_CurValue = ''
for ll_i = 1 to ll_Count
	ls_CurValue =ls_CurValue+ ","+ string(dw_1.GetItemNumber(ll_i,'emp_ID'))
next


if ab_save then
	//±£´æ
	delete exp_fun where value = 'exp include logic operator' and flag =:ls_flag;
	Insert into exp_Fun(value,result,flag) values('exp include logic operator',:ls_CurValue,:ls_flag);
else
	//±È½Ï
	select result into :ls_OriValue from exp_fun where value = 'exp include logic operator' and flag = :ls_flag;
	
	ls_sort = dw_1.describe("DataWindow.table.sort")
	ls_filter = dw_1.describe("DataWindow.table.filter")
	if ls_curValue = ls_OriValue then
		wf_additem("Right JS|include logic:Filter:"+ls_Filter+";Soft:"+ls_sort+"|Emp_ID"+ls_OriValue)
	else
		wf_additem("Error PB|include logic:Filter:"+ls_Filter+";Soft:"+ls_sort+"|Emp_ID"+ls_OriValue)
		wf_additem("Error JS|include logic:Filter:"+ls_Filter+";Soft:"+ls_sort+"|Emp_ID"+ls_curValue)
	end if
end if
commit;

dw_1.DataObject = 'd_employee'
dw_1.SetTransObject(sqlca)
dw_1.Retrieve()

//µ¥ÁÐ
dw_1.SetSort("emp_id D")
dw_1.Sort()
wf_save(ab_save,"single col sort:",ls_flag)
//µ¥ÁÐ±í´ïÊ½
dw_1.SetSort("year( birth_date ) D")
dw_1.Sort()
wf_save(ab_save,"single exp sort:",ls_flag)

//¶àÁÐ
dw_1.SetSort("dept_id D,emp_id A ")
dw_1.Sort()
wf_save(ab_save,"multi col sort:",ls_flag)
//¶àÁÐ±í´ïÊ½
dw_1.SetSort("count(dept_id) A,emp_id D")
dw_1.Sort()
wf_save(ab_save,"multi exp sort:",ls_flag)


end subroutine

public subroutine wf_save (boolean ab_save, string as_value, string as_flag);string ls_curvalue,ls_orivalue,ls_sort
long ll_count,ll_i

ll_count = dw_1.RowCount()
for ll_i = 1 to ll_Count
	ls_CurValue =ls_CurValue + ","+ string(dw_1.GetItemNumber(ll_i,'emp_ID'))
next


if ab_save then
	//±£´æ
	delete exp_fun where value = :as_value and flag =:as_flag;
	Insert into exp_Fun(value,result,flag) values(:as_value,:ls_CurValue,:as_flag);
else
	//±È½Ï
	select result into :ls_OriValue from exp_fun where value = :as_value and flag = :as_flag;
	//µÃµ½¶ÔÏóSortÓëFilterÌõ¼þ
	ls_sort = dw_1.describe("DataWindow.table.sort")

	if ls_curValue = ls_OriValue then
		wf_additem("Right JS|"+as_value+" "+ls_sort+"|Emp_ID"+ls_OriValue)
	else
		wf_additem("Error PB|"+as_value+" "+ls_sort+"|Emp_ID"+ls_OriValue)
		wf_additem("Error JS|"+as_value+" "+ls_sort+"|Emp_ID"+ls_curValue)
	end if
end if
commit;

end subroutine

public subroutine wf_message (string as_operate, string as_problem);
string ls_message[]

lb_1.additem("[±àºÅ]  DataWindow Integration Test" + string(ii_number,"000"))
ii_number++
 
lb_1.additem("[ÈÕÆÚ]" + string(today(),"yyyyÄêmmÔÂddÈÕ"))

lb_1.additem("[Á´½Ó]"+gs_link)

lb_1.additem("[ÎÊÌâ]"+''+as_problem+'')

lb_1.additem("[Ó°Ïì³Ì¶È]"+"¡ï¡ï¡ï¡ï¡ï")

lb_1.additem("[²Ù×÷]"+'click "Integration Test"->"DataWindow Integration Test"')

lb_1.additem("[²Ù×÷]"+'execute "'+as_operate+'"')

lb_1.additem("[Êä³ö]"+"")

//lb_1.additem("½á¹û"+"¶Ô±È"+"²Ù×÷"+"·µ»ØÖµ»ò½á¹û")
//f_outputtext(dw_output+ls_message)
end subroutine

public function integer wf_returnerror ();return il_error_no
end function

public function integer wf_str2array (string as_data, ref string as_rv[]);//wf_str2array(string	as_data, ref string	as_rv[]) return integer
if isnull(as_data) or as_data = '' then return 0

long		ll_startPos, ll_endPos, ll_upperBound

ll_upperBound = 1
ll_startPos = 1
ll_endPos     = Pos(as_data, ',', ll_startPos)
do while ll_endPos <> 0
	as_rv[ll_upperBound] = Mid(as_data,ll_startPos,ll_endPos - ll_startPos)
	ll_startPos 	= ll_endPos + 1
	ll_endPos 		= Pos(as_data,',',ll_startPos)
	ll_upperBound 	= ll_upperBound + 1
loop
as_rv[ll_upperBound] = Mid(as_data,ll_startPos)
return ll_upperBound
end function

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
        +' "employee"."city",   ' &
        +' "employee"."start_date",  ' & 
        +' "employee"."zip_code",   ' &
		  +' "employee"."street",   ' &        
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

public function string wf_produce (string as_type);//wf_produce(string	as_type)return string
long   ll_rand
string ls_type
string ls_retVal

ls_type = Left(lower(as_type), 4)
ls_type = trim(ls_type)
il_number += 16
is_string += ' App '
ll_rand = il_number
choose case ls_type
	CASE 'colo'//Color
		ls_retVal = string(ll_rand)
	case 'bool'
		if mod(ll_rand, 2) = 0 then
			ls_retVal = 'True'
		else
			ls_retVal = 'False'
		end if
	case 'char'
		ls_retVal = Char(Mod(ll_rand,127))
	case 'deci', 'dec'
		ls_retVal = string(ll_rand) + string(Mod(ll_rand, 19))
	case 'doub','long'
		ls_retVal = string(ll_rand*ll_rand)
	case 'int','inte'
		ls_retVal = string(Mod(ll_rand ,125)) 
	case 'stri'
		int li_loop = 5, li_temp
		
		for li_temp = 1 to li_loop
			
			ls_retVal = ls_retVal + Char(Mod(Mod(il_number,17) + li_temp + 65,127))
		next
end choose
return ls_retVal
end function

public subroutine wf_additem (string as_data, listbox alst_ctrl);//wf_additem(string	as_data, listbox alst_ctrl ) return none
long 	  ll_upperBound, ll_cur
string  ls_data[]
ll_upperBound = wf_str2array(as_data,ls_data)
for ll_cur = 1 to ll_upperBound
	alst_ctrl.AddItem('P'+trim(ls_data[ll_cur]))
next
end subroutine

public subroutine wf_add_pro ();//wf_add_pro
string		ls_prop_data
ls_prop_data="001:Border,002:BorderStyle,003:BringToTop,004:ControlMenu,005:DataObject,006:DragAuto,007:DragIcon&
,008:Enabled,009:Height,010:HScrollBar,011:Icon,012:LiveScroll,013:MaxBox,014:MinBox,015:Object,016:Resizable,017:RightToLeft&
,018:TabOrder,019:Tag,020:Title,021:TitleBar,023:Visible,024:VScrollBar,025:Width,026:X,027:Y"//add by liulihua from 022

wf_additem(ls_prop_data,lb_prop)
end subroutine

public subroutine wf_testitems (boolean ab_runonly);int i,li_currentrow,li_row,li_deleterow
string ls_item[]
integer li_ItemTotal
if ab_runonly=false then //listbox add items	
			ls_item[1]="General Function"
			ls_item[2]="General Function(dw readonly)"
			ls_item[3]="ItemStatus"
			ls_item[4]="DataAccess"
			ls_item[5]="GetItemValue"
			
			ls_item[6]="Update"
			ls_item[7]="Retrieve"
			ls_item[8]="Event"
			ls_item[9]="Prinet/Save as/Filter/Sort"
			ls_item[10]="FindRequired"
			
			ls_item[11]="FindRequired(edit)"
			ls_item[12]="RowsMove(copy)1"
			ls_item[13]="RowsMove(copy)2"
			ls_item[14] = "Filter and Sort"
			ls_item[15] = "General Properties"
			
			
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
					ii_errornumber = 0
					li_currentrow = lb_1.totalitems()
					wf_message(lb_testitems.text(i),"")					//
					il_testno=i					
					choose case i
						case 1							
							wf_generalfunction(false)
						case 2
							wf_generalfunction(true)
						case 3
							wf_itemstatus()
						case 4
							wf_dataaccess()
						case 5
							wf_getitemvalue()
						case 6
							wf_update()
						case 7
							wf_retrieve()
						case 8
							wf_event()
						case 9
							timer(1)
							wf_print()
							timer(0)
						case 10                 //2.7ÐÂÔö¼Ó¹¦ÄÜ  FindRequired(X) 0-check 1-save
							wf_findrequired(false,0)
						case 11
							wf_findrequired(true,0) //edit¿Ø¼þ
						case 12
							wf_rowsmovecopy_old() 
						case 13
							wf_rowsmoveandcopy(2) //ÔÝÊ±×¢ÊÍµô
						case 14
							wf_FilterAndSort(false)
						Case 15
							wf_run_property()
					end choose
					lb_1.additem(" ")
					if ii_errornumber = 0 and not(cbx_right.checked) then
						li_deleterow = lb_1.totalitems()
						for li_row = li_currentrow + 1 to li_deleterow
							lb_1.deleteitem(li_currentrow + 1)
						next
					end if
				end if			
			NEXT			
			st_error.text=string(il_error_no)
end if
end subroutine

public subroutine wf_run_property ();//wf_run_property

Integer		i, n
For i = 1 To lb_prop.TotalItems()
	lb_prop.SelectItem(i)
	lb_prop.Event SelectionChanged(i)
	For n = 1 To lb_propparm.TotalItems()
		lb_propparm.SelectItem(n)
		lb_propparm.Event SelectionChanged(n)
		cb_set.Event Clicked()
//		gs_js += st_tip.Text + "~r~n"
//		cb_get.Event Clicked()
//		gs_js += st_tip.Text + "~r~n"		
	Next
//	If n = 1 Then	
//		cb_set.Event Clicked()
//		gs_js += st_tip.Text + "~r~n"		
//	End If
Next

//boolean		lb_Get
//String		ls_Message
//Any			la_GetValue
////Border
//dw_1.Border = True
//lb_Get = dw_1.Border
//If	lb_Get Then
//	ls_message="Right|dw_1.Border() return True"
//Else
//	ls_message="Error|dw_1.Border() return "+f_string(lb_Get)
//End	If
//wf_additem(ls_message)
//
//dw_1.Border = False
//lb_Get = dw_1.Border
//If	Not lb_Get Then
//	ls_message="Right|dw_1.Border return True"	
//Else
//	ls_message="Error|dw_1.Border return "+f_string(lb_Get)
//End	If
//wf_additem(ls_message)
//
////BorderStyle
//dw_1.borderstyle = StyleBox!
//la_GetValue = dw_1.borderstyle
//If	dw_1.borderstyle = StyleBox! Then
//	ls_message="Right|dw_1.borderstyle return StyleBox!"	
//Else
//	ls_message="Error|dw_1.borderstyle return "+f_string_othertype("BorderStyle",dw_1)
//End	If
//wf_additem(ls_message)
//
//dw_1.borderstyle = StyleLowered!
//la_GetValue = dw_1.borderstyle
//If	dw_1.borderstyle = StyleLowered! Then
//	ls_message="Right|dw_1.borderstyle return StyleLowered!"	
//Else
//	ls_message="Error|dw_1.borderstyle return "+f_string_othertype("BorderStyle",dw_1)
//End	If
//wf_additem(ls_message)
//
//dw_1.borderstyle = StyleRaised!
//la_GetValue = dw_1.borderstyle
//If	dw_1.borderstyle = StyleRaised! Then
//	ls_message="Right|dw_1.borderstyle return StyleRaised!"	
//Else
//	ls_message="Error|dw_1.borderstyle return "+f_string_othertype("BorderStyle",dw_1)
//End	If
//wf_additem(ls_message)
//
//dw_1.borderstyle = StyleShadowBox!
//If	dw_1.borderstyle = StyleShadowBox! Then
//	ls_message="Right|dw_1.borderstyle return StyleShadowBox!"	
//Else
//	ls_message="Error|dw_1.borderstyle return "+f_string_othertype("BorderStyle",dw_1)
//End	If
//wf_additem(ls_message)
//
////Resizable
//cb_testbringtotop.Visible = True
//dw_1.bringtotop = True
//If	dw_1.bringtotop Then
//	ls_message="Right|dw_1.bringtotop return True"	
//Else
//	ls_message="Error|dw_1.bringtotop return "+f_string(dw_1.bringtotop)
//End	If
//wf_additem(ls_message)
//
////titlebar
//dw_1.TitleBar = True
//If dw_1.TitleBar Then
//	ls_message="Right|dw_1.TitleBar return True"	
//Else
//	ls_message="Error|dw_1.TitleBar return "+f_string(dw_1.Controlmenu)
//End	If
//wf_additem(ls_message)
//
////controlMenu
//dw_1.controlmenu = True
//If dw_1.Controlmenu Then
//	ls_message="Right|dw_1.Controlmenu return True"	
//Else
//	ls_message="Error|dw_1.Controlmenu return "+f_string(dw_1.Controlmenu)
//End	If
//wf_additem(ls_message)
//
//dw_1.controlmenu = False
//If Not dw_1.Controlmenu Then
//	ls_message="Right|dw_1.Controlmenu return False"	
//Else
//	ls_message="Error|dw_1.Controlmenu return "+f_string(dw_1.Controlmenu)
//End	If
//wf_additem(ls_message)
//
////titlebar
//dw_1.TitleBar = False
//If Not dw_1.TitleBar Then
//	ls_message="Right|dw_1.TitleBar return False"	
//Else
//	ls_message="Error|dw_1.TitleBar return "+f_string(dw_1.Controlmenu)
//End	If
//wf_additem(ls_message)

//dw_1.dataobject="d_integration_case_freeform"
//dw_1.settransobject(sqlca)
//dw_1.retrieve()
////		<Interface param_number="0">Hide</Interface>
//li_ret=dw_1.Hide()
//if li_ret=1 then
//	ls_message="Right|dw_1.Hide() return 1"
//else
//	ls_message="Error|dw_1.Hide() return "+f_string(li_ret)
//end if
//
//wf_additem(ls_message) 
end subroutine

public function string wf_retoutput_message (string as_right, string as_get, string as_pro);//wf_Retoutput_Message(string	as_Right,	string	as_Get)Return String
String		ls_Message

If	as_Right = as_Get Then
	ls_Message	=	"Right|dw_1."+as_pro+" return "+as_Right
Else
	ls_Message	=	"Error|dw_1."+as_pro+" return "+as_Get
End	If

Return ls_Message
end function

public subroutine wf_random (string as_type, listbox alst);//wf_random(string	as_type,	listbox	alst)
string   ls_dataType[]
String	ls_parm, ls_booltmp
long 		ll_parmNum, ll_cur
integer  li_cnt

alst.Reset()
if lower(as_type) = 'boolean' then
	alst.AddItem('False')
	alst.AddItem('True')	
	return
end if

if lower(as_type) = 'range' Then
	alst.AddItem('32')
	alst.AddItem('64')
	alst.AddItem('128')
	alst.AddItem('160')
	alst.AddItem('320')
	
	Return
End If

for li_cnt =  1 to 5

	ls_parm = ''
	ll_parmNum = wf_str2array(as_type, ls_dataType)
	for ll_cur = 1 to ll_parmNum
		ls_parm = ls_parm + ','+ wf_produce(ls_dataType[ll_cur])
	next

	alst.AddItem(Mid(ls_parm, 2))
next
end subroutine

public subroutine wf_run_genfun2 ();//
String		ls_Message, ls_RET, ls_Parameter
Integer		li_RET,	li_Parameter

datawindow ldw_dw
powerobject lpb_dw

dw_1.dataobject="d_categorycount"//d_integration_case_freeform
dw_1.settransobject(sqlca)
dw_1.retrieve()

//		<Interface param_number="1">CategoryCount</Interface>
li_RET=dw_1.CategoryCount ( "gr_1" )
If	li_ret = 5	Then
	ls_message="Right|dw_1.CategoryCount() return "+f_string(li_ret)
Else
	ls_message="Error|dw_1.CategoryCount() return "+f_string(li_ret)
End If
wf_additem(ls_message)

li_RET=dw_1.CategoryCount ( "gr_2" )
If	li_ret = -1	Then
	ls_message="Right|dw_1.CategoryCount() return "+f_string(li_ret)
Else
	ls_message="Error|dw_1.CategoryCount() return "+f_string(li_ret)
End If
wf_additem(ls_message)

//²ÎÊýÎªNull
SetNull (ls_Parameter)
li_RET=dw_1.CategoryCount ( ls_Parameter )
If	IsNull ( li_ret )	Then
	ls_message="Right|dw_1.CategoryCount() return "+f_string(li_ret)
Else
	ls_message="Error|dw_1.CategoryCount() return "+f_string(li_ret)
End If
wf_additem(ls_message)

//²ÎÊýÎª±äÁ¿
ls_Parameter = 'gr_1'
li_RET=dw_1.CategoryCount ( ls_Parameter )
If	li_ret = 5	Then
	ls_message="Right|dw_1.CategoryCount() return "+f_string(li_ret)
Else
	ls_message="Error|dw_1.CategoryCount() return "+f_string(li_ret)
End If
wf_additem(ls_message)

ls_Parameter = 'gr_2'
li_RET=dw_1.CategoryCount ( ls_Parameter )
If	li_ret = -1	Then
	ls_message="Right|dw_1.CategoryCount() return "+f_string(li_ret)
Else
	ls_message="Error|dw_1.CategoryCount() return "+f_string(li_ret)
End If
wf_additem(ls_message)


//		<Interface param_number="1">CategoryCount</Interface>
ls_RET=dw_1.CategoryName ( "gr_1", 5 )
If ls_RET = '500' Then
	ls_message="Right|dw_1.CategoryName( ~"gr_1~", 5 ) return "+ls_RET
Else
	ls_message="Error|dw_1.CategoryName( ~"gr_1~", 5 ) return "+ls_RET
End If
wf_additem(ls_message)

ls_RET=dw_1.CategoryName ( "gr_1", 0 )
If ls_RET = "" Then
	ls_message="Right|dw_1.CategoryName( ~"gr_1~", 0 ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName( ~"gr_1~", 0 ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

//²ÎÊýÎª±äÁ¿
SetNull ( ls_Parameter )
ls_RET=dw_1.CategoryName ( ls_Parameter, -1 )
If IsNull ( ls_RET ) Then
	ls_message="Right|dw_1.CategoryName( ls_Parameter, -1 ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName( ls_Parameter, -1 ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

ls_Parameter = 'gr_1'
ls_RET=dw_1.CategoryName ( ls_Parameter, 6 )
If ls_RET = "" Then
	ls_message="Right|dw_1.CategoryName( ls_Parameter, 6 ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName( ls_Parameter, 6 ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

ls_Parameter = 'gr_2'
ls_RET=dw_1.CategoryName ( ls_Parameter, 3 )
If ls_RET = "" Then
	ls_message="Right|dw_1.CategoryName( ls_Parameter, 3 ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName( ls_Parameter, 3 ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

ls_Parameter = 'gr_1'
ls_RET=dw_1.CategoryName ( ls_Parameter, 3 )
If ls_RET = '300' Then
	ls_message="Right|dw_1.CategoryName ( ls_Parameter, 3 ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName ( ls_Parameter, 3 ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

SetNull (li_Parameter)
ls_Parameter = 'gr_1'
ls_RET=dw_1.CategoryName ( ls_Parameter, li_Parameter )
If IsNull(ls_RET) Then
	ls_message="Right|dw_1.CategoryName ( ls_Parameter, li_Paremeter ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName ( ls_Parameter, li_Paremeter ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

li_Parameter = 100
ls_Parameter = 'gr_1'
ls_RET=dw_1.CategoryName ( ls_Parameter, li_Parameter )
If ls_RET = "" Then
	ls_message="Right|dw_1.CategoryName ( ls_Parameter, li_Paremeter ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName ( ls_Parameter, li_Paremeter ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

li_Parameter = 4
ls_Parameter = 'gr_1'
ls_RET=dw_1.CategoryName ( ls_Parameter, li_Parameter )
If ls_RET = '400' Then
	ls_message="Right|dw_1.CategoryName( ls_Parameter, li_Paremeter ) return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.CategoryName( ls_Parameter, li_Paremeter ) return "+f_string(ls_RET)
End If
wf_additem(ls_message)

//		<Interface param_number="0">ClassName</Interface>
ldw_dw = create datawindow
ls_RET = ldw_dw.ClassName( )
If ls_RET = 'datawindow' Then
	ls_message="Right|dw_1.ClassName() return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.ClassName() return "+f_string(ls_RET)
End If
wf_additem(ls_message)
If IsValid (ldw_dw) Then destroy ( ldw_dw )

lpb_dw = dw_1
ls_RET = lpb_dw.ClassName( )
If ls_RET = 'dw_1' Then
	ls_message="Right|dw_1.ClassName() return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.ClassName() return "+f_string(ls_RET)
End If
wf_additem(ls_message)
//If IsValid (lpb_dw) Then destroy ( lpb_dw )

lpb_dw = create dw_1
ls_RET = lpb_dw.ClassName( )
If ls_RET = 'dw_1' Then
	ls_message="Right|dw_1.ClassName() return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.ClassName() return "+f_string(ls_RET)
End If
wf_additem(ls_message)
If IsValid (lpb_dw) Then destroy ( lpb_dw )

//		<Interface param_number="1">ClassName</Interface>
ldw_dw = create datawindow
ls_RET = ClassName( ldw_dw )
If ls_RET = 'datawindow' Then
	ls_message="Right|dw_1.ClassName() return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.ClassName() return "+f_string(ls_RET)
End If
wf_additem(ls_message)
If IsValid (ldw_dw) Then destroy ( ldw_dw )

lpb_dw = dw_1
ls_RET = ClassName( lpb_dw )
If ls_RET = 'dw_1' Then
	ls_message="Right|dw_1.ClassName() return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.ClassName() return "+f_string(ls_RET)
End If
wf_additem(ls_message)
//If IsValid (lpb_dw) Then destroy ( lpb_dw )

lpb_dw = create dw_1
ls_RET = ClassName( lpb_dw )
If ls_RET = 'dw_1' Then
	ls_message="Right|dw_1.ClassName() return "+f_string(ls_RET)
Else
	ls_message="Error|dw_1.ClassName() return "+f_string(ls_RET)
End If
wf_additem(ls_message)
If IsValid (lpb_dw) Then destroy ( lpb_dw )

//		<Interface param_number="2">selecttext</Interface>
li_RET = dw_1.SelectText( 0, 3 )
If	li_RET = -1 Then
	ls_message="Right|dw_1.SelectText(0, 3) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(0, 3) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">clear</Interface>
li_RET = dw_1.Clear( )
If	li_RET = -1 Then
	ls_message="Right|dw_1.Clear() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Clear() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">Copy</Interface>
li_RET = dw_1.Copy( )
If	li_RET = -1 Then
	ls_message="Right|dw_1.Copy() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Copy() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">Copy</Interface>
li_RET = dw_1.object.ole_1.copy()
If	li_RET = 0 Then
	ls_message="Right|dw_1.object.ole_1.copy() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.object.ole_1.copy() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

li_RET = dw_1.object.ole_2.copy()
If	li_RET = 0 Then
	ls_message="Right|dw_1.object.ole_1.copy() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.object.ole_1.copy() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

dw_1.dataobject="d_integration_case_freeform"//d_categorycount
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.Setfocus()

//RichTextEdit control function
////		<Interface param_number="0">SelectTextAll</Interface> 
//li_RET = dw_1.SelectTextAll( Detail! )
//If	li_RET > 0 Then
//	ls_message="Right|dw_1.SelectTextAll() return "+f_string(li_RET)
//Else
//	ls_message="Error|dw_1.SelectTextAll() return "+f_string(li_RET)
//End	If
//wf_additem(ls_message)

//		<Interface param_number="2">selecttext</Interface>

//		<Interface param_number="0">Copy</Interface>

dw_1.SetRow(1)
dw_1.setcolumn(1)
dw_1.SetItem( 1, "dept_id", 300)
li_RET = dw_1.SelectText( 1, 1 )
If	li_RET = 1 Then
	ls_message="Right|dw_1.SelectText(1, 20) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(1, 20) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">clear</Interface>
li_RET = dw_1.Clear( )
If	li_RET = 1 Then
	ls_message="Right|dw_1.Clear() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Clear() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="2">selecttext</Interface>
li_RET = dw_1.SelectText( 7, 2 )
If	li_RET = 0 Then
	ls_message="Right|dw_1.SelectText(7, 2) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(7, 2) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

li_RET = dw_1.SelectText( -4, 1 )
If	li_RET = 0 Then
	ls_message="Right|dw_1.SelectText(-4, 1) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(-4, 1) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">clear</Interface>
li_RET = dw_1.Clear( )
If	li_RET = 0 Then
	ls_message="Right|dw_1.Clear() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Clear() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="2">selecttext</Interface>
SetNull ( li_Parameter)
li_RET = dw_1.SelectText( 1, li_Parameter )
If	IsNull ( li_RET ) Then
	ls_message="Right|dw_1.SelectText(1, li_Parameter) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(1, li_Parameter) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

SetNull ( li_Parameter)
li_RET = dw_1.SelectText( li_Parameter, 2 )
If	IsNull ( li_RET ) Then
	ls_message="Right|dw_1.SelectText(li_Parameter, 2) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(li_Parameter, 2) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

li_Parameter = 3
li_RET = dw_1.SelectText( li_Parameter, 2 )
If	li_RET = 2 Then
	ls_message="Right|dw_1.SelectText(li_Parameter, 2) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(li_Parameter, 2) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">clear</Interface>
li_RET = dw_1.Clear( )
If	li_RET = 2 Then
	ls_message="Right|dw_1.Clear() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Clear() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="2">selecttext</Interface>
li_RET = dw_1.SelectText( 1, -1 )
If	li_RET = 4 Then
	ls_message="Right|dw_1.SelectText(1, -1) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(1, -1) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">clear</Interface>
li_RET = dw_1.Clear( )
If	li_RET = 4 Then
	ls_message="Right|dw_1.Clear() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Clear() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="2">selecttext</Interface>
li_RET = dw_1.SelectText( 0, 2 )
If	li_RET = 0 Then
	ls_message="Right|dw_1.SelectText(0, 2) return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.SelectText(0, 2) return "+f_string(li_RET)
End	If
wf_additem(ls_message)

//		<Interface param_number="0">copy</Interface>
dw_1.SetItem( 1, "dept_id", 300)
dw_1.SelectText( 2, 20 )
li_RET = dw_1.Copy( )
If	li_RET = 6 Then
	ls_message="Right|dw_1.Copy() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Copy() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

dw_1.SetItem( 1, "dept_id", 300)
dw_1.SelectText( 10, 20 )
li_RET = dw_1.Copy( )
If	li_RET = 0 Then
	ls_message="Right|dw_1.Copy() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Copy() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

string error_syntaxfromSQL, error_create
string new_sql, new_syntax
new_sql = 'SELECT dept_id, emp_id, emp_fname, mydatetime from employee where emp_id <= 300'

new_syntax = SQLCA.SyntaxFromSQL(new_sql, 'Style(Type=Form)', error_syntaxfromSQL)
If Len(error_syntaxfromSQL) > 0 Then
	ls_message="Error|transaction.SyntaxFromSQL() return "+f_string(new_syntax) + "Error Text:"+error_syntaxfromSQL
	wf_additem(ls_message)
Else
	ls_message="Right|transaction.SyntaxFromSQL() return "+f_string(new_syntax)
	wf_additem(ls_message)
	li_RET = dw_1.Create(new_syntax, error_create)
	If li_RET = 1 Then
		ls_message="Right|dw_1.Create() return "+f_string(li_RET)
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
	Else
		ls_message="Right|dw_1.Create() return "+f_string(li_RET) + "Error Text:"+error_create
	End	If
	wf_additem(ls_message)
End If

new_syntax = SQLCA.SyntaxFromSQL(new_sql, 'Style(Type=Grid)', error_syntaxfromSQL)
If Len(error_syntaxfromSQL) > 0 Then
	ls_message="Error|transaction.SyntaxFromSQL() return "+f_string(new_syntax) + "Error Text:"+error_syntaxfromSQL
	wf_additem(ls_message)
Else
	ls_message="Right|transaction.SyntaxFromSQL() return "+f_string(new_syntax)
	wf_additem(ls_message)
	li_RET = dw_1.Create(new_syntax, error_create)
	If li_RET = 1 Then
		ls_message="Right|dw_1.Create() return "+f_string(li_RET)
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
	Else
		ls_message="Right|dw_1.Create() return "+f_string(li_RET) + "Error Text:"+error_create
	End	If
	wf_additem(ls_message)
End If

new_sql = 'SELECT dept_id, emp_id, city, emp_fname, mydatetime from employee where emp_id <= 300'
new_syntax = SQLCA.SyntaxFromSQL(new_sql, 'Style(Type = Group ) group(3)', error_syntaxfromSQL)
If Len(error_syntaxfromSQL) > 0 Then
	ls_message="Error|transaction.SyntaxFromSQL() return "+f_string(new_syntax) + "Error Text:"+error_syntaxfromSQL
	messagebox ('',error_syntaxfromSQL)
	wf_additem(ls_message)
Else
	ls_message="Right|transaction.SyntaxFromSQL() return "+f_string(new_syntax)
	wf_additem(ls_message)
	li_RET = dw_1.Create(new_syntax, error_create)
	If li_RET = 1 Then
		ls_message="Right|dw_1.Create() return "+f_string(li_RET)
		dw_1.SetTransObject(SQLCA)
		dw_1.Retrieve()
	Else
		ls_message="Right|dw_1.Create() return "+f_string(li_RET) + "Error Text:"+error_create
	End	If
	wf_additem(ls_message)
End If

//new_syntax = SQLCA.SyntaxFromSQL(new_sql, 'Style(Type=Tabular)', error_syntaxfromSQL)
//If Len(error_syntaxfromSQL) > 0 Then
//	ls_message="Error|transaction.SyntaxFromSQL() return "+f_string(new_syntax) + "Error Text:"+error_syntaxfromSQL
//	wf_additem(ls_message)
//Else
//	ls_message="Right|transaction.SyntaxFromSQL() return "+f_string(new_syntax)
//	wf_additem(ls_message)
//	li_RET = dw_1.Create(new_syntax, error_create)
//	If li_RET = 1 Then
//		ls_message="Right|dw_1.Create() return "+f_string(li_RET)
//		dw_1.SetTransObject(SQLCA)
//		dw_1.Retrieve()
//	Else
//		ls_message="Right|dw_1.Create() return "+f_string(li_RET) + "Error Text:"+error_create
//	End	If
//	wf_additem(ls_message)
//End If

new_syntax = " select " + new_syntax
li_RET = dw_1.Create(new_syntax, error_create)
If	li_RET = -1 Then
	ls_message="Right|dw_1.Create() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Create() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

SetNull ( new_syntax )
li_RET = dw_1.Create(new_syntax, error_create)
If	IsNull ( li_RET ) Then
	ls_message="Right|dw_1.Create() return "+f_string(li_RET)
Else
	ls_message="Error|dw_1.Create() return "+f_string(li_RET)
End	If
wf_additem(ls_message)

end subroutine

public subroutine wf_generalfunction (boolean ab_dwreadonly);integer li_ret
string ls_message
if ab_dwreadonly then
	dw_1.object.datawindow.readonly = 'yes'
else
	dw_1.object.datawindow.readonly = 'no'
end if

dw_1.dataobject = "d_nofocus"
dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_1.scrolltorow(3)
dw_1.scrollnextrow()
dw_1.scrollpriorrow()
dw_1.scrollnextpage()
dw_1.scrollpriorpage()

wf_run_genfun()
wf_run_genfun2()//add by liulihua Ìí¼ÓÁË²¿·Ö±¾ÀàÐÍÊý¾Ý´°¿ÚÖÐwf_run_genfunº¯ÊýÎ´Ìí¼ÓµÄfunction
//find
wf_find()
//rowid
wf_rowid()

li_ret = dw_1.reset()
if li_ret = 1 then
	ls_message="Right|dw_1.reset() return "+string(li_ret)
else
	ls_message="Error|dw_1.reset() return "+string(li_ret)
end if

//¿ÉÒÔstopµ«Ä¿Ç°²»Ö§³Ö
//if wf_additem(ls_message) then goto runend

//dw_1.object.datawindow.readonly = 'yes'
//wf_run_genfun()



end subroutine

on w_integration_case_freeform.create
this.cb_4=create cb_4
this.lb_2=create lb_2
this.sle_propparm=create sle_propparm
this.cb_set=create cb_set
this.lb_propparm=create lb_propparm
this.lb_prop=create lb_prop
this.cb_testbringtotop=create cb_testbringtotop
this.cbx_showright=create cbx_showright
this.cb_autorun=create cb_autorun
this.cb_7=create cb_7
this.st_split=create st_split
this.cbx_8=create cbx_8
this.cb_9=create cb_9
this.sle_position=create sle_position
this.cb_8=create cb_8
this.dw_output=create dw_output
this.cbx_right=create cbx_right
this.st_4=create st_4
this.st_error=create st_error
this.cbx_7=create cbx_7
this.cb_1=create cb_1
this.lb_testitems=create lb_testitems
this.cb_11=create cb_11
this.cbx_getobjectatpointer=create cbx_getobjectatpointer
this.cb_21=create cb_21
this.cb_rsize=create cb_rsize
this.st_2=create st_2
this.st_1=create st_1
this.cbx_6=create cbx_6
this.dw_select=create dw_select
this.cb_run=create cb_run
this.cb_5=create cb_5
this.cb_19=create cb_19
this.cb_17=create cb_17
this.cb_6=create cb_6
this.cbx_4=create cbx_4
this.cbx_3=create cbx_3
this.cbx_2=create cbx_2
this.cbx_1=create cbx_1
this.cb_15=create cb_15
this.cb_13=create cb_13
this.cb_10=create cb_10
this.cb_reset=create cb_reset
this.cb_3=create cb_3
this.lb_1=create lb_1
this.cb_2=create cb_2
this.dw_1=create dw_1
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_testitems=create gb_testitems
this.gb_4=create gb_4
this.dw_2=create dw_2
this.dw_3=create dw_3
this.cbx_5=create cbx_5
this.gb_5=create gb_5
this.gb_3=create gb_3
this.gb_6=create gb_6
this.Control[]={this.cb_4,&
this.lb_2,&
this.sle_propparm,&
this.cb_set,&
this.lb_propparm,&
this.lb_prop,&
this.cb_testbringtotop,&
this.cbx_showright,&
this.cb_autorun,&
this.cb_7,&
this.st_split,&
this.cbx_8,&
this.cb_9,&
this.sle_position,&
this.cb_8,&
this.dw_output,&
this.cbx_right,&
this.st_4,&
this.st_error,&
this.cbx_7,&
this.cb_1,&
this.lb_testitems,&
this.cb_11,&
this.cbx_getobjectatpointer,&
this.cb_21,&
this.cb_rsize,&
this.st_2,&
this.st_1,&
this.cbx_6,&
this.dw_select,&
this.cb_run,&
this.cb_5,&
this.cb_19,&
this.cb_17,&
this.cb_6,&
this.cbx_4,&
this.cbx_3,&
this.cbx_2,&
this.cbx_1,&
this.cb_15,&
this.cb_13,&
this.cb_10,&
this.cb_reset,&
this.cb_3,&
this.lb_1,&
this.cb_2,&
this.dw_1,&
this.gb_1,&
this.gb_2,&
this.gb_testitems,&
this.gb_4,&
this.dw_2,&
this.dw_3,&
this.cbx_5,&
this.gb_5,&
this.gb_3,&
this.gb_6}
end on

on w_integration_case_freeform.destroy
destroy(this.cb_4)
destroy(this.lb_2)
destroy(this.sle_propparm)
destroy(this.cb_set)
destroy(this.lb_propparm)
destroy(this.lb_prop)
destroy(this.cb_testbringtotop)
destroy(this.cbx_showright)
destroy(this.cb_autorun)
destroy(this.cb_7)
destroy(this.st_split)
destroy(this.cbx_8)
destroy(this.cb_9)
destroy(this.sle_position)
destroy(this.cb_8)
destroy(this.dw_output)
destroy(this.cbx_right)
destroy(this.st_4)
destroy(this.st_error)
destroy(this.cbx_7)
destroy(this.cb_1)
destroy(this.lb_testitems)
destroy(this.cb_11)
destroy(this.cbx_getobjectatpointer)
destroy(this.cb_21)
destroy(this.cb_rsize)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cbx_6)
destroy(this.dw_select)
destroy(this.cb_run)
destroy(this.cb_5)
destroy(this.cb_19)
destroy(this.cb_17)
destroy(this.cb_6)
destroy(this.cbx_4)
destroy(this.cbx_3)
destroy(this.cbx_2)
destroy(this.cbx_1)
destroy(this.cb_15)
destroy(this.cb_13)
destroy(this.cb_10)
destroy(this.cb_reset)
destroy(this.cb_3)
destroy(this.lb_1)
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_testitems)
destroy(this.gb_4)
destroy(this.dw_2)
destroy(this.dw_3)
destroy(this.cbx_5)
destroy(this.gb_5)
destroy(this.gb_3)
destroy(this.gb_6)
end on

event open;dw_1.settransobject(sqlca)
dw_1.retrieve()
dw_2.dataobject=dw_1.dataobject
dw_2.settransobject(sqlca)
dw_select.settransobject(sqlca)
dw_select.insertrow(0)

wf_add_pro()
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
		if i = 2 or i = 3 then 
			lu_val1 = FindWindowExA(lu_val,0, 0,"OK") 
			send(lu_val1,256,32,0)
			send(lu_val1,257,32,0)
		else 
			send(lu_val,16,0,0)
		end if
	end if
next




end event

type cb_4 from commandbutton within w_integration_case_freeform
integer x = 4649
integer y = 2284
integer width = 334
integer height = 84
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "reset"
end type

event clicked;lb_2.Reset( )
end event

type lb_2 from listbox within w_integration_case_freeform
integer x = 4645
integer y = 1580
integer width = 1079
integer height = 700
integer taborder = 50
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
borderstyle borderstyle = stylelowered!
end type

type sle_propparm from singlelineedit within w_integration_case_freeform
integer x = 4645
integer y = 1264
integer width = 1079
integer height = 116
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_set from commandbutton within w_integration_case_freeform
integer x = 4649
integer y = 1388
integer width = 334
integer height = 96
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "set"
end type

event clicked;string lb_data
string ls_name

string ls_data
string ls_result

ls_data = sle_propparm.text
if isnull(ls_data) then ls_data = ''
if lb_prop.SelectedIndex() < 0 then
	iFlag = 1
	messagebox('Warning','Please select testing property.')
	return
end if
if ls_data = '' then
	iFlag = 1
	messagebox('Warning','Please select testing data.')
	return
end if
iFlag = 0

If iflag=1 Then Return

Choose Case Mid(lb_prop.selecteditem(),6)
	Case 'Border'
		If	ls_Data = 'True' Then
			dw_1.border = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.Border )), 'Border' )
			
		ElseIf	ls_Data = 'False' Then
			dw_1.border = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.Border )), 'Border' )
			
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		
	Case  'BorderStyle'
		Choose Case ls_Data
				
			Case 'StyleLowered!'
				dw_1.borderStyle = StyleLowered!
				ls_result =	wf_Retoutput_Message('StyleLowered!',	f_String_othertype( 'BorderStyle', dw_1 ), 'BorderStyle')
			Case 'StyleRaised!'
				dw_1.borderStyle = StyleRaised!
				ls_result =	wf_Retoutput_Message('StyleRaised!',	f_String_othertype( 'BorderStyle', dw_1 ), 'BorderStyle')
			Case 'StyleBox!'
				dw_1.borderStyle = StyleBox!
				ls_result =	wf_Retoutput_Message('StyleBox!',	f_String_othertype( 'BorderStyle', dw_1 ), 'BorderStyle')
			Case 'StyleShadowBox!'
				dw_1.borderStyle = StyleShadowBox!
				ls_result =	wf_Retoutput_Message('StyleShadowBox!',	f_String_othertype( 'BorderStyle', dw_1 ), 'BorderStyle')
			Case Else
				MessageBox ('warning', 'the parameter is error!' )
		End	Choose
				
	Case  'BringToTop'
		If	ls_Data = 'True' Then
			dw_1.BringToTop = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.BringToTop )), 'BringToTop' )
		ElseIf	ls_Data = 'False' Then
			dw_1.BringToTop = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.BringToTop )), 'BringToTop' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		
	case 'ControlMenu'		
		If	ls_Data = 'True' Then
			dw_1.ControlMenu = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.ControlMenu )), 'ControlMenu' )
		ElseIf	ls_Data = 'False' Then
			dw_1.ControlMenu = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.ControlMenu )), 'ControlMenu' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		
	Case 'TitleBar'
		If	ls_Data = 'True' Then
			dw_1.TitleBar = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.TitleBar )), 'TitleBar' )
		ElseIf	ls_Data = 'False' Then
			dw_1.TitleBar = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.TitleBar )), 'TitleBar' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	case 'Title'
		dw_1.Title = ls_Data
		ls_result =	wf_Retoutput_Message(ls_Data,	dw_1.Title, 'Title')
		
	Case 'Tag'
		dw_1.Tag = ls_Data
		ls_result =	wf_Retoutput_Message(ls_Data,	dw_1.Tag, 'Tag')
		
	Case 'DataObject'
		dw_1.DataObject = ls_Data
		ls_result =	wf_Retoutput_Message(ls_Data,	dw_1.DataObject, 'DataObject')
		
	Case 'DragAuto'
		If	ls_Data = 'True' Then
			dw_1.DragAuto = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.DragAuto )), 'DragAuto' )
		ElseIf	ls_Data = 'False' Then
			dw_1.DragAuto = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.DragAuto )), 'DragAuto' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		
	Case 'DragIcon'
		dw_1.DragIcon = ls_Data
		ls_result =	wf_Retoutput_Message(ls_Data,	dw_1.DragIcon, 'DragIcon')
		
	Case 'Enabled'
		If	ls_Data = 'True' Then
			dw_1.Enabled = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.Enabled )), 'Enabled' )
		ElseIf	ls_Data = 'False' Then
			dw_1.Enabled = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.Enabled )), 'Enabled'  )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	Case 'Height'
		If	Not Isnumber(ls_Data) Then
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		dw_1.Height = Long(ls_Data)
		ls_result =	wf_Retoutput_Message(ls_Data,	f_String(dw_1.Height), 'Height')
	Case 'Width'
		If	Not Isnumber(ls_Data) Then
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		dw_1.Width = Long(ls_Data)
		ls_result =	wf_Retoutput_Message(ls_Data,	f_String(dw_1.Width), 'Width')
		
	Case 'HScrollBar'
		If	ls_Data = 'True' Then
			dw_1.HScrollBar = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.HScrollBar )), 'HScrollBar' )
		ElseIf	ls_Data = 'False' Then
			dw_1.HScrollBar = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.HScrollBar )), 'HScrollBar' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	Case 'VScrollBar'
		If	ls_Data = 'True' Then
			dw_1.VScrollBar = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.VScrollBar )), 'VScrollBar' )
		ElseIf	ls_Data = 'False' Then
			dw_1.VScrollBar = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.VScrollBar )), 'VScrollBar' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		
	Case 'Icon'
		dw_1.Icon = ls_Data
		ls_result =	wf_Retoutput_Message(ls_Data,	dw_1.Icon, 'Icon')
		
	Case 'LiveScroll'
		If	ls_Data = 'True' Then
			dw_1.LiveScroll = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.LiveScroll )), 'LiveScroll' )
		ElseIf	ls_Data = 'False' Then
			dw_1.LiveScroll = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.LiveScroll )), 'LiveScroll'  )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		
	Case 'MinBox'
		If	ls_Data = 'True' Then
			dw_1.MinBox = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.MinBox )), 'MinBox' )
		ElseIf	ls_Data = 'False' Then
			dw_1.MinBox = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.MinBox )), 'MinBox' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	Case 'MaxBox'
		If	ls_Data = 'True' Then
			dw_1.MaxBox = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.MaxBox )), 'MaxBox' )
		ElseIf	ls_Data = 'False' Then
			dw_1.MaxBox = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.MaxBox )), 'MaxBox' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	Case 'Resizable'
		If	ls_Data = 'True' Then
			dw_1.Resizable = True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.Resizable )), 'Resizable' )
		ElseIf	ls_Data = 'False' Then
			dw_1.Resizable = False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.Resizable )), 'Resizable' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	Case 'RightToLeft'
		If	ls_Data = 'True' Then
			dw_1.RightToLeft	= True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.RightToLeft )), 'RightToLeft' )
		ElseIf	ls_Data = 'False' Then
			dw_1.RightToLeft	= False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.RightToLeft )), 'RightToLeft' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	Case 'TabOrder'
		If	Not Isnumber(ls_Data) Then
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		dw_1.TabOrder = Long(ls_Data)
		ls_result =	wf_Retoutput_Message(ls_Data,	f_String(dw_1.TabOrder), 'TabOrder')
	Case 'Visible'
		If	ls_Data = 'True' Then
			dw_1.Visible	= True
			ls_result =	wf_Retoutput_Message('true',	Lower ( f_String( dw_1.Visible )), 'Visible' )
		ElseIf	ls_Data = 'False' Then
			dw_1.Visible	= False
			ls_result =	wf_Retoutput_Message('false',	Lower ( f_String( dw_1.Visible )), 'Visible' )
		Else
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
	Case 'X'
		If	Not Isnumber(ls_Data) Then
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		dw_1.X = Long(ls_Data)
		ls_result =	wf_Retoutput_Message(ls_Data,	f_String(dw_1.X), 'X')
	Case 'Y'
		If	Not Isnumber(ls_Data) Then
			MessageBox ('warning', 'the parameter is error!' )
			Return
		End	If
		dw_1.Y = Long(ls_Data)
		ls_result =	wf_Retoutput_Message(ls_Data,	f_String(dw_1.Y), 'Y')
End	Choose
wf_additem(ls_result )
end event

type lb_propparm from listbox within w_integration_case_freeform
integer x = 4645
integer y = 808
integer width = 1079
integer height = 452
integer taborder = 30
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
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;sle_propparm.text = lb_propparm.selecteditem()
end event

type lb_prop from listbox within w_integration_case_freeform
integer x = 4645
integer y = 72
integer width = 1079
integer height = 732
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;lb_propparm.Reset()
Choose Case Mid(lb_prop.selecteditem(),6)
		
	Case 'BorderStyle'
		lb_propparm.additem('StyleBox!')
		lb_propparm.additem('StyleLowered!')
		lb_propparm.additem('StyleRaised!')
		lb_propparm.additem('StyleShadowBox!')
	Case 'Border', 'DragAuto', 'Enabled','MinBox', 'MaxBox', 'Resizable', 'RightToLeft'
		wf_random('boolean',lb_propparm)
	Case 'BringToTop'
		lb_propparm.additem('True')
	Case 'ControlMenu', 'TitleBar', 'HScrollBar', 'LiveScroll', 'Visible', 'VScrollBar'
		wf_random('boolean',lb_propparm)
	Case 'DataObject'
		lb_propparm.additem('d_integration_case_freeform')
	Case 'Title','Tag'
		lb_propparm.additem('StyleBox!')
		lb_propparm.additem('Stysdf3524')
		lb_propparm.additem('3||1&sdfa')
		lb_propparm.additem('True                        ')
	Case 'DragIcon', 'Icon'
		lb_propparm.additem('Question!')
		lb_propparm.additem('error!')		
		lb_propparm.additem('.\pbex.ico')
	Case 'Height'
		lb_propparm.additem('-32768')
		lb_propparm.additem('0')
		lb_propparm.additem('32768')
		lb_propparm.additem('32767')
		lb_propparm.additem('1864')
	Case 'Width'
		lb_propparm.additem('-32768')
		lb_propparm.additem('0')
		lb_propparm.additem('32768')
		lb_propparm.additem('32767')
		lb_propparm.additem('2560')
	Case 'Object'
		lb_propparm.additem('Õâ¸öÊôÐÔÐèÒªµ¥¶ÀÐ´Ò»¸ö°¸Àý£¬ËûÉæ¼°µÄÄÚÈÝÌ«¶à')
	Case 'TabOrder'
		lb_propparm.additem('-10')
		lb_propparm.additem('0')
		lb_propparm.additem('30')
		lb_propparm.additem('1')
	Case 'X'
		lb_propparm.additem('-32768')
		lb_propparm.additem('0')
		lb_propparm.additem('32768')
		lb_propparm.additem('32767')
		lb_propparm.additem('0')
	Case 'Y'
		lb_propparm.additem('-32768')
		lb_propparm.additem('0')
		lb_propparm.additem('32768')
		lb_propparm.additem('32767')
		lb_propparm.additem('512')
	Case Else
		
End	Choose
		
end event

event doubleclicked;cb_set.event clicked()
end event

type cb_testbringtotop from commandbutton within w_integration_case_freeform
boolean visible = false
integer x = 951
integer y = 916
integer width = 457
integer height = 128
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "none"
end type

type cbx_showright from checkbox within w_integration_case_freeform
boolean visible = false
integer x = 4096
integer y = 140
integer width = 402
integer height = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "showright"
boolean checked = true
end type

type cb_autorun from commandbutton within w_integration_case_freeform
integer x = 1061
integer y = 200
integer width = 233
integer height = 84
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "AutoRun"
end type

event clicked;int li_itemcount
//cbx_showright.checked = false
ii_number = 1
lb_testitems.ExtendedSelect = false
lb_testitems.MultiSelect = false
cb_reset.triggerevent(clicked!)
For li_itemCount = 1 to lb_testitems.TotalItems()
	lb_testitems.selectitem(li_itemcount)
	cb_run.Triggerevent(clicked!)
Next
lb_testitems.ExtendedSelect = true
lb_testitems.MultiSelect = true
//cbx_showright.checked = true
end event

type cb_7 from commandbutton within w_integration_case_freeform
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

event clicked;wf_FilterAndSort(true)
end event

type st_split from statictext within w_integration_case_freeform
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

type cbx_8 from checkbox within w_integration_case_freeform
integer x = 1061
integer y = 64
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

type cb_9 from commandbutton within w_integration_case_freeform
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

type sle_position from singlelineedit within w_integration_case_freeform
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

type cb_8 from commandbutton within w_integration_case_freeform
integer x = 4023
integer y = 328
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

event clicked;timer(1)
f_outputfile(lb_1,dw_output)
timer(0)
end event

type dw_output from datawindow within w_integration_case_freeform
boolean visible = false
integer x = 3145
integer y = 1888
integer width = 686
integer height = 400
integer taborder = 50
string title = "none"
string dataobject = "d_dwtofile"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

type cbx_right from checkbox within w_integration_case_freeform
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

type st_4 from statictext within w_integration_case_freeform
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

type st_error from statictext within w_integration_case_freeform
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

type cbx_7 from checkbox within w_integration_case_freeform
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

event clicked;if this.checked =true then 
	cb_21.visible	=true
	cb_11.visible	=true
	cb_1.visible	=true
	cb_19.visible	=true
	cb_3.visible	=true
	cb_17.visible	=true
	cb_7.visible = true
else	
	cb_21.visible	=false
	cb_11.visible	=false
	cb_1.visible	=false
	cb_19.visible	=false
	cb_3.visible	=false
	cb_17.visible	=false
	cb_7.visible = false
end if
end event

type cb_1 from commandbutton within w_integration_case_freeform
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

event clicked;wf_findrequired(false,1)
end event

type lb_testitems from listbox within w_integration_case_freeform
event ue_buttondown pbm_lbuttondown
integer x = 18
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

type cb_11 from commandbutton within w_integration_case_freeform
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

type cbx_getobjectatpointer from checkbox within w_integration_case_freeform
integer x = 2304
integer y = 352
integer width = 608
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "GetObjectAtPointer"
end type

type cb_21 from commandbutton within w_integration_case_freeform
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

event clicked;

lb_1.reset()
wf_rowsmoveandcopy(1)


end event

type cb_rsize from commandbutton within w_integration_case_freeform
integer x = 4023
integer y = 232
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

type st_2 from statictext within w_integration_case_freeform
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
boolean underline = true
long textcolor = 33554432
long backcolor = 67108864
string text = "Result:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_integration_case_freeform
integer y = 448
integer width = 512
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
boolean underline = true
long textcolor = 33554432
long backcolor = 67108864
string text = "Datawindow Display:"
boolean focusrectangle = false
end type

type cbx_6 from checkbox within w_integration_case_freeform
integer x = 2816
integer y = 128
integer width = 407
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Enabled"
boolean checked = true
end type

event clicked;if this.checked then
	dw_1.enabled =  true
else
	dw_1.enabled =  false
end if
end event

type dw_select from datawindow within w_integration_case_freeform
integer x = 1426
integer y = 96
integer width = 695
integer height = 128
integer taborder = 60
string title = "none"
string dataobject = "d_datawindow_select"
boolean border = false
boolean livescroll = true
end type

type cb_run from commandbutton within w_integration_case_freeform
integer x = 1065
integer y = 312
integer width = 229
integer height = 80
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

type cb_5 from commandbutton within w_integration_case_freeform
integer x = 1829
integer y = 288
integer width = 274
integer height = 88
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Retrieve"
end type

event clicked;dw_1.retrieve()
end event

type cb_19 from commandbutton within w_integration_case_freeform
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

event clicked;delete from status where flag<>'d';//detail²âÊÔ
wf_checkstatus(1)
//wf_checkstatus(2)
end event

type cb_17 from commandbutton within w_integration_case_freeform
boolean visible = false
integer x = 2377
integer y = 1996
integer width = 366
integer height = 88
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "SaveEvent"
end type

event clicked;integer li_count
dw_1.dataobject="d_child"
dw_1.settransobject(sqlca)
is_event = ""
dw_1.Retrieve()
wf_savetodb("Retrieve",",hasdata")

dw_1.Resize(dw_1.width - 10,dw_1.height - 10)
wf_savetodb("Resize",",hasdata")

dw_1.reset()
dw_1.InsertRow(-1)
wf_savetodb("InsertRow","-1,nodata")
dw_1.update()
wf_savetodb("update","1,nodata")

dw_1.reset()
dw_1.InsertRow(0)
wf_savetodb("InsertRow","0,nodata")

dw_1.reset()
dw_1.InsertRow(10)
wf_savetodb("InsertRow","10,nodata")

dw_1.reset()
dw_1.InsertRow(1000)
wf_savetodb("InsertRow","1000,nodata")

dw_1.reset()
dw_1.ScrollNextRow()
wf_savetodb("scrollnextrow",",nodata")

dw_1.ScrollPriorRow()
wf_savetodb("ScrollPriorRow",",nodata")

dw_1.ScrollNextPage()
wf_savetodb("ScrollNextPage",",nodata")

dw_1.ScrollPriorPage()
wf_savetodb("ScrollPriorPage",",nodata")


dw_1.ScrollToRow(10)
wf_savetodb("ScrollToRow","10,nodata")

dw_1.ScrollToRow(-1)
wf_savetodb("ScrollToRow","-1,nodata")

dw_1.ScrollToRow(0)
wf_savetodb("ScrollToRow","0,nodata")

dw_1.ScrollToRow(1000)
wf_savetodb("ScrollToRow","1000,nodata")

dw_1.SetRow(-1)
wf_savetodb("SetRow","-1,nodata")
dw_1.SetRow(1)
wf_savetodb("SetRow","1,nodata")

dw_1.SetRow(100)
wf_savetodb("SetRow","100,nodata")


dw_1.SetSort('dept_id A')
dw_1.Sort()
wf_savetodb("Sort",",nodata")

dw_1.SetFilter("#1 = 100")
dw_1.Filter()
wf_savetodb("Filter",",nodata")

dw_1.RowsDiscard(1,2,delete!)
wf_savetodb("RowsDiscard","delete!,nodata")
dw_1.RowsDiscard(1,2,filter!)
wf_savetodb("RowsDiscard","filter!,nodata")
dw_1.RowsDiscard(1,2,primary!)
wf_savetodb("RowsDiscard","primary!,nodata")

dw_1.Reset()
wf_savetodb("Reset",",nodata")

////have data
////dw_1.retrieve()
//dw_1.dataobject="d_child"
//dw_1.settransobject(sqlca)
//dw_1.retrieve()
//is_event =""
//dw_1.update()
//wf_savetodb("update","1,hasdata")
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
//wf_savetodb("update","2,hasdata")

dw_1.InsertRow(-1)
wf_savetodb("InsertRow","-1,hasdata")

dw_1.InsertRow(0)
wf_savetodb("InsertRow","0,hasdata")

dw_1.InsertRow(10)
wf_savetodb("InsertRow","10,hasdata")

dw_1.InsertRow(1000)
wf_savetodb("InsertRow","1000,hasdata")

dw_1.ScrollNextRow()
wf_savetodb("scrollnextrow",",hasdata")

dw_1.ScrollPriorRow()
wf_savetodb("ScrollPriorRow",",hasdata")

dw_1.ScrollNextPage()
wf_savetodb("ScrollNextPage",",hasdata")

dw_1.ScrollPriorPage()
wf_savetodb("ScrollPriorPage",",hasdata")


dw_1.ScrollToRow(10)
wf_savetodb("ScrollToRow","10,hasdata")

dw_1.ScrollToRow(-1)
wf_savetodb("ScrollToRow","-1,hasdata")

dw_1.ScrollToRow(0)
wf_savetodb("ScrollToRow","0,hasdata")

dw_1.ScrollToRow(1000)
wf_savetodb("ScrollToRow","1000,hasdata")

dw_1.DeleteRow(1)
wf_savetodb("DeleteRow","1,hasdata")
dw_1.DeleteRow(dw_1.getrow())
wf_savetodb("DeleteRow","currentrow,hasdata")
dw_1.DeleteRow(dw_1.rowcount())
wf_savetodb("DeleteRow","rowcount,hasdata")


dw_1.SetItem(1,5,'test')
dw_1.AcceptText()
wf_savetodb("AcceptText","right,hasdata")

dw_1.SetItem(1,1,"abd")
dw_1.AcceptText()
wf_savetodb("AcceptText","error,hasdata")


dw_1.SetRow(-1)
wf_savetodb("SetRow","-1,hasdata")
dw_1.SetRow(1)
wf_savetodb("SetRow","1,hasdata")

dw_1.SetRow(100)
wf_savetodb("SetRow","100,hasdata")


dw_1.SetSort('#1 A')
dw_1.Sort()
wf_savetodb("Sort",",hasdata")

dw_1.SetFilter("#1 = 100")
dw_1.Filter()
wf_savetodb("Filter","100,hasdata")

dw_1.SetFilter("#1 = 999")
dw_1.Filter()
wf_savetodb("Filter","999,hasdata")

dw_1.RowsDiscard(1,2,delete!)
wf_savetodb("RowsDiscard","delete!")
dw_1.RowsDiscard(1,2,filter!)
wf_savetodb("RowsDiscard","filter!")
dw_1.RowsDiscard(1,2,primary!)
wf_savetodb("RowsDiscard","primary!")

dw_1.Reset()
wf_savetodb("Reset",",hasdata")

//rowscopy 


end event

type cb_6 from commandbutton within w_integration_case_freeform
integer x = 3109
integer y = 320
integer width = 128
integer height = 88
integer taborder = 50
integer textsize = 16
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "System"
string text = "..."
end type

event clicked;open(w_eventreturn)
end event

type cbx_4 from checkbox within w_integration_case_freeform
integer x = 2304
integer y = 288
integer width = 818
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

type cbx_3 from checkbox within w_integration_case_freeform
integer x = 2304
integer y = 224
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

type cbx_2 from checkbox within w_integration_case_freeform
integer x = 2304
integer y = 128
integer width = 466
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "RowSelect"
end type

type cbx_1 from checkbox within w_integration_case_freeform
integer x = 2304
integer y = 64
integer width = 434
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Retrieve Alert"
end type

type cb_15 from commandbutton within w_integration_case_freeform
integer x = 1426
integer y = 288
integer width = 274
integer height = 88
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Change"
end type

event clicked;dw_1.dataobject = dw_select.object.name[dw_select.getrow()]
dw_1.settransobject(sqlca)

end event

type cb_13 from commandbutton within w_integration_case_freeform
integer x = 4279
integer y = 232
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

type cb_10 from commandbutton within w_integration_case_freeform
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
string text = "Show dw_2"
end type

event clicked;if this.text="Hide dw_2" then
	dw_2.hide()
	dw_1.show()
	this.text="Show dw_2"
else
	dw_2.show()
	dw_1.hide()
   this.text="Hide dw_2"
end if
end event

type cb_reset from commandbutton within w_integration_case_freeform
integer x = 4279
integer y = 328
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
end event

type cb_3 from commandbutton within w_integration_case_freeform
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

type lb_1 from listbox within w_integration_case_freeform
integer x = 2583
integer y = 512
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

type cb_2 from commandbutton within w_integration_case_freeform
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

type dw_1 from datawindow within w_integration_case_freeform
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
string dataobject = "d_integration_case_freeform"
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

if cbx_GetObjectAtPointer.checked then
	
	wf_additem("Right|GetObjectAtPointer() Return:"+this.getObjectAtPointer())
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
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type)
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
	lb_1.additem(ls_event+" currentrow="+string(currentrow))
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
	lb_1.additem(ls_event+" currentrow="+string(currentrow)+" newrow="+string(newrow))
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

type gb_1 from groupbox within w_integration_case_freeform
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

type gb_2 from groupbox within w_integration_case_freeform
integer x = 1353
integer width = 841
integer height = 448
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "ChangeDataObject"
end type

type gb_testitems from groupbox within w_integration_case_freeform
integer width = 1317
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

type gb_4 from groupbox within w_integration_case_freeform
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

type dw_2 from datawindow within w_integration_case_freeform
boolean visible = false
integer y = 512
integer width = 2560
integer height = 1864
integer taborder = 10
string title = "none"
string dataobject = "d_integration_case_freeform"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_3 from datawindow within w_integration_case_freeform
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

type cbx_5 from checkbox within w_integration_case_freeform
integer x = 2816
integer y = 64
integer width = 407
integer height = 68
boolean bringtotop = true
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "DwReadOnly"
end type

event clicked;if this.checked then
	dw_1.object.datawindow.readonly = 'yes'
else
	dw_1.object.datawindow.readonly = 'no'
end if
end event

type gb_5 from groupbox within w_integration_case_freeform
integer x = 2231
integer width = 1061
integer height = 448
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Setup"
end type

type gb_3 from groupbox within w_integration_case_freeform
integer x = 4617
integer width = 1129
integer height = 1504
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "darawindow properties set"
end type

type gb_6 from groupbox within w_integration_case_freeform
integer x = 4617
integer y = 1508
integer width = 1129
integer height = 872
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Trigger Event list"
end type

