$PBExportHeader$w_dw_nvo.srw
forward
global type w_dw_nvo from window
end type
type cb_8 from commandbutton within w_dw_nvo
end type
type cbx_2 from checkbox within w_dw_nvo
end type
type dw_output from datawindow within w_dw_nvo
end type
type cbx_1 from checkbox within w_dw_nvo
end type
type cbx_right from checkbox within w_dw_nvo
end type
type cb_run from commandbutton within w_dw_nvo
end type
type lb_testitems from listbox within w_dw_nvo
end type
type st_4 from statictext within w_dw_nvo
end type
type st_error from statictext within w_dw_nvo
end type
type cb_11 from commandbutton within w_dw_nvo
end type
type cb_13 from commandbutton within w_dw_nvo
end type
type cb_rsize from commandbutton within w_dw_nvo
end type
type dw_5 from appeondatawindow within w_dw_nvo
end type
type lb_1 from listbox within w_dw_nvo
end type
type dw_4 from appeondatawindow within w_dw_nvo
end type
type gb_4 from groupbox within w_dw_nvo
end type
type gb_3 from groupbox within w_dw_nvo
end type
type gb_1 from groupbox within w_dw_nvo
end type
type dw_3 from appeondatawindow within w_dw_nvo
end type
end forward

global type w_dw_nvo from window
integer width = 4338
integer height = 2536
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_8 cb_8
cbx_2 cbx_2
dw_output dw_output
cbx_1 cbx_1
cbx_right cbx_right
cb_run cb_run
lb_testitems lb_testitems
st_4 st_4
st_error st_error
cb_11 cb_11
cb_13 cb_13
cb_rsize cb_rsize
dw_5 dw_5
lb_1 lb_1
dw_4 dw_4
gb_4 gb_4
gb_3 gb_3
gb_1 gb_1
dw_3 dw_3
end type
global w_dw_nvo w_dw_nvo

type variables
int il_error_no
boolean ib_save	=	false
boolean ib_pb		=	false
//
appeondatawindow idw_source,idw_target1,idw_target2
n_cst_appeon  i_proxy


end variables

forward prototypes
public subroutine wf_additem (string as_message)
public subroutine wf_output (any aa_ret, string as_text)
public subroutine wf_retrieve (integer ai_flag)
public subroutine wf_returnvalue ()
public function string wf_getfullstate (integer as_flag)
public function string wf_setfullstate (integer as_flag)
public subroutine wf_insertdelete ()
public subroutine wf_check (string as_name, string as_data, string as_status, string as_return, string as_memo, string as_flag)
public function string wf_getallid (string as_dwname)
public subroutine wf_sortfilter ()
public subroutine wf_returnvalue_string ()
public subroutine wf_returnvalue_blob ()
public subroutine wf_sortfilter_blob ()
public subroutine wf_sortfilter_string ()
public subroutine wf_insertdelete_blob ()
public subroutine wf_insertdelete_string ()
public subroutine wf_rowsmovecopy ()
public subroutine wf_rowsmovecopy_blob ()
public subroutine wf_rowsmovecopy_string ()
public subroutine wf_itemstatus_blob ()
public subroutine wf_itemstatus_string ()
public subroutine wf_itemstatus ()
public subroutine wf_update_blob ()
public subroutine wf_update_string ()
public subroutine wf_update ()
end prototypes

public subroutine wf_additem (string as_message);long ll_index
if pos(lower(as_message),"error") > 0  then
	il_error_no++
	
	st_error.text=	string(il_error_no)
	
	ll_index=lb_1.additem(as_message)
	lb_1.SetState ( ll_index, true)
else
	if cbx_right.checked then 	ll_index=lb_1.additem(as_message)

end if
end subroutine

public subroutine wf_output (any aa_ret, string as_text);if aa_ret>=0 then
	as_text="Right"+as_text
else
	as_text="Error"+as_text
end if
wf_additem(as_text+f_string(aa_ret))
end subroutine

public subroutine wf_retrieve (integer ai_flag);int li_ret

blob  lb_data
//string ls_data

//i_proxy.retrieve·µ»ØÖµ
li_ret=i_proxy.of_RetrieveData(lb_data)
wf_check("i_proxy.of_GetFullState(R)","","",f_string(li_ret),"","Return")

//¿Í»§¶Ësetup
idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype'

idw_source.settransobject(sqlca)
//idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

//setfullstate·µ»ØÖµ
li_ret=idw_source.SetFullState(lb_data)
wf_check("idw_source.SetFullState(R)","","",f_string(li_ret),"","Return")
li_ret=idw_target1.SetFullState(lb_data)
wf_check("idw_target1.SetFullState(R)","","",f_string(li_ret),"","Return")
li_ret=idw_target2.SetFullState(lb_data)
wf_check("idw_target2.SetFullState(R)","","",f_string(li_ret),"","Return")

//getchange·µ»ØÖµ
li_ret=i_proxy.of_GetChanges(lb_data)

wf_check("i_proxy.of_GetChanges(R)","","",f_string(li_ret),"","Return")

li_ret=idw_source.SetChanges(lb_data)
wf_check("idw_source.SetChanges(R)","","",f_string(li_ret),"","Return")
li_ret=idw_target1.SetChanges(lb_data)
wf_check("idw_target1.SetChanges(R)","","",f_string(li_ret),"","Return")
li_ret=idw_target2.SetChanges(lb_data)
wf_check("idw_target2.SetChanges(R)","","",f_string(li_ret),"","Return")





//datawindow idw_source,idw_target1,idw_target2
//if ab_save then
//	idw_source=dw_0
//	idw_target1=dw_1
//	idw_target2=dw_2
//	
//	
//end if

//choose case ai_flag
//	case 0
//		idw_source.dataobject='d_all_datatype_grid'
//		idw_target1.dataobject='d_all_datatype_grid'
//		idw_target2.dataobject='d_all_datatype_grid'
//		
//		idw_source.settransobject(sqlca)
//		
//		idw_source.retrieve()
//		
//	case 1
//		idw_source.dataobject='d_all_datatype_grid'
//		idw_target1.dataobject='d_all_datatype_grid'
//		idw_target2.dataobject='d_all_datatype_grid'
//		
//		idw_source.settransobject(sqlca)
//		idw_target1.settransobject(sqlca)
//		idw_target2.settransobject(sqlca)
//		
//		idw_source.retrieve()
//		
//	case 2 //²»Í¬dataobject
//		idw_source.dataobject='d_all_datatype_grid'
//		idw_target1.dataobject='d_all_datatype'
//		idw_target2.dataobject='d_all_datatype'
//		
//		idw_source.settransobject(sqlca)
//		idw_target1.settransobject(sqlca)
//		
//		idw_source.retrieve()
//	case 3
//		idw_source.dataobject='d_all_datatype_grid'
//		idw_target1.dataobject='d_all_datatype_grid'
//		idw_target2.dataobject='d_all_datatype_grid'
//		
//		idw_source.settransobject(sqlca)
//		idw_target1.settransobject(sqlca)
//		idw_target2.settransobject(sqlca)
//
//	case 4
//		idw_source.dataobject=''
//		idw_target1.dataobject=''
//		idw_target2.dataobject=''
//		
//		idw_source.settransobject(sqlca)
//		idw_target1.settransobject(sqlca)
//		idw_target2.settransobject(sqlca)
//
//	end choose


end subroutine

public subroutine wf_returnvalue ();if ib_pb then
	
	wf_returnvalue_blob()
else
	
	wf_returnvalue_string()
end if
//int li_ret
//
//blob  lb_data
//string ls_data
//
//if ib_save then
//
//		//li_ret=i_proxy.of_GetFullState(lb_data)
//		li_ret=i_proxy.of_RetrieveData(lb_data)
//		wf_check("i_proxy.of_GetFullState(R)","","",f_string(li_ret),"","Return")
//else
//
//		//li_ret=i_proxy.of_GetFullState(ls_data)
//		li_ret=i_proxy.of_RetrieveData(ls_data)
//		wf_check("i_proxy.of_GetFullState(R)","","",f_string(li_ret),"","Return")
//
//end if
//
////
//idw_source.dataobject='d_all_datatype_grid'
//idw_target1.dataobject='d_all_datatype_grid'
//idw_target2.dataobject='d_all_datatype'
//
//idw_source.settransobject(sqlca)
////idw_target1.settransobject(sqlca)
//idw_target2.settransobject(sqlca)
//
//if ib_save then
//		li_ret=idw_source.SetFullState(lb_data)
//		wf_check("idw_source.SetFullState(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target1.SetFullState(lb_data)
//		wf_check("idw_target1.SetFullState(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target2.SetFullState(lb_data)
//		wf_check("idw_target2.SetFullState(R)","","",f_string(li_ret),"","Return")
//
//else
//		li_ret=idw_source.SetFullState(ls_data)
//		wf_check("idw_source.SetFullState(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target1.SetFullState(ls_data)
//		wf_check("idw_target1.SetFullState(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target2.SetFullState(ls_data)
//		wf_check("idw_target2.SetFullState(R)","","",f_string(li_ret),"","Return")
//end if
//wf_additem("")
//if ib_save then
//
//		li_ret=i_proxy.of_GetChanges(lb_data)
//	
//		wf_check("i_proxy.of_GetChanges(R)","","",f_string(li_ret),"","Return")
//else
//
//		li_ret=i_proxy.of_GetChanges(ls_data)
//		wf_check("i_proxy.of_GetChanges(R)","","",f_string(li_ret),"","Return")
//
//end if
//
//if ib_save then
//		li_ret=idw_source.SetChanges(lb_data)
//		wf_check("idw_source.SetChanges(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target1.SetChanges(lb_data)
//		wf_check("idw_target1.SetChanges(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target2.SetChanges(lb_data)
//		wf_check("idw_target2.SetChanges(R)","","",f_string(li_ret),"","Return")
//
//else
//		li_ret=idw_source.SetChanges(ls_data)
//		wf_check("idw_source.SetChanges(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target1.SetChanges(ls_data)
//		wf_check("idw_target1.SetChanges(R)","","",f_string(li_ret),"","Return")
//		li_ret=idw_target2.SetChanges(ls_data)
//		wf_check("idw_target2.SetChanges(R)","","",f_string(li_ret),"","Return")
//end if
//wf_additem("")
//
//
//
end subroutine

public function string wf_getfullstate (integer as_flag);blob	lb_data
string ls_data

int li_ret

choose case as_flag
	case 1
		if cbx_1.checked then
			li_ret=idw_source.getFullState(ls_data)
		else
			li_ret=idw_source.getFullState(lb_data)
		end if
	case 2
		
		if cbx_1.checked then
			li_ret=idw_target1.getFullState(ls_data)
		else
			li_ret=idw_target1.getFullState(lb_data)
		end if
	case 3
		
		if cbx_1.checked then
			li_ret=idw_target2.getFullState(ls_data)
		else
			li_ret=idw_target2.getFullState(lb_data)
		end if
end choose

return f_string(li_ret)
//string ls_data
//
//int li_ret
//string ls_message
//if as_flag='1' or as_flag='all' then
//	li_ret=idw_source.getFullState(ls_data)
//	if li_ret>=0 then 
//		ls_message="Right"
//	else
//		ls_message="Error"
//	end if
//	wf_additem(ls_message+"|idw_source.GetFullState(ls_data) Return"+f_string(li_ret))	
//end if
//if as_flag='2'	or as_flag='all' then
//	li_ret=idw_target1.setFullState(ls_data)
//	if li_ret>=1 then 
//		ls_message="Right"
//	else
//		ls_message="Error"
//	end if
//	wf_additem(ls_message+"|idw_target1.SetFullState(ls_data) Return"+f_string(li_ret))	
//end if
//
//if as_flag='3' or as_flag='all' then
//	li_ret=idw_target2.setFullState(ls_data)
//	if li_ret>=1 then 
//		ls_message="Right"
//	else
//		ls_message="Error"
//	end if
//	wf_additem(ls_message+"|idw_target2.SetFullState(ls_data) Return"+f_string(li_ret))	
//end if
//
//
end function

public function string wf_setfullstate (integer as_flag);blob	lb_data
string ls_data

int li_ret
choose case as_flag
	case 1
		if cbx_1.checked then
			li_ret=idw_source.setFullState(ls_data)
		else
			li_ret=idw_source.setFullState(lb_data)
		end if
	case 2
		
		if cbx_1.checked then
			li_ret=idw_target1.setFullState(ls_data)
		else
			li_ret=idw_target1.setFullState(lb_data)
		end if
	case 3
		
		if cbx_1.checked then
			li_ret=idw_target2.setFullState(ls_data)
		else
			li_ret=idw_target2.setFullState(lb_data)
		end if
end choose

return f_string(li_ret)
end function

public subroutine wf_insertdelete ();if ib_pb then
	wf_insertdelete_blob()
	
else
	
	wf_insertdelete_string()
end if
//int li_ret
//
//blob  lb_data
//string ls_data,ls_id
//
//if ib_save then
//
//	//li_ret=i_proxy.of_GetFullState(lb_data)
//   li_ret=i_proxy.of_RetrieveData(lb_data)
//else
//
//	//li_ret=i_proxy.of_GetFullState(ls_data)
//	li_ret=i_proxy.of_RetrieveData(ls_data)
//
//end if
//
//idw_source.dataobject='d_all_datatype_grid'
//idw_target1.dataobject='d_all_datatype_grid'
//idw_target2.dataobject='d_all_datatype_grid'
//
//idw_source.settransobject(sqlca)
//idw_target1.settransobject(sqlca)
//idw_target2.settransobject(sqlca)
//
//if ib_save then
//	li_ret=idw_source.SetFullState(lb_data)
//
////	li_ret=idw_target1.SetFullState(lb_data)
////
////	li_ret=idw_target2.SetFullState(lb_data)
//
//
//else
//	li_ret=idw_source.SetFullState(ls_data)
//
////	li_ret=idw_target1.SetFullState(ls_data)
////
////	li_ret=idw_target2.SetFullState(ls_data)
//
//end if
//
////insert and delete
//
//if ib_save then
//	idw_source.deleterow(1)
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(lb_data)
//	li_ret=i_proxy.of_SetChanges(lb_data)
//	li_ret=idw_target1.SetChanges(lb_data)
//
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChange() deleterow(1)","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(lb_data)
//	li_ret=idw_target2.SetFullState(lb_data)
//	wf_check("SetFullState() deleterow(1)","","",ls_id," RowID ","Memo")
//	
//	idw_source.insertrow(1)
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(lb_data)
//	li_ret=i_proxy.of_SetChanges(lb_data)
//	li_ret=idw_target1.SetChanges(lb_data)
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChange() insertrow(1)","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(lb_data)
//	li_ret=idw_target2.SetFullState(lb_data)
//	wf_check("SetFullState() insertrow(1)","","",ls_id," RowID ","Memo")
//	
//	
//	idw_source.reset()
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(lb_data)
//	li_ret=i_proxy.of_SetChanges(lb_data)
//	li_ret=idw_target1.SetChanges(lb_data)
//
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChange() reset","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(lb_data)
//	li_ret=idw_target2.SetFullState(lb_data)
//	wf_check("SetFullState() reset()","","",ls_id," RowID ","Memo")
//
//else
//	idw_source.deleterow(1)
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(ls_data)
//	li_ret=i_proxy.of_SetChanges(ls_data)
//	li_ret=idw_target1.SetChanges(ls_data)
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChange() deleterow(1)","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(ls_data)
//	li_ret=idw_target2.SetFullState(ls_data)
//	wf_check("SetFullState() deleterow(1)","","",ls_id," RowID ","Memo")
//	
//
//	idw_source.insertrow(1)
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(ls_data)
//	li_ret=i_proxy.of_SetChanges(ls_data)
//	li_ret=idw_target1.SetChanges(ls_data)
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChange() insertrow(1)","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(ls_data)
//	li_ret=idw_target2.SetFullState(ls_data)
//	wf_check("SetFullState() insertrow(1)","","",ls_id," RowID ","Memo")
//	
//	idw_source.reset()
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(ls_data)
//	li_ret=i_proxy.of_SetChanges(ls_data)
//	li_ret=idw_target1.SetChanges(ls_data)
//
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChange() reset","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(ls_data)
//	li_ret=idw_target2.SetFullState(ls_data)
//	wf_check("SetFullState() reset()","","",ls_id," RowID ","Memo")
//
//end if
//wf_additem("")
//
//
//
//
//
//
//
//
////int li_ret
////
////blob  lb_data
////string ls_data,ls_id
////
////if ib_save then
////
////	li_ret=i_proxy.of_GetFullState(lb_data)
////
////else
////
////	li_ret=i_proxy.of_GetFullState(ls_data)
////
////end if
////
////idw_source.dataobject='d_all_datatype_grid'
////idw_target1.dataobject='d_all_datatype_grid'
////idw_target2.dataobject='d_all_datatype_grid'
////
////idw_source.settransobject(sqlca)
////idw_target1.settransobject(sqlca)
////idw_target2.settransobject(sqlca)
////
////if ib_save then
////	li_ret=idw_source.SetFullState(lb_data)
////
//////	li_ret=idw_target1.SetFullState(lb_data)
//////
//////	li_ret=idw_target2.SetFullState(lb_data)
////
////
////else
////	li_ret=idw_source.SetFullState(ls_data)
////
//////	li_ret=idw_target1.SetFullState(ls_data)
//////
//////	li_ret=idw_target2.SetFullState(ls_data)
////
////end if
////
//////insert and delete
////
////if ib_save then
////	idw_source.deleterow(1)
////	ls_id=wf_getallid("idw_source")
////	li_ret=idw_source.GetChanges(lb_data)
////	li_ret=i_proxy.of_SetChanges(lb_data)
////	li_ret=idw_target1.SetChanges(lb_data)
////
////	ls_id=ls_id+"|"+wf_getallid("idw_target1")
////	wf_check("SetChange() deleterow(1)","","",ls_id," RowID ","Memo")
////	
//////	li_ret=i_proxy.of_GetFullState(lb_data)
//////	li_ret=idw_target2.SetFullState(lb_data)
//////	wf_check("SetFullState() deleterow(1)","","",ls_id," RowID ","Memo")
////	
////	idw_source.insertrow(1)
////	ls_id=wf_getallid("idw_source")
////	li_ret=idw_source.GetChanges(lb_data)
////	li_ret=i_proxy.of_SetChanges(lb_data)
////	li_ret=idw_target1.SetChanges(lb_data)
////	ls_id=ls_id+"|"+wf_getallid("idw_target1")
////	wf_check("SetChange() insertrow(1)","","",ls_id," RowID ","Memo")
////	
//////	li_ret=i_proxy.of_GetFullState(lb_data)
//////	li_ret=idw_target2.SetFullState(lb_data)
//////	wf_check("SetFullState() insertrow(1)","","",ls_id," RowID ","Memo")
////	
////	
////	idw_source.reset()
////	ls_id=wf_getallid("idw_source")
////	li_ret=idw_source.GetChanges(lb_data)
////	li_ret=i_proxy.of_SetChanges(lb_data)
////	li_ret=idw_target1.SetChanges(lb_data)
////
////	ls_id=ls_id+"|"+wf_getallid("idw_target1")
////	wf_check("SetChange() reset","","",ls_id," RowID ","Memo")
////	
//////	li_ret=i_proxy.of_GetFullState(lb_data)
//////	li_ret=idw_target2.SetFullState(lb_data)
//////	wf_check("SetFullState() reset()","","",ls_id," RowID ","Memo")
////
////else
////	idw_source.deleterow(1)
////	ls_id=wf_getallid("idw_source")
////	li_ret=idw_source.GetChanges(ls_data)
////	li_ret=i_proxy.of_SetChanges(ls_data)
////	li_ret=idw_target1.SetChanges(ls_data)
////	ls_id=ls_id+"|"+wf_getallid("idw_target1")
////	wf_check("SetChange() deleterow(1)","","",ls_id," RowID ","Memo")
////	
//////	li_ret=i_proxy.of_GetFullState(ls_data)
//////	li_ret=idw_target2.SetFullState(ls_data)
//////	wf_check("SetFullState() deleterow(1)","","",ls_id," RowID ","Memo")
//////	
////
////	idw_source.insertrow(1)
////	ls_id=wf_getallid("idw_source")
////	li_ret=idw_source.GetChanges(ls_data)
////	li_ret=i_proxy.of_SetChanges(ls_data)
////	li_ret=idw_target1.SetChanges(ls_data)
////	ls_id=ls_id+"|"+wf_getallid("idw_target1")
////	wf_check("SetChange() insertrow(1)","","",ls_id," RowID ","Memo")
////	
//////	li_ret=i_proxy.of_GetFullState(ls_data)
//////	li_ret=idw_target2.SetFullState(ls_data)
//////	wf_check("SetFullState() insertrow(1)","","",ls_id," RowID ","Memo")
////	
////	idw_source.reset()
////	ls_id=wf_getallid("idw_source")
////	li_ret=idw_source.GetChanges(ls_data)
////	li_ret=i_proxy.of_SetChanges(ls_data)
////	li_ret=idw_target1.SetChanges(ls_data)
////
////	ls_id=ls_id+"|"+wf_getallid("idw_target1")
////	wf_check("SetChange() reset","","",ls_id," RowID ","Memo")
////	
//////	li_ret=i_proxy.of_GetFullState(ls_data)
//////	li_ret=idw_target2.SetFullState(ls_data)
//////	wf_check("SetFullState() reset()","","",ls_id," RowID ","Memo")
////
////end if
////wf_additem("")
////
////
////
////
////
////
////
////
end subroutine

public subroutine wf_check (string as_name, string as_data, string as_status, string as_return, string as_memo, string as_flag);string ls_return,ls_data,ls_status,ls_memo,ls_message

if ib_save then //±£´æÊý¾Ý
			delete from nve_record where name=:as_name;
			//commit;
			choose case as_flag
				case "Return"
					insert into nvo_record(name,result) values(:as_name,:as_return);
				case "Data"
					insert into nvo_record(name,data) values(:as_name,:as_data);
				case "Status"
					insert into nvo_record(name,status) values(:as_name,:as_status);
				case "Memo"
					insert into nvo_record(name,result,memo) values(:as_name,:as_return,:as_memo);
				case "All"
					insert into nvo_record(name,result,data,status) values(:as_name,:as_return,:as_data,:as_status);
			end choose
			commit;
else  //±È½ÏÊý¾Ý
			choose case as_flag
				case "Return"
					select result into :ls_return from nvo_record where name=:as_name;
					ls_message+=as_name+" Return: "
					if ls_return=as_return then 
						ls_message="Right|IE  "+ls_message+ls_return
					else
						wf_additem("Error|IE  "+ls_message+as_return)
						ls_message="Error|PB "+ls_message+ls_return
						
					end if
					wf_additem(ls_message)
					
				case "Data"
					select data into :ls_data from nvo_record where name=:as_name;
					ls_message+=as_name+" Data: "
					if ls_return=as_return then 
						ls_message="Right|IE  "+ls_message+ls_data
					else
						wf_additem("Error|IE  "+ls_message+as_data)
						ls_message="Error|PB "+ls_message+ls_data
						
					end if
					wf_additem(ls_message)
				case "Status"
					select status into :ls_status from nvo_record where name=:as_name;
					ls_message+=as_name+" Status: "
					
					if ls_return=as_return then 
						ls_message="Right|IE  "+ls_message+ls_status
					else
						wf_additem("Error|IE  "+ls_message+as_status)
						ls_message="Error|PB "+ls_message+ls_status
						
					end if
					wf_additem(ls_message)
				case "Memo"
					select result into :ls_return from nvo_record where name=:as_name and memo=:as_memo;
					ls_message+=as_name+" "+as_memo+": "
					
					if ls_return=as_return then 
						ls_message="Right|IE  "+ls_message+ls_return
					else
						wf_additem("Error|IE  "+ls_message+as_return)
						ls_message="Error|PB "+ls_message+ls_return
						
					end if
					wf_additem(ls_message)
				case "All"
					select result,data,status into :ls_return,:ls_data,:ls_status from nvo_record where name=:as_name;
					if ls_return=as_return then 
						ls_message="Right|IE  "+as_name+" Return: "+ls_return+" Data: "+ls_data+" Status: "+ls_status
					
						
					else
						ls_message="Error|IE  "+as_name+" Return: "+as_return+" Data: "+as_data+" Status: "+as_status
					
						wf_additem(ls_message)
						ls_message="Error|PB "+as_name+" Return: "+ls_return+" Data: "+ls_data+" Status: "+ls_status
					
						
					end if
					wf_additem(ls_message)
	end choose
//			select result into:ls_dbvalue from nvo_record where name=:as_name;
//	end choose
	
	
//	if li_ret>=0 then 
//		ls_message="Right"
//	else
//		ls_message="Error"
//	end if
//	wf_additem(ls_message+"|idw_source.GetFullState(ls_data) Return"+f_string(li_ret))	
end if
end subroutine

public function string wf_getallid (string as_dwname);int i
string ls_ids
appeondatawindow ldw_1

choose case as_dwname
	case "idw_source"
		ldw_1=idw_source
	case "idw_target1"
		ldw_1=idw_target1
	case "idw_target2"
		ldw_1=idw_target2
end choose

if ib_pb then
	for i = 1 to ldw_1.rowcount()
		ls_ids+= string(ldw_1.GetRowIdFromRow(i,primary!))
	next
else
	for i = 1 to ldw_1.rowcount()
		if as_dwname = 'idw_target2' then
			ls_ids+= string(idw_target2.GetRowIdFromRow(i,"primary!"))
		else
			ls_ids+= string(ldw_1.GetRowIdFromRow(i,"primary!"))
		end if
	next
end if

return ls_ids
	
end function

public subroutine wf_sortfilter ();if ib_pb then
	wf_sortfilter_blob()
	
	
else
	wf_sortfilter_string()
end if

//int li_ret
//
//blob  lb_data
//string ls_data,ls_id
//
//if ib_save  then
//
//	li_ret=i_proxy.of_RetrieveData(lb_data)
//	
//else
//	li_ret=i_proxy.of_RetrieveData(ls_data)
//	
//end if
//
//idw_source.dataobject='d_all_datatype_grid'
//idw_target1.dataobject='d_all_datatype_grid'
//idw_target2.dataobject='d_all_datatype_grid'
//
//idw_source.settransobject(sqlca)
//idw_target1.settransobject(sqlca)
//idw_target2.settransobject(sqlca)
//
//if ib_save  then
//	li_ret=idw_source.SetFullState(lb_data)
//
//	li_ret=idw_target1.SetFullState(lb_data)
//
//	li_ret=idw_target2.SetFullState(lb_data)
//
//
//else
//	li_ret=idw_source.SetFullState(ls_data)
//
//	li_ret=idw_target1.SetFullState(ls_data)
//
//	li_ret=idw_target2.SetFullState(ls_data)
//
//end if
//
////
//
//if ib_save then
//	idw_source.setSort("#2 D")
//	idw_source.Sort()
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(lb_data)
//	li_ret=i_proxy.of_SetChanges(lb_data)
//	li_ret=idw_target1.SetChanges(lb_data)
//
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChanges() sort()","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(lb_data)
//	li_ret=idw_target2.SetFullState(lb_data)
//	wf_check("SetFullState() sort()","","",ls_id," RowID ","Memo")
//	
//
//	idw_source.setfilter("#1<>148")
//	idw_source.filter()
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(lb_data)
//	li_ret=i_proxy.of_SetChanges(lb_data)
//	li_ret=idw_target1.SetChanges(lb_data)
//
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("SetChanges() filter()","","",ls_id," RowID ","Memo")	
//
//	li_ret=i_proxy.of_GetFullState(lb_data)
//	li_ret=idw_target2.SetFullState(lb_data)
//	wf_check("SetFullState() filter()","","",ls_id," RowID ","Memo")
//
//else
//	idw_source.setSort("#2 D")
//	idw_source.Sort()
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(ls_data)
//	li_ret=i_proxy.of_SetChanges(ls_data)
//	li_ret=idw_target1.SetChanges(ls_data)
//
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("sort()","","",ls_id," RowID ","Memo")
//	
//	li_ret=i_proxy.of_GetFullState(lb_data)
//	li_ret=idw_target2.SetFullState(lb_data)
//	wf_check("SetFullState() sort()","","",ls_id," RowID ","Memo")
//	
//	idw_source.setfilter("#1<>148")
//	idw_source.filter()
//	ls_id=wf_getallid("idw_source")
//	li_ret=idw_source.GetChanges(ls_data)
//	li_ret=i_proxy.of_SetChanges(ls_data)
//	li_ret=idw_target1.SetChanges(ls_data)
//
//	ls_id=ls_id+"|"+wf_getallid("idw_target1")
//	wf_check("filter()","","",ls_id," RowID ","Memo")	
//	
//	li_ret=i_proxy.of_GetFullState(lb_data)
//	li_ret=idw_target2.SetFullState(lb_data)
//	wf_check("SetFullState() filter()","","",ls_id," RowID ","Memo")
//	
//end if
//
//
//
//
//
//
//
//
end subroutine

public subroutine wf_returnvalue_string ();int li_ret

string  lb_data
//string ls_data

//i_proxy.retrieve·µ»ØÖµ
li_ret=i_proxy.of_RetrieveData(lb_data)
wf_check("i_proxy.of_RetrieveData(R)1","","",f_string(li_ret),"","Return")

//¿Í»§¶Ësetup
idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype'

idw_source.settransobject(sqlca)
//idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

//setfullstate·µ»ØÖµ
li_ret=idw_source.SetFullState(lb_data)
wf_check("idw_source.SetFullState(R)2","","",f_string(li_ret),"","Return")
li_ret=idw_target1.SetFullState(lb_data)
wf_check("idw_target1.SetFullState(R)3","","",f_string(li_ret),"","Return")
li_ret=idw_target2.SetFullState(lb_data)
wf_check("idw_target2.SetFullState(R)4","","",f_string(li_ret),"","Return")

//getchange·µ»ØÖµ
li_ret=i_proxy.of_GetChanges(lb_data)

wf_check("i_proxy.of_GetChanges(R)5","","",f_string(li_ret),"","Return")

li_ret=idw_source.SetChanges(lb_data)
wf_check("idw_source.SetChanges(R)6","","",f_string(li_ret),"","Return")
li_ret=idw_target1.SetChanges(lb_data)
wf_check("idw_target1.SetChanges(R)7","","",f_string(li_ret),"","Return")
li_ret=idw_target2.SetChanges(lb_data)
wf_check("idw_target2.SetChanges(R)8","","",f_string(li_ret),"","Return")

end subroutine

public subroutine wf_returnvalue_blob ();int li_ret

blob  lb_data
//string ls_data

//i_proxy.retrieve·µ»ØÖµ
li_ret=i_proxy.of_RetrieveData(lb_data)
wf_check("i_proxy.of_RetrieveData(R)1","","",f_string(li_ret),"","Return")

//¿Í»§¶Ësetup
idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype'

idw_source.settransobject(sqlca)
//idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

//setfullstate·µ»ØÖµ
li_ret=idw_source.SetFullState(lb_data)
wf_check("idw_source.SetFullState(R)2","","",f_string(li_ret),"","Return")
li_ret=idw_target1.SetFullState(lb_data)
wf_check("idw_target1.SetFullState(R)3","","",f_string(li_ret),"","Return")
li_ret=idw_target2.SetFullState(lb_data)
wf_check("idw_target2.SetFullState(R)4","","",f_string(li_ret),"","Return")

//getchange·µ»ØÖµ
li_ret=i_proxy.of_GetChanges(lb_data)

wf_check("i_proxy.of_GetChanges(R)5","","",f_string(li_ret),"","Return")

li_ret=idw_source.SetChanges(lb_data)
wf_check("idw_source.SetChanges(R)6","","",f_string(li_ret),"","Return")
li_ret=idw_target1.SetChanges(lb_data)
wf_check("idw_target1.SetChanges(R)7","","",f_string(li_ret),"","Return")
li_ret=idw_target2.SetChanges(lb_data)
wf_check("idw_target2.SetChanges(R)8","","",f_string(li_ret),"","Return")

end subroutine

public subroutine wf_sortfilter_blob ();int li_ret

blob  lb_data
string ls_id

//³õÊ¼ÉèÖÃ
li_ret=i_proxy.of_RetrieveData(lb_data)
	

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)

li_ret=idw_target1.SetFullState(lb_data)

li_ret=idw_target2.SetFullState(lb_data)

//sort setchanges()
idw_source.setSort("#2 D")
idw_source.Sort()
ls_id=wf_getallid("idw_source")

li_ret=idw_source.GetChanges(lb_data)

li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChanges() sort()","","",ls_id," RowID ","Memo")
//sort setfullstate()
li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() sort()","","",ls_id," RowID ","Memo")
	
//filter setchange()
idw_source.setfilter("#1<>148")
idw_source.filter()
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChanges() filter()","","",ls_id," RowID ","Memo")	

//filter setfullstate()
li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() filter()","","",ls_id," RowID ","Memo")









end subroutine

public subroutine wf_sortfilter_string ();int li_ret

string  lb_data
string ls_id

//³õÊ¼ÉèÖÃ
li_ret=i_proxy.of_RetrieveData(lb_data)
	

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)

li_ret=idw_target1.SetFullState(lb_data)

li_ret=idw_target2.SetFullState(lb_data)

//sort setchanges()
idw_source.setSort("#2 D")
idw_source.Sort()
ls_id=wf_getallid("idw_source")

li_ret=idw_source.GetChanges(lb_data)

li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChanges() sort()","","",ls_id," RowID ","Memo")
//sort setfullstate()
li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() sort()","","",ls_id," RowID ","Memo")
	
//filter setchange()
idw_source.setfilter("#1<>148")
idw_source.filter()
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChanges() filter()","","",ls_id," RowID ","Memo")	

//filter setfullstate()
li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() filter()","","",ls_id," RowID ","Memo")









end subroutine

public subroutine wf_insertdelete_blob ();int li_ret

blob  lb_data
string ls_id



//li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)

//	li_ret=idw_target1.SetFullState(lb_data)
//
//	li_ret=idw_target2.SetFullState(lb_data)


//insert and delete
idw_source.deleterow(1)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() deleterow(1)","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() deleterow(1)","","",ls_id," RowID ","Memo")

idw_source.insertrow(1)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() insertrow(1)","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() insertrow(1)","","",ls_id," RowID ","Memo")

//reset
idw_source.reset()
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() reset","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() reset()","","",ls_id," RowID ","Memo")


wf_additem("")



end subroutine

public subroutine wf_insertdelete_string ();int li_ret

string  lb_data
string ls_id



//li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)

//	li_ret=idw_target1.SetFullState(lb_data)
//
//	li_ret=idw_target2.SetFullState(lb_data)


//insert and delete
idw_source.deleterow(1)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() deleterow(1)","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() deleterow(1)","","",ls_id," RowID ","Memo")

idw_source.insertrow(1)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() insertrow(1)","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() insertrow(1)","","",ls_id," RowID ","Memo")

//reset
idw_source.reset()
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() reset","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() reset()","","",ls_id," RowID ","Memo")


wf_additem("")



end subroutine

public subroutine wf_rowsmovecopy ();if ib_pb then
	
	wf_rowsmovecopy_blob()
else
	
	wf_rowsmovecopy_string()
end if
end subroutine

public subroutine wf_rowsmovecopy_blob ();int li_ret

blob  lb_data
string ls_id



li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)


//rowscopy
idw_source.rowscopy(2,2,primary!,idw_source,1,delete!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")+"|deletecount:"+string(idw_target1.deletedcount())
wf_check("SetChange() rowscopy()1","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() rowscopy()2","","",ls_id," RowID ","Memo")

idw_target1.rowscopy(1,2,primary!,idw_source,1,primary!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() rowscopy()3","","",ls_id," RowID ","Memo")

//rowsmove
li_ret=i_proxy.of_RetrieveData(lb_data)
li_ret=idw_source.SetFullState(lb_data)

idw_source.rowsmove(2,2,primary!,idw_source,1,delete!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")+"|deletecount:"+string(idw_target1.deletedcount())
wf_check("SetChange() rowsmove()1","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() rowsmove()2","","",ls_id," RowID ","Memo")

idw_target1.rowsmove(1,2,primary!,idw_source,1,primary!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() rowsmove()3","","",ls_id," RowID ","Memo")
wf_additem("")

//rowsdiscard()
li_ret=i_proxy.of_RetrieveData(lb_data)
li_ret=idw_source.SetFullState(lb_data)
li_ret=idw_target1.SetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)

idw_source.rowsdiscard(2,3,primary!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("GetChanges() rowsdiscard(2,3,primary!)1","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() rowsdiscard(2,3,primary!)1","","",ls_id," RowID ","Memo")

wf_additem("")



end subroutine

public subroutine wf_rowsmovecopy_string ();int li_ret

string  lb_data
string ls_id
DWItemStatus  ldwi

li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)



//rowscopy
idw_source.rowscopy(2,2,primary!,idw_source,1,delete!)


ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)




ls_id=ls_id+"|"+wf_getallid("idw_target1")+"|deletecount:"+string(idw_target1.deletedcount())
wf_check("SetChange() rowscopy()1","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() rowscopy()2","","",ls_id," RowID ","Memo")

idw_target1.rowscopy(1,2,primary!,idw_source,1,primary!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() rowscopy()3","","",ls_id," RowID ","Memo")

//rowsmove
li_ret=i_proxy.of_RetrieveData(lb_data)
li_ret=idw_source.SetFullState(lb_data)

idw_source.rowsmove(2,2,primary!,idw_source,1,delete!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")+"|deletecount:"+string(idw_target1.deletedcount())
wf_check("SetChange() rowsmove()1","","",ls_id," RowID ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
ls_id=wf_getallid("idw_target2")
wf_check("SetFullState() rowsmove()2","","",ls_id," RowID ","Memo")

idw_target1.rowsmove(1,2,primary!,idw_source,1,primary!)
ls_id=wf_getallid("idw_source")
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_id=ls_id+"|"+wf_getallid("idw_target1")
wf_check("SetChange() rowsmove()3","","",ls_id," RowID ","Memo")
wf_additem("")



end subroutine

public subroutine wf_itemstatus_blob ();int li_ret

blob  lb_data
string ls_status



li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)


//rowscopy
idw_source.setitemstatus(2,1,primary!,datamodified!)
ls_status=f_getrowcolstatus(idw_source,primary!,2)
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_status=ls_status+"|"+f_getrowcolstatus(idw_target1,primary!,2)
wf_check("SetChange() setitemstatus()1","","",ls_status," Rowstatus ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
f_getrowcolstatus(idw_target2,primary!,2)
wf_check("SetFullState() setitemstatus()2","","",ls_status," Rowstatus ","Memo")


end subroutine

public subroutine wf_itemstatus_string ();int li_ret

string  lb_data
string ls_status



li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)


//rowscopy
idw_source.setitemstatus(2,1,primary!,datamodified!)
ls_status=f_getrowcolstatus(idw_source,primary!,2)
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_SetChanges(lb_data)
li_ret=idw_target1.SetChanges(lb_data)

ls_status=ls_status+"|"+f_getrowcolstatus(idw_target1,primary!,2)
wf_check("SetChange() setitemstatus()1","","",ls_status," Rowstatus ","Memo")

li_ret=i_proxy.of_GetFullState(lb_data)
li_ret=idw_target2.SetFullState(lb_data)
f_getrowcolstatus(idw_target2,primary!,2)
wf_check("SetFullState() setitemstatus()2","","",ls_status," Rowstatus ","Memo")


end subroutine

public subroutine wf_itemstatus ();if ib_pb then
	
	wf_itemstatus_blob()
else
	
	wf_itemstatus_string()
end if

end subroutine

public subroutine wf_update_blob ();int li_ret

blob  lb_data
string ls_id,ls_column

li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)
li_ret=idw_target1.SetFullState(lb_data)

//ÐÞ¸Ä
//ls_column=idw_source.getitemstring(1,2,primary!,true)
li_ret=idw_source.setitem(1,2,"aaa")

if li_ret<>1 then
	messagebox("alert","setitem false!")
end if
ls_column=idw_source.getitemstring(1,2,primary!,true)

//update "aaa"
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_UpdateData(lb_data)
if li_ret=1 then
	wf_additem("Right|IE update return 1 ")
else
	wf_additem("Error|IE update return"+string(li_ret))
	wf_additem("Error|PB update return"+string(li_ret))
end if
//
i_proxy.of_RetrieveData(lb_data)
li_ret=idw_source.SetFullState(lb_data)
ls_column=idw_source.getitemstring(1,2,primary!,true)	
if ls_column ="aaa" then 

	wf_additem("Right|IE update column='aaa'")
else
	wf_additem("Error|IE update column="+ls_column)
	wf_additem("Error|PB update column='aaa'")
end if

ls_column=idw_target1.getitemstring(1,2,primary!,true)
if ls_column<>"aaa" then
		wf_additem("Right|IE idw_target1 column<>'aaa'")
else
	wf_additem("Error|IE idw_target1 column<>'aaa'")
	wf_additem("Error|PB idw_target1 column"+ls_column)
end if
//ÁíÒ»datawindow update
li_ret=idw_target1.GetFullState(lb_data)
li_ret=i_proxy.of_UpdateData(lb_data)
if li_ret=1 then
	wf_additem("Error|IE update return"+string(li_ret))
	wf_additem("Error|PB update return 1")
	
else
	wf_additem("Right|IE update return"+string(li_ret))
end if

//ÔÙÐÞ¸Ä»ØÈ¥
ls_column=idw_target1.getitemstring(1,2,primary!,true)
li_ret=idw_source.setitem(1,2,ls_column)

if li_ret<>1 then
	messagebox("alert","setitem false!")
end if
ls_column=idw_source.getitemstring(1,2,primary!,true)

//update
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_UpdateData(lb_data)
if li_ret=1 then
	wf_additem("Right|IE update return 1 ")
else
	wf_additem("Error|IE update return"+string(li_ret))
	wf_additem("Error|PB update return"+string(li_ret))
end if


	




end subroutine

public subroutine wf_update_string ();int li_ret

blob  lb_data
string ls_id,ls_column

li_ret=i_proxy.of_RetrieveData(lb_data)

idw_source.dataobject='d_all_datatype_grid'
idw_target1.dataobject='d_all_datatype_grid'
idw_target2.dataobject='d_all_datatype_grid'

idw_source.settransobject(sqlca)
idw_target1.settransobject(sqlca)
idw_target2.settransobject(sqlca)

li_ret=idw_source.SetFullState(lb_data)
li_ret=idw_target1.SetFullState(lb_data)

//ÐÞ¸Ä
//ls_column=idw_source.getitemstring(1,2,primary!,true)
li_ret=idw_source.setitem(1,2,"aaa")

if li_ret<>1 then
	messagebox("alert","setitem false!")
end if
ls_column=idw_source.getitemstring(1,2,primary!,true)

//update "aaa"
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_UpdateData(lb_data)
if li_ret=1 then
	wf_additem("Right|IE update return 1 ")
else
	wf_additem("Error|IE update return"+string(li_ret))
	wf_additem("Error|PB update return"+string(li_ret))
end if
//
i_proxy.of_RetrieveData(lb_data)
li_ret=idw_source.SetFullState(lb_data)
ls_column=idw_source.getitemstring(1,2,primary!,true)	
if ls_column ="aaa" then 

	wf_additem("Right|IE update column='aaa'")
else
	wf_additem("Error|IE update column="+ls_column)
	wf_additem("Error|PB update column='aaa'")
end if

ls_column=idw_target1.getitemstring(1,2,primary!,true)
if ls_column<>"aaa" then
		wf_additem("Right|IE idw_target1 column<>'aaa'")
else
	wf_additem("Error|IE idw_target1 column<>'aaa'")
	wf_additem("Error|PB idw_target1 column"+ls_column)
end if
//ÁíÒ»datawindow update
li_ret=idw_target1.GetFullState(lb_data)
li_ret=i_proxy.of_UpdateData(lb_data)
if li_ret=1 then
	wf_additem("Error|IE update return"+string(li_ret))
	wf_additem("Error|PB update return 1")
	
else
	wf_additem("Right|IE update return"+string(li_ret))
end if

//ÔÙÐÞ¸Ä»ØÈ¥
ls_column=idw_target1.getitemstring(1,2,primary!,true)
li_ret=idw_source.setitem(1,2,ls_column)

if li_ret<>1 then
	messagebox("alert","setitem false!")
end if
ls_column=idw_source.getitemstring(1,2,primary!,true)

//update
li_ret=idw_source.GetChanges(lb_data)
li_ret=i_proxy.of_UpdateData(lb_data)
if li_ret=1 then
	wf_additem("Right|IE update return 1 ")
else
	wf_additem("Error|IE update return"+string(li_ret))
	wf_additem("Error|PB update return"+string(li_ret))
end if


	




end subroutine

public subroutine wf_update ();if ib_pb then
	
	wf_update_blob()
else
	
	wf_update_string()
end if

end subroutine

on w_dw_nvo.create
this.cb_8=create cb_8
this.cbx_2=create cbx_2
this.dw_output=create dw_output
this.cbx_1=create cbx_1
this.cbx_right=create cbx_right
this.cb_run=create cb_run
this.lb_testitems=create lb_testitems
this.st_4=create st_4
this.st_error=create st_error
this.cb_11=create cb_11
this.cb_13=create cb_13
this.cb_rsize=create cb_rsize
this.dw_5=create dw_5
this.lb_1=create lb_1
this.dw_4=create dw_4
this.gb_4=create gb_4
this.gb_3=create gb_3
this.gb_1=create gb_1
this.dw_3=create dw_3
this.Control[]={this.cb_8,&
this.cbx_2,&
this.dw_output,&
this.cbx_1,&
this.cbx_right,&
this.cb_run,&
this.lb_testitems,&
this.st_4,&
this.st_error,&
this.cb_11,&
this.cb_13,&
this.cb_rsize,&
this.dw_5,&
this.lb_1,&
this.dw_4,&
this.gb_4,&
this.gb_3,&
this.gb_1,&
this.dw_3}
end on

on w_dw_nvo.destroy
destroy(this.cb_8)
destroy(this.cbx_2)
destroy(this.dw_output)
destroy(this.cbx_1)
destroy(this.cbx_right)
destroy(this.cb_run)
destroy(this.lb_testitems)
destroy(this.st_4)
destroy(this.st_error)
destroy(this.cb_11)
destroy(this.cb_13)
destroy(this.cb_rsize)
destroy(this.dw_5)
destroy(this.lb_1)
destroy(this.dw_4)
destroy(this.gb_4)
destroy(this.gb_3)
destroy(this.gb_1)
destroy(this.dw_3)
end on

event open;//dw_1.SetTransObject(sqlca)
//dw_2.SetTransobject(sqlca)
//dw_1.Retrieve()
//dw_2.Retrieve()  

connection myconnect 
long ll_rc ,li_i

//myconnect = create connection 
//myconnect.driver = "jaguar" 
//myconnect.location = "192.0.2.74:9989" 
//myconnect.application = "EAServer74" 
//myconnect.userID = "jagadmin" 
//myconnect.password = "" 
//ll_rc = myconnect.ConnectToServer() 
//IF ll_rc <> 0 THEN         
//	MessageBox("Connection failed", ll_rc) 
//END IF
//
//li_i = myconnect.CreateInstance(i_proxy, "appeon_datastore/nvo_datastore") 

//
myconnect = create connection 
myconnect.driver = "jaguar" 
myconnect.location = "localhost:9989" 
myconnect.application = "eondwnvo" 
myconnect.userID = "jagadmin" 
myconnect.password = "" 
ll_rc = myconnect.ConnectToServer() 
IF ll_rc <> 0 THEN         
	MessageBox("Connection failed", ll_rc) 
END IF

//li_i = myconnect.CreateInstance(i_proxy, "eondwnvo/n_cst_appeon") 
li_i = myconnect.CreateInstance(i_proxy) 


if li_i > 0 then
	messagebox('create failed',li_i)
end if

destroy myconnect


//idw_source = create appeondatawindow
//idw_target1 = create appeondatawindow
//idw_target2 = create appeondatawindow
end event

event close;destroy idw_source 
destroy idw_target1 
destroy idw_target2 
end event

type cb_8 from commandbutton within w_dw_nvo
integer x = 3803
integer y = 224
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

event clicked;f_outputfile(lb_1,dw_output)
end event

type cbx_2 from checkbox within w_dw_nvo
integer x = 2085
integer y = 256
integer width = 402
integer height = 96
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Run in PB"
end type

event clicked;if this.checked then

	ib_pb=true
else

	ib_pb=false
end if


end event

event constructor;if this.checked then
//	idw_source=dw_0
//	idw_target1=dw_1
//	idw_target2=dw_2
	ib_pb=true
else
//	idw_source=dw_3
//	idw_target1=dw_4
//	idw_target2=dw_5
	ib_pb=false
end if

//	idw_source=dw_3
//	idw_target1=dw_4
//	idw_target2=dw_5

end event

type dw_output from datawindow within w_dw_nvo
boolean visible = false
integer x = 1609
integer y = 608
integer width = 768
integer height = 352
integer taborder = 40
string title = "none"
string dataobject = "d_dwtofile"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

type cbx_1 from checkbox within w_dw_nvo
integer x = 2085
integer y = 128
integer width = 402
integer height = 96
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Save Value"
end type

event clicked;if this.checked then

	ib_save=true
else

	ib_save=false
end if


end event

event constructor;if this.checked then
//	idw_source=dw_0
//	idw_target1=dw_1
//	idw_target2=dw_2
	ib_save=true
else
//	idw_source=dw_3
//	idw_target1=dw_4
//	idw_target2=dw_5
	ib_save=false
end if

idw_source=dw_3
idw_target1=dw_4
idw_target2=dw_5
//dw_3=idw_source
//dw_4=idw_target1
//dw_5=idw_target2

end event

type cbx_right from checkbox within w_dw_nvo
integer x = 2816
integer y = 96
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

type cb_run from commandbutton within w_dw_nvo
integer x = 1646
integer y = 160
integer width = 146
integer height = 128
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Run"
end type

event clicked;
integer li_ItemTotal, li_ItemCount



li_ItemTotal = lb_testitems.TotalItems( )

if ib_save then 
	delete from nvo_record;
	commit;
end if

FOR li_ItemCount = 1 to li_ItemTotal
	
	if lb_testitems.State(li_ItemCount)=1 then
		
		choose case li_ItemCount
			case 1
				wf_returnvalue()
				wf_additem("")
			case 2
				wf_insertdelete()
				wf_additem("")
			case 3
				wf_sortfilter()
				wf_additem("")
			case 4
				wf_rowsmovecopy()
				wf_additem("")
			case 5
				wf_itemstatus()
				wf_additem("")
			case 6
				wf_update()
				wf_additem("")
		end choose
	end if
			

NEXT

st_error.text=string(il_error_no)

end event

type lb_testitems from listbox within w_dw_nvo
event ue_buttondown pbm_lbuttondown
integer x = 183
integer y = 64
integer width = 1353
integer height = 352
integer taborder = 40
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

event constructor;//integer rownbr
//string s
//s = "Edit File"
//rownbr = lb_Actions.AddItem(s)
int i
string ls_item[]

ls_item[1]="Return value"
ls_item[2]="Insert delete reset"
ls_item[3]="sort filter"
ls_item[4]="rowsmove and copy"
ls_item[5]="itemstatus"
ls_item[6]="Update"
//ls_item[4]="Update"
//ls_item[5]="Retrieve"
//ls_item[6]="Event"
//ls_item[7]="Prinet/Save as/Filter/Sort"
//ls_item[8]="FindRequired"
//ls_item[9]="FindRequired(edit)"
//ls_item[10]="RowsMove(copy)"


//ls_item[10]="button click"

for i=1 to UpperBound(ls_item)
	this.additem(string(i,"00")+" "+ls_Item[i])
next

end event

type st_4 from statictext within w_dw_nvo
integer x = 3584
integer y = 96
integer width = 183
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Error:"
boolean focusrectangle = false
end type

type st_error from statictext within w_dw_nvo
integer x = 3840
integer y = 96
integer width = 293
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 255
long backcolor = 67108864
string text = "0"
boolean focusrectangle = false
end type

type cb_11 from commandbutton within w_dw_nvo
integer x = 3474
integer y = 224
integer width = 256
integer height = 88
integer taborder = 30
integer textsize = -10
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

type cb_13 from commandbutton within w_dw_nvo
integer x = 3145
integer y = 224
integer width = 256
integer height = 88
integer taborder = 40
integer textsize = -10
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

type cb_rsize from commandbutton within w_dw_nvo
integer x = 2816
integer y = 224
integer width = 256
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Max"
end type

event clicked;if this.text="max" then
	lb_1.x=dw_3.x
	lb_1.width=lb_1.width+dw_3.width+10
	this.text="min"
	dw_3.visible=false
	dw_4.visible=false
	dw_5.visible=false
else
	lb_1.x=dw_3.x +dw_3.width +10
	lb_1.width =lb_1.width -dw_3.width -10
	this.text="max"
	dw_3.visible=true
	dw_4.visible=true
	dw_5.visible=true
end if


//if this.text="m" then
//	
//	lb_1.x=dw_1.x +dw_1.width +5
//	lb_1.width =lb_1.width -dw_1.width -5
//	dw_2.BringToTop = TRUE
//	dw_1.BringToTop = TRUE
//	this.text="left"
//
//elseif this.text="left" then
//	
//	dw_2.width=dw_2.width+lb_1.width+5
//	dw_1.width=dw_1.width+lb_1.width+5
//	
//	IF cb_10.text="Show dw_2" Then
//		dw_2.BringToTop = TRUE
//		dw_1.BringToTop = TRUE
//	end if
//
//	this.text="right"
//elseif	this.text="right" then
//	dw_2.width=dw_2.width -lb_1.width -5
//	dw_1.width=dw_1.width -lb_1.width -5
//	lb_1.x=dw_1.x
//	lb_1.width=lb_1.width+dw_1.width+5
//	
//	dw_2.BringToTop = false
//	dw_1.BringToTop = false
//	
//	this.BringToTop = TRUE

//
//	this.text="m"
//	
//end if
end event

type dw_5 from appeondatawindow within w_dw_nvo
integer x = 110
integer y = 1760
integer width = 2523
integer height = 608
integer taborder = 30
boolean hscrollbar = true
boolean vscrollbar = true
end type

type lb_1 from listbox within w_dw_nvo
integer x = 2670
integer y = 480
integer width = 1499
integer height = 1888
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

type dw_4 from appeondatawindow within w_dw_nvo
integer x = 110
integer y = 1120
integer width = 2523
integer height = 608
integer taborder = 20
boolean hscrollbar = true
boolean vscrollbar = true
end type

type gb_4 from groupbox within w_dw_nvo
integer x = 2670
integer width = 1499
integer height = 448
integer taborder = 60
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "ListBox"
end type

type gb_3 from groupbox within w_dw_nvo
integer x = 1938
integer width = 695
integer height = 448
integer taborder = 90
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Select in PB"
end type

type gb_1 from groupbox within w_dw_nvo
integer x = 110
integer width = 1792
integer height = 448
integer taborder = 10
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

type dw_3 from appeondatawindow within w_dw_nvo
integer x = 110
integer y = 480
integer width = 2523
integer height = 608
integer taborder = 20
boolean hscrollbar = true
boolean vscrollbar = true
end type

event itemfocuschanged;call super::itemfocuschanged;//mle_output.text += "Object:"+this.ClassName()+" event:ItemFocusChanged("+string(row)+","+dwo.name+")"
//return ii_return
//string ls_event
//ls_event = "itemfocuschanged"
//is_event += ls_event+","
//if cbx_3.checked then
//	lb_1.additem("dw_1."+ls_event+" row="+string(row) + " dwo.name = " + dwo.name)
//end if
//if cbx_4.checked then
//	return wf_eventreturn(ls_event)
//end if
end event

event rowfocuschanging;call super::rowfocuschanging;//string ls_event
//ls_event = "rowfocuschanging"
//is_event += ls_event+","
//if cbx_3.checked then
//	lb_1.additem("dw_1."+ls_event+" currentrow="+string(currentrow) + " newrow = " + string(newrow))
//end if
//if cbx_4.checked then
//	return wf_eventreturn(ls_event)
//end if
end event

event rowfocuschanged;call super::rowfocuschanged;//wf_selectrow()
//string ls_event
//ls_event = "rowfocuschanged"
//is_event += ls_event+","
//if cbx_3.checked then
//	lb_1.additem("dw_1."+ls_event+" currentrow="+string(currentrow))
//end if
//if cbx_4.checked then
//	return wf_eventreturn(ls_event)
//end if
end event

