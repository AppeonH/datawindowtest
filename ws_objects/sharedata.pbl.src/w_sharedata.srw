$PBExportHeader$w_sharedata.srw
forward
global type w_sharedata from window
end type
type dw_bak from datawindow within w_sharedata
end type
type cbx_showright from checkbox within w_sharedata
end type
type dw_3 from datawindow within w_sharedata
end type
type cb_run from commandbutton within w_sharedata
end type
type dw_2 from datawindow within w_sharedata
end type
type st_message from statictext within w_sharedata
end type
type lb_testitems from listbox within w_sharedata
end type
type cb_autorun from commandbutton within w_sharedata
end type
type cb_saveas from commandbutton within w_sharedata
end type
type cb_error from commandbutton within w_sharedata
end type
type cbx_right from checkbox within w_sharedata
end type
type cb_max from commandbutton within w_sharedata
end type
type cb_1 from commandbutton within w_sharedata
end type
type cb_sort from commandbutton within w_sharedata
end type
type cb_reset from commandbutton within w_sharedata
end type
type dw_1 from datawindow within w_sharedata
end type
type dw_output from datawindow within w_sharedata
end type
type gb_4 from groupbox within w_sharedata
end type
type gb_5 from groupbox within w_sharedata
end type
type gb_1 from groupbox within w_sharedata
end type
type gb_2 from groupbox within w_sharedata
end type
type gb_3 from groupbox within w_sharedata
end type
type lb_1 from listbox within w_sharedata
end type
end forward

global type w_sharedata from window
integer width = 4658
integer height = 2388
boolean titlebar = true
string title = "ShareData Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
dw_bak dw_bak
cbx_showright cbx_showright
dw_3 dw_3
cb_run cb_run
dw_2 dw_2
st_message st_message
lb_testitems lb_testitems
cb_autorun cb_autorun
cb_saveas cb_saveas
cb_error cb_error
cbx_right cbx_right
cb_max cb_max
cb_1 cb_1
cb_sort cb_sort
cb_reset cb_reset
dw_1 dw_1
dw_output dw_output
gb_4 gb_4
gb_5 gb_5
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
lb_1 lb_1
end type
global w_sharedata w_sharedata

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

end variables

forward prototypes
public subroutine wf_script (string as_testitem)
public subroutine wf_init ()
public subroutine wf_resume ()
public subroutine wf_filter ()
public subroutine wf_getttemdate ()
public subroutine wf_getitemdate ()
public subroutine wf_getitemstring ()
public subroutine wf_setitem ()
public subroutine wf_getsetitemstatus ()
public subroutine wf_getsqlselect ()
public subroutine wf_setsqlselect ()
public subroutine wf_importfile ()
public subroutine wf_importstring ()
public subroutine wf_importclipboard ()
public subroutine wf_deleterow ()
public subroutine wf_insertrow ()
public subroutine wf_reset ()
public subroutine wf_retrieve ()
public subroutine wf_rowscopy ()
public subroutine wf_describetestitem ()
public subroutine wf_testitem (string as_testitem)
public subroutine wf_rowsmove ()
public subroutine wf_rowsdiscard ()
public subroutine wf_update ()
public subroutine wf_setvalue ()
public subroutine wf_sort ()
public subroutine wf_rowdiscard ()
public subroutine wf_output (string as_testitem, string as_orivalue, string as_curvalue, string as_type)
public function boolean wf_additem (string as_message, string as_testitem)
public subroutine wf_message (string as_operate, string as_problem)
public function string wf_ds (string as_string, string as_ds)
public function integer wf_returnerror ()
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
	case "Filter"
		//wf_testitem("Filter")
		wf_filter()		
	case "GetItemDate"
		//wf_testitem("GetItemDate")
		wf_getitemdate()					
	case "GetItemString"
		//wf_testitem("GetItemString")
		wf_getitemstring()		
	//case "GetItemXXX"		
	case "SetItem"
		//wf_testitem("SetItem")
		wf_setitem()		
	case "GetItemStatus"
	case "SetItemStatus"
		//wf_testitem("GetItemStatus and SetItemStatus")
		wf_getsetitemstatus()		
	case "GetSQLSelect"
		//wf_testitem("GetSQLSelect")
		wf_getsqlselect()	
	case "SetSQLSelect"	
		//wf_testitem("SetSQLSelect")	
		wf_setsqlselect()	 
	case "ImportFile"
		//wf_testitem("ImportFile")
		wf_importfile()		
	case "ImportString"
		//wf_testitem("ImportString")
		wf_importstring()		
	case "ImportClipboard"
		//wf_testitem("ImportClipboard")
		wf_importclipboard()		
	case "DeleteRow"	
		//wf_testitem("DeleteRow")	
		wf_deleterow()			
	case "InsertRow"
		//wf_testitem("InsertRow")
		wf_insertrow()				
//	case "ReselectRow"
//		dw_1.dataobject = "d_sharedata_update"
//		dw_1.SetTransObject(sqlca)
//		dw_1.retrieve()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		la_value = dw_1.ReselectRow(dw_1.GetRow())
//		wf_output('1',f_string(la_value),'dw_1.ReselectRow(dw_1.GetRow())')		
	case "Reset"
		//wf_testitem("Reset")
		wf_reset()		
	case "Retrieve"
		//wf_testitem("Retrieve")
		wf_retrieve()				
	case "RowsCopy"
		//wf_testitem("RowsCopy")
		wf_rowscopy()		
	case "RowsDiscard"		
		//wf_testitem("RowsDiscard")
		wf_rowsdiscard()				
	case "RowsMove"
		//wf_testitem("RowsMove")
		wf_rowsmove()		
	case "SetSort"
	case "Sort"
		//wf_testitem("SetSort and Sort")
		wf_sort()		
	case "SetValue"
		//wf_testitem("SetValue")
		wf_setvalue()		
	case "Update"
		//wf_testitem("Update")
		wf_update()		
end choose
end subroutine

public subroutine wf_init ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

wf_resume()

dw_1.dataobject = "d_sharedata_grid"
dw_1.SetTransObject(sqlca)
dw_1.setfilter("")
dw_1.setsort("")

dw_1.SetSQLSelect(is_sql)
dw_1.retrieve()

dw_1.sharedataoff()
dw_2.dataobject = ""

end subroutine

public subroutine wf_resume ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
int li_result
string ls_string 
ls_string = "445	bbb	Lull	100~r~n&
453	Andrew	Rabkin	100~r~n&
467	James	Klobucher	200~r~n&
479	bbb	Siperstein	100~r~n&
501	David	Scott	100~r~n&
582	Peter	Samuels	100~r~n&
586	James	Coleman	300~r~n&
591	Irene	Barletta	400~r~n&
604	Albert	Wang	100~r~n&
641	Thomas	Powell	200~r~n&
667	Mary	Garcia	200~r~n&
690	Kathleen	Poitras	200~r~n&
703	Jose	Martinez	500~r~n&
750	Jane	Braun	500~r~n&
757	Denis	Higgins	300~r~n&
839	Dean	Marshall	100~r~n&
856	Samuel	Singer	200~r~n&
862	John	Sheffield	100~r~n&
868	Felicia	Kuo	500~r~n&
879	Kristen	Coe	300~r~n&
888	Doug	Charlton	400~r~n&
902	Judy	Snow	200~r~n&
913	Ken	Martel	200~r~n&
921	Charles	Crowley	500~r~n&
930	Ann	Taylor	200~r~n&
949	Pamela	Savarino	200~r~n&
958	Thomas	Sisson	100~r~n&
992	Joyce	Butterfield	400~r~n&
1013	Joseph	Barker	500~r~n&
1021	Paul	Sterling	200~r~n&
1039	Shih Lin	Chao	200~r~n&
1062	Barbara	Blaikie	400~r~n&
1090	Susan	Smith	100~r~n&
1101	Mark	Preston	200~r~n&
1142	Alison	Clark	200~r~n&
1162	Kevin	Goggin	200~r~n&
1191	Matthew	Bucceri	400~r~n&
1250	Emilio	Diaz	100~r~n&
1293	Mary Anne	Shea	300~r~n&
1336	Janet	Bigelow	300~r~n&
1390	Jennifer	Litton	300~r~n&
1446	Caroline	Yeung	200~r~n&
1483	John	Letiecq	300~r~n&
1507	Ruth	Wetherby	400~r~n&
1570	Anthony	Rebeiro	500~r~n&
1576	Scott	Evans	400~r~n&
1596	Catherine	Pickett	200~r~n&
1607	Mark 	Morris	400~r~n&
1615	Sheila	Romero	500~r~n&
1643	Elizabeth	Lambert	400~r~n&
1658	Michael	Lynch	500~r~n&
1684	Janet	Hildebrand	400~r~n&
1740	Robert	Nielsen	400~r~n&
1751	Alex	Ahmed	400~r~n&
999	Dorothy	Sullivan	100~r~n&
33	two	table	333~r~n&
22	two	table	222"
delete employee_update;

if sqlca.sqlcode = 0 then
	commit;
	dw_1.dataobject = 'd_sharedata_update'
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	li_result = dw_1.importstring(ls_string)
	//li_result = dw_1.importfile("employee_update_bak.txt", 2)
//	if li_result = -5 then
//		messagebox('File not find','please copy file of employee_update_bak.txt to ' + GetCurrentDirectory())
//		halt close
//	end if
//	li_result = dw_bak.rowscopy(1,dw_bak.rowcount(),Primary!,dw_1,1,Primary!)
//	if li_result<> 1 then 
//		messagebox('failed','resume data failed')
//	end if
	if dw_1.update() = 1 then
		commit;
//		wf_output("Init success!", true)
	else
		rollback;
	end if
else
	rollback;
end if
end subroutine

public subroutine wf_filter ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		int li_rowcount
		any la_value
		wf_init()
		wf_output('filter','-1',f_string(dw_1.sharedata(dw_2)),"dw_1.sharedata(dw_2)")
		dw_2.dataobject = dw_1.dataobject	
		wf_output('filter','1',f_string(dw_1.sharedata(dw_2)),"dw_1.sharedata(dw_2)")
		//dw_1 filter		
		li_rowcount = dw_1.rowcount()
		la_value = dw_1.setfilter("emp_id > 300")
		wf_Output('filter','1',f_string(la_value),"dw_1.setfilter('emp_id > 300') = ")
		la_value = dw_1.filter()
		wf_Output('filter','1',f_string(la_value),"dw_1.filter() =")
		wf_output('filter',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.filteredcount()),'dw_1.filteredcount()')
		wf_output('filter',string(li_rowcount - dw_2.rowcount()),f_string(dw_2.filteredcount()),'dw_2.filteredcount()')
		
		//dw_2 filter
		la_value = dw_2.setfilter("emp_fname = Melissa")
		wf_Output('filter','-1',f_string(la_value),"dw_2.setfilter('emp_fname = Melissa') = ")
		la_value = dw_2.filter()
		wf_output('filter','1',f_string(la_value),"dw_2.filter() =")
		wf_output('filter',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.filteredcount()),'dw_1.filteredcount()')
		wf_output('filter',string(li_rowcount - dw_2.rowcount()),f_string(dw_2.filteredcount()),'dw_2.filteredcount()')

		//error filter expression
		la_value = dw_2.setfilter("emp_fname = 'Melissa'")
		wf_Output('filter','1',f_string(la_value),'dw_2.setfilter("emp_fname = ~'Melissa~'") = ')		
		la_value = dw_2.filter()
		wf_output('filter','1',f_string(la_value),"dw_2.filter() =")
		wf_output('filter',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.filteredcount()),'dw_1.filteredcount()')
		wf_output('filter',string(li_rowcount - dw_2.rowcount()),f_string(dw_2.filteredcount()),'dw_2.filteredcount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject	
		wf_output('filter','1',f_string(dw_1.sharedata(dw_2)),"dw_1.sharedata(dw_2)")
		wf_output('filter','1',f_string(dw_1.sharedataoff()),'dw_1.sharedataoff()')
		//dw_1 filter		
		li_rowcount = dw_1.rowcount()
		la_value = dw_1.setfilter("emp_id > 300")
		wf_Output('filter','1',f_string(la_value),"dw_1.setfilter('emp_id > 300') = ")
		la_value = dw_1.filter()
		wf_Output('filter','1',f_string(la_value),"dw_1.filter() =")
		wf_output('filter',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.filteredcount()),'dw_1.filteredcount()')
		wf_output('filter','0',f_string(dw_2.filteredcount()),'dw_2.filteredcount()')
		
		//dw_2 filter
		la_value = dw_2.setfilter("emp_fname = Melissa")
		wf_Output('filter','-1',f_string(la_value),"dw_2.setfilter('emp_fname = Melissa') = ")
		la_value = dw_2.filter()
		wf_output('filter','1',f_string(la_value),"dw_2.filter() =")
		wf_output('filter',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.filteredcount()),'dw_1.filteredcount()')
		wf_output('filter','0',f_string(dw_2.filteredcount()),'dw_2.filteredcount()')

		//error filter expression
		la_value = dw_2.setfilter("emp_fname = 'Melissa'")
		wf_Output('filter','1',f_string(la_value),'dw_2.setfilter("emp_fname = ~'Melissa~'") = ')		
		la_value = dw_2.filter()
		wf_output('filter','1',f_string(la_value),"dw_2.filter() =")
		wf_output('filter',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.filteredcount()),'dw_1.filteredcount()')
		wf_output('filter','0',f_string(dw_2.filteredcount()),'dw_2.filteredcount()')
end subroutine

public subroutine wf_getttemdate ();
end subroutine

public subroutine wf_getitemdate ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		la_value = dw_1.GetItemDate(1,"start_date")
		wf_output('getitemdata',f_string(Date(1988-04-18)),f_string(la_value),"dw_1.GetItemDate(1,~"start_date~") = ")
		
		la_value = dw_2.GetItemDate(1,"start_date")
		wf_output('getitemdata',f_string(Date(1988-04-18)),f_string(la_value),"dw_1.GetItemDate(1,~"start_date~") = ")
		//pb error		
		dw_1.DeleteRow(0)
		la_value = dw_1.GetItemDate(1,"start_date",Delete!,false)
		wf_output('getitemdata',f_string(Date(1988-04-18)),f_string(la_value),"dw_1.GetItemString(1,~"start_date~",Delete,True) = ")
		la_value = dw_2.GetItemDate(1,"start_date",Delete!,false)
		wf_output('getitemdata',f_string(Date(1988-04-18)),f_string(la_value),"dw_2.GetItemString(1,~"start_date~",Delete,True) = ")
		
		dw_1.setfilter("emp_id >400")
		dw_1.filter()
		la_value = dw_1.GetItemDate(1,"start_date",Filter!,false)
		wf_output('getitemdata',f_string(Date(1989-11-20)),f_string(la_value),"dw_1.GetItemString(1,~"start_date~",Filter!,True) = ")
		la_value = dw_2.GetItemDate(1,"start_date",Filter!,false)
		wf_output('getitemdata',f_string(Date(1989-11-20)),f_string(la_value),"dw_2.GetItemString(1,~"start_date~",Filter!,True) = ")
end subroutine

public subroutine wf_getitemstring ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		la_value = dw_1.GetItemString(1,"emp_fname")
		wf_output('getitemstring','Melissa',f_string(la_value),"dw_1.GetItemString(1,~"emp_fname~") = ")
		la_value = dw_2.GetItemString(1,"emp_fname")
		wf_output('getitemstring','Melissa',f_string(la_value),"dw_2.GetItemString(1,~"emp_fname~") = ")
		
		dw_1.DeleteRow(0)
		la_value = dw_1.GetItemString(1,"emp_fname",Delete!,True)
		wf_output('getitemstring','Melissa',f_string(la_value),"dw_1.GetItemString(1,~"emp_fname~",Delete,True) = ")
		la_value = dw_2.GetItemString(1,"emp_fname",Delete!,True)
		wf_output('getitemstring','Melissa',f_string(la_value),"dw_2.GetItemString(1,~"emp_fname~",Delete,True) = ")
		
		dw_1.setfilter("emp_id >400")
		dw_1.filter()
		la_value = dw_1.GetItemString(1,"emp_fname",Filter!,True)
		wf_output('getitemstring','aaa',f_string(la_value),"dw_1.GetItemString(1,~"emp_fname~",Filter!,True) = ")
		la_value = dw_2.GetItemString(1,"emp_fname",Filter!,True)
		wf_output('getitemstring','aaa',f_string(la_value),"dw_2.GetItemString(1,~"emp_fname~",Filter!,True) = ")
end subroutine

public subroutine wf_setitem ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2) 
		wf_Output('setitem','1',f_string(dw_1.SetItem(dw_1.GetRow(),"emp_fname","sharedata")),"dw_1.SetItem(dw_1.GetRow(),~"emp_fname~",~"sharedata~") = ")
		wf_output('setitem','sharedata',f_string(dw_1.getitemstring(dw_1.GetRow(),"emp_fname")),"dw_1.GetItemString(dw_1.GetRow(),~"emp_fname~")")
		wf_output('setitem','sharedata',f_string(dw_2.GetItemString(dw_2.GetRow(),"emp_fname")),"dw_2.GetItemString(dw_2.GetRow(),~"emp_fname~")")
		
		wf_Output('setitem','1',f_string(dw_2.SetItem(dw_2.GetRow(),"emp_fname","sharedata1")),"dw_2.SetItem(dw_1.GetRow(),~"emp_fname~",~"sharedata1~") = ")
		wf_output('setitem','sharedata1',f_string(dw_1.getitemstring(dw_1.GetRow(),"emp_fname")),"dw_1.GetItemString(dw_1.GetRow(),~"emp_fname~")")
		wf_output('setitem','sharedata1',f_string(dw_2.getitemstring(dw_2.GetRow(),"emp_fname")),"dw_2.GetItemString(dw_2.GetRow(),~"emp_fname~")")
		
		wf_Output('setitem','1',f_string(dw_1.SetItem(dw_1.GetRow(),"emp_fname","sharedata")),"dw_.SetItem(dw_1.GetRow(),~"emp_fname~",~"sharedata~") = ")
		wf_output('setitem','sharedata',f_string(dw_1.getitemstring(dw_1.GetRow(),"emp_fname")),"dw_1.GetItemString(dw_1.GetRow(),~"emp_fname~")")
		wf_output('setitem','sharedata',f_string(dw_2.getitemstring(dw_2.GetRow(),"emp_fname")),"dw_2.GetItemString(dw_2.GetRow(),~"emp_fname~")")
		
		wf_Output('setitem','1',f_string(dw_2.SetItem(dw_2.GetRow(),"emp_fname","sharedata1")),"dw_2.SetItem(dw_1.GetRow(),~"emp_fname~",~"sharedata1~") = ")
		wf_output('setitem','sharedata1',f_string(dw_1.getitemstring(dw_1.GetRow(),"emp_fname")),"dw_1.GetItemString(dw_1.GetRow(),~"emp_fname~")")
		wf_output('setitem','sharedata1',f_string(dw_2.getitemstring(dw_2.GetRow(),"emp_fname")),"dw_2.GetItemString(dw_2.GetRow(),~"emp_fname~")")
end subroutine

public subroutine wf_getsetitemstatus ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)

		//primary! 
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",Primary!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",Primary!) = ")		
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",Primary!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",Primary!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",Primary!,DataModified!)),"dw_1.SetItemStatus(dw_1.GetRow(),~"emp_fname~",Primary!,DataModified!) = ")		
		wf_output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",Primary!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",Primary!) =")
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",Primary!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",Primary!) = ")		
		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",Primary!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",Primary!) = ")		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",Primary!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",Primary!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",Primary!,Notmodified!)),"dw_2.SetItemStatus(dw_2.GetRow(),~"emp_fname~",Primary!,Notmodified!) = ")		
		wf_output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",Primary!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",Primary!) =")
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",Primary!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",Primary!) = ")		
		
		wf_output('getsetitemstatus','-1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",Primary!,NewModified!)),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",Primary!,NewModified!) =")		
		wf_output('getsetitemstatus','-1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",Primary!,NewModified!)),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",Primary!,NewModified!) =")		
		 
		wf_output('getsetitemstatus','-1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",Primary!,New!)),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",Primary!,New!) =")
		wf_output('getsetitemstatus','-1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",Primary!,New!)),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",Primary!,New!) =")
		
		//delete!
		dw_1.deleterow(0)
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) = ")		
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",delete!,DataModified!)),"dw_1.SetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!,DataModified!) = ")		
		wf_output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) =")
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) = ")		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",delete!,Notmodified!)),"dw_2.SetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!,Notmodified!) = ")		
		wf_output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) =")
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		
		wf_output('getsetitemstatus','-1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",delete!,NewModified!)),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",delete!,NewModified!) =")		
		wf_output('getsetitemstatus','-1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",delete!,NewModified!)),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",delete!,NewModified!) =")		
		
		wf_output('getsetitemstatus','-1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",delete!,New!)),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",delete!,New!) =")
		wf_output('getsetitemstatus','-1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",delete!,New!)),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",delete!,New!) =")
		
		dw_1.deleterow(0)
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) = ")		
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",delete!,DataModified!)),"dw_1.SetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!,DataModified!) = ")		
		wf_output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) =")
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) = ")		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",delete!,Notmodified!)),"dw_2.SetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!,Notmodified!) = ")		
		wf_output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",delete!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",delete!) =")
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",delete!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",delete!) = ")		
		
		wf_output('getsetitemstatus','-1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",delete!,NewModified!)),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",delete!,NewModified!) =")		
		wf_output('getsetitemstatus','-1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",delete!,NewModified!)),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",delete!,NewModified!) =")		
		
		wf_output('getsetitemstatus','-1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",delete!,New!)),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",delete!,New!) =")
		wf_output('getsetitemstatus','-1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",delete!,New!)),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",delete!,New!) =")
				
		//filter!
		dw_2.setfilter("emp_id >300")
		dw_2.filter()
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) = ")		
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",filter!,DataModified!)),"dw_1.SetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!,DataModified!) = ")		
		wf_output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) =")
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) = ")		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",filter!,Notmodified!)),"dw_2.SetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!,Notmodified!) = ")		
		wf_output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) =")
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		
		la_value = dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",filter!,NewModified!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",filter!,NewModified!) =")		
		la_value = dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",filter!,NewModified!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",filter!,NewModified!) =")		
		
		la_value = dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",filter!,New!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",filter!,New!) =")
		la_value = dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",filter!,New!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",filter!,New!) =")
		
		dw_2.setfilter("emp_id > 400")
		dw_2.filter()
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) = ")		
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",filter!,DataModified!)),"dw_1.SetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!,DataModified!) = ")		
		wf_output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) =")
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) = ")		
		wf_Output('getsetitemstatus','DataModified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		//SetItemStatus DataModified!
		wf_Output('getsetitemstatus','1',f_string(dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",filter!,Notmodified!)),"dw_2.SetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!,Notmodified!) = ")		
		wf_output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_1.GetItemStatus(dw_1.GetRow(),"emp_fname",filter!)),"dw_1.GetItemStatus(dw_1.GetRow(),~"emp_fname~",filter!) =")
		wf_Output('getsetitemstatus','Notmodified!',f_dwstatustostring(dw_2.GetItemStatus(dw_2.GetRow(),"emp_fname",filter!)),"dw_2.GetItemStatus(dw_2.GetRow(),~"emp_fname~",filter!) = ")		
		
		la_value = dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",filter!,NewModified!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",filter!,NewModified!) =")		
		la_value = dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",filter!,NewModified!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",filter!,NewModified!) =")		
		
		la_value = dw_1.SetItemStatus(dw_1.GetRow(),"emp_fname",filter!,New!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_1.SetItemStauts(dw_1.GetRow(),~"emp_fname~",filter!,New!) =")
		la_value = dw_2.SetItemStatus(dw_2.GetRow(),"emp_fname",filter!,New!)
		wf_output('getsetitemstatus','-1',f_string(la_value),"dw_2.SetItemStauts(dw_2.GetRow(),~"emp_fname~",filter!,New!) =")
end subroutine

public subroutine wf_getsqlselect ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		string ls_value
		int li_pos		
		ls_value = '  SELECT "employee"."dept_id",   ~r~n&
         "employee"."emp_id",   ~r~n&
         "employee"."manager_id",   ~r~n&
         "employee"."emp_fname",   ~r~n&
         "employee"."emp_lname",   ~r~n&
         "employee"."city",   ~r~n&
         "employee"."start_date",   ~r~n&
         "employee"."zip_code",   ~r~n&
         "employee"."street",   ~r~n&
         "employee"."bene_health_ins",   ~r~n&
         "employee"."bene_life_ins",   ~r~n&
         "employee"."mydatetime",   ~r~n&
         "employee"."mydecimal",   ~r~n&
         "employee"."mytime"  ~r~n&
    FROM "employee"    ~r~n'	 
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		wf_Output('getsqlselect',wf_ds(wf_ds(ls_value,' '),'~n'),wf_ds(wf_ds(dw_1.GetSQLSelect(),' '),'~n'),"dw_1.GetSQLSelect() = ")
	 	wf_Output('getsqlselect',wf_ds(wf_ds(ls_value,' '),'~n'),wf_ds(wf_ds(dw_2.GetSQLSelect(),' '),'~n'),"dw_2.GetSQLSelect() = ")
end subroutine

public subroutine wf_setsqlselect ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		string newsql,oldsql,ls_value
		int li_pos
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		newsql = dw_1.GetSQLSelect() + 'where emp_id >300'
		la_value = dw_1.SetSQLSelect(newsql)		
		dw_1.Retrieve()
		wf_output('setsqlselect','1',f_string(la_value),'dw_1.SetSQLSelect(~'select "employee"."dept_id" from "employee")~' = ')
		wf_output('setsqlselect',wf_ds(wf_ds(newsql,' '),'~n'),wf_ds(wf_ds(dw_1.GetSQLSelect(),' '),'~n'),'dw_1.GetSQLSelect() =')
		wf_output('setsqlselect',wf_ds(wf_ds(newsql,' '),'~n'),wf_ds(wf_ds(dw_1.GetSQLSelect(),' '),'~n'),'dw_2.GetSQLSelect() =')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		newsql = dw_2.GetSQLSelect() + 'where emp_id >300'
		la_value = dw_2.SetSQLSelect(newsql)
		dw_1.Retrieve()
		wf_output('setsqlselect','1',f_string(la_value),'dw_1.SetSQLSelect(~'select "employee"."dept_id" from "employee")~' = ')
		wf_output('setsqlselect',wf_ds(wf_ds(newsql,' '),'~n'),wf_ds(wf_ds(dw_1.GetSQLSelect(),' '),'~n'),'dw_1.GetSQLSelect() =')
		wf_output('setsqlselect',wf_ds(wf_ds(newsql,' '),'~n'),wf_ds(wf_ds(dw_2.GetSQLSelect(),' '),'~n'),'dw_2.GetSQLSelect() =')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		newsql = ""
		oldsql = dw_1.GetSQLSelect()
		la_value = dw_1.SetSQLSelect(newsql)
		dw_1.Retrieve()
		wf_output('setsqlselect','-1',f_string(la_value),'dw_1.SetSQLSelect("'+newsql+'") = ')
		wf_output('setsqlselect',wf_ds(wf_ds(oldsql,' '),'~n'),wf_ds(wf_ds(dw_1.GetSQLSelect(),' '),'~n'),'dw_1.GetSQLSelect() =')
		wf_output('setsqlselect',wf_ds(wf_ds(oldsql,' '),'~n'),wf_ds(wf_ds(dw_2.GetSQLSelect(),' '),'~n'),'dw_2.GetSQLSelect() =')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		newsql = ""
		oldsql = dw_1.GetSQLSelect()
		la_value = dw_2.SetSQLSelect(newsql)
		dw_1.Retrieve()
		wf_output('setsqlselect','-1',f_string(la_value),'dw_1.SetSQLSelect("'+newsql+'") = ')
		wf_output('setsqlselect',wf_ds(wf_ds(oldsql,' '),'~n'),wf_ds(wf_ds(dw_1.GetSQLSelect(),' '),'~n'),'dw_1.GetSQLSelect() =')
		wf_output('setsqlselect',wf_ds(wf_ds(oldsql,' '),'~n'),wf_ds(wf_ds(dw_2.GetSQLSelect(),' '),'~n'),'dw_2.GetSQLSelect() =')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		oldsql = dw_1.GetSQLSelect()
		dw_1.sharedataoff()
		wf_output('setsqlselect',wf_ds(wf_ds(oldsql,' '),'~n'),wf_ds(wf_ds(dw_1.GetSQLSelect(),' '),'~n'),'dw_1.GetSQLSelect() =')
		wf_output('setsqlselect',wf_ds(wf_ds(oldsql,' '),'~n'),wf_ds(wf_ds(dw_2.GetSQLSelect(),' '),'~n'),'dw_2.GetSQLSelect() =')
end subroutine

public subroutine wf_importfile ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		int li_rowcount,li_value
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		li_value = dw_1.ImportFile("sharedata.txt")
		if li_value <> -5 then
		wf_output('importfile','2',f_string(li_value),"dw_1.ImportFile(sharedata.txt) = ")		
		wf_output('importfile',string(li_rowcount + 2),f_string(dw_1.rowcount()),"dw_1.rowcount()")
		wf_output('importfile',string(li_rowcount + 2),f_string(dw_2.rowcount()),"dw_2.rowcount()")
		end if
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		li_value = dw_2.ImportFile("sharedata.txt")
		if li_value <> -5 then
		wf_output('importfile','2',f_string(li_value),"dw_2.ImportFile(sharedata.txt) = ")		
		wf_output('importfile',string(li_rowcount + 2),f_string(dw_1.rowcount()),"dw_1.rowcount()")
		wf_output('importfile',string(li_rowcount + 2),f_string(dw_2.rowcount()),"dw_2.rowcount()")
		end if 
end subroutine

public subroutine wf_importstring ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		int li_rowcount
		string ls_importstring
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
//		ls_importstring = "400	184	1576	Melissa	Espinoza	Stow	04/18/1988	01775    	112 Apple Tree Way	Y	Y	01/01/2000 10:10:10	45.3100	10:10:10"
		ls_importstring = "400	184	1576	Melissa	Espinoza	Stow"
		la_value = dw_1.ImportString(ls_importstring)
		wf_Output('importstring','1',f_string(la_value),"dw_1.ImportString(" + ls_importstring + ") = ")
		wf_output('importstring',string(li_rowcount + 1),f_string(dw_1.rowcount()),'dw_1.rowcount()')
		wf_output('importstring',string(li_rowcount + 1),f_string(dw_2.rowcount()),'dw_2.rowcount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		//ls_importstring = "400	184	1576	Melissa	Espinoza	Stow	04/18/1988	01775    	112 Apple Tree Way	Y	Y	01/01/2000 10:10:10	45.3100	10:10:10"
		ls_importstring = "400	184	1576	Melissa	Espinoza	Stow"
		la_value = dw_2.ImportString(ls_importstring)
		wf_Output('importstring','1',f_string(la_value),"dw_2.ImportString(" + ls_importstring + ") = ")
		wf_output('importstring',string(li_rowcount + 1),f_string(dw_1.rowcount()),'dw_1.rowcount()')
		wf_output('importstring',string(li_rowcount + 1),f_string(dw_2.rowcount()),'dw_2.rowcount()')
end subroutine

public subroutine wf_importclipboard ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		int li_rowcount
		string ls_importstring
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		ls_importstring = "400	184	1576	Melissa	Espinoza	Stow"
		Clipboard(ls_importstring)
		la_value = dw_1.ImportClipboard()
		wf_Output('importclipboard','1',f_string(la_value),"dw_1.ImportClipboard() = ")
		wf_output('importclipboard',string(li_rowcount + 1),f_string(dw_1.rowcount()),'dw_1.rowcount()')
		wf_output('importclipboard',string(li_rowcount + 1),f_string(dw_2.rowcount()),'dw_2.rowcount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		ls_importstring = "400	184	1576	Melissa	Espinoza	Stow"
		Clipboard(ls_importstring)
		la_value = dw_2.ImportClipboard()
		wf_Output('importclipboard','1',f_string(la_value),"dw_2.ImportClipboard() = ")
		wf_output('importclipboard',string(li_rowcount + 1),f_string(dw_1.rowcount()),'dw_1.rowcount() =')
		wf_output('importclipboard',string(li_rowcount + 1),f_string(dw_2.rowcount()),'dw_2.rowcount() =')
end subroutine

public subroutine wf_deleterow ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		int li_currentrow,li_rowcount
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_currentrow = dw_1.getrow()
		li_rowcount = dw_1.RowCount()
		la_value = dw_1.deleterow(li_currentrow)
		wf_Output('deleterow','1',f_string(la_value),"dw_1.deleterow(" + string(li_currentrow) + ") = ")
		wf_Output('deleterow',string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount() =')
		wf_Output('deleterow',string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount() =')
		wf_output('deleterow','1',f_string(dw_1.deletedcount()),'dw_1.deleterowcount() =')
		wf_output('deleterow','1',f_string(dw_2.deletedcount()),'dw_2.deleterowcount() =')
		
		li_currentrow = dw_1.getrow()
		li_rowcount = dw_1.RowCount()
		la_value = dw_2.deleterow(li_currentrow)
		wf_Output('deleterow','1',f_string(la_value),"dw_2.deleterow(" + string(li_currentrow) + ") = ")
		wf_Output('deleterow',string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount() =')
		wf_Output('deleterow',string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount() =')
		wf_output('deleterow','2',f_string(dw_1.deletedcount()),'dw_1.deleterowcount() =')
		wf_output('deleterow','2',f_string(dw_2.deletedcount()),'dw_2.deleterowcount() =')
end subroutine

public subroutine wf_insertrow ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		any la_value
		int li_currentrow,li_rowcount
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.rowcount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_1.InsertRow(0)
		wf_Output('insertrow',string(li_rowcount + 1),f_string(la_value),"dw_1.InsertRow(0) =")		
		la_value = dw_1.InsertRow(li_currentrow)		
		wf_output('insertrow','1',f_string(la_value),'dw_1.InsertRow(' + string(li_currentrow) + ')')
		wf_output('insertrow','2',f_string(dw_1.GetRow()),"dw_1.GetRow() =")
		wf_output('insertrow','1',f_string(dw_2.GetRow()),"dw_2.GetRow() =")
		wf_output('insertrow',string(li_rowcount + 2),f_string(dw_1.RowCount()),"dw_1.RowCount() =")
		wf_output('insertrow',string(li_rowcount + 2),f_string(dw_2.RowCount()),"dw_2.RowCount() =")
		
		li_rowcount = dw_2.rowcount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_2.InsertRow(0)
		wf_Output('insertrow',string(li_rowcount + 1),f_string(la_value),"dw_2.InsertRow(0) =")		
		la_value = dw_2.InsertRow(li_currentrow)
		wf_output('insertrow','2',f_string(la_value),'dw_2.InsertRow(' + string(li_currentrow) + ')')
		wf_output('insertrow','3',f_string(dw_1.GetRow()),"dw_1.GetRow() =")
		wf_output('insertrow','1',f_string(dw_2.GetRow()),"dw_2.GetRow() =")
		wf_output('insertrow',string(li_rowcount + 2),f_string(dw_1.RowCount()),"dw_1.RowCount() =")
		wf_output('insertrow',string(li_rowcount + 2),f_string(dw_2.RowCount()),"dw_2.RowCount() =")
		

end subroutine

public subroutine wf_reset ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		int li_rowcount
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		la_value = dw_1.Reset()
		wf_Output('reset','1',f_string(la_value),"dw_2.Reset() = ")
		wf_output('reset','0',f_string(dw_1.rowcount()),'dw_1.rowcount()')
		wf_output('reset','0',f_string(dw_2.rowcount()),'dw_2.rowcount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		la_value = dw_2.Reset()
		wf_Output('reset','1',f_string(la_value),"dw_2.Reset() = ")
		wf_output('reset','0',f_string(dw_1.rowcount()),'dw_1.rowcount()')
		wf_output('reset','0',f_string(dw_2.rowcount()),'dw_2.rowcount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		dw_1.sharedataoff()
		la_value = dw_1.Reset()
		wf_Output('reset','1',f_string(la_value),"dw_2.Reset() = ")
		wf_output('reset','0',f_string(dw_1.rowcount()),'dw_1.rowcount()')
		wf_output('reset','0',f_string(dw_2.rowcount()),'dw_2.rowcount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		dw_1.sharedataoff()
		la_value = dw_2.Reset()
		wf_Output('reset','1',f_string(la_value),"dw_2.Reset() = ")
		wf_output('reset',string(li_rowcount),f_string(dw_1.rowcount()),'dw_1.rowcount()')
		wf_output('reset','0',f_string(dw_2.rowcount()),'dw_2.rowcount()')
end subroutine

public subroutine wf_retrieve ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		int li_rowcount
		wf_init()
		dw_1.dataobject = "d_sharedata_grid"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.sharedata(dw_2)
		la_value = dw_1.Retrieve()
		li_rowcount = dw_1.rowcount()
		wf_output('retrieve',string(li_rowcount),f_string(la_value),"dw_1.retrieve() =")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.rowcount() = ")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.rowcount() = ")
		
		wf_init()
		dw_1.dataobject = "d_sharedata_grid"
		dw_2.dataobject = dw_1.dataobject		
		dw_1.sharedata(dw_2)
		la_value = dw_1.Retrieve()
		li_rowcount = dw_1.rowcount()
		wf_output('retrieve','-1',f_string(la_value),"dw_1.retrieve() =")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.rowcount() = ")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.rowcount() = ")
		
		wf_init()
		dw_1.dataobject = ""
		dw_2.dataobject = dw_1.dataobject		
		dw_1.sharedata(dw_2)
		la_value = dw_1.Retrieve()
		li_rowcount = dw_1.rowcount()
		wf_output('retrieve','-1',f_string(la_value),"dw_1.retrieve() =")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.rowcount() = ")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.rowcount() = ")
		
		wf_init()
		dw_1.dataobject = "d_sharedata_grid"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.sharedata(dw_2)
		la_value = dw_2.Retrieve()
		li_rowcount = dw_1.rowcount()
		wf_output('retrieve',string(li_rowcount),f_string(la_value),"dw_2.retrieve() =")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.rowcount() = ")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.rowcount() = ")
		
		wf_init()
		dw_1.dataobject = "d_sharedata_grid"
		dw_2.dataobject = dw_1.dataobject		
		dw_1.sharedata(dw_2)
		la_value = dw_2.Retrieve()
		li_rowcount = dw_1.rowcount()
		wf_output('retrieve','-1',f_string(la_value),"dw_2.retrieve() =")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.rowcount() = ")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.rowcount() = ")
		
		wf_init()
		dw_1.dataobject = ""
		dw_2.dataobject = dw_1.dataobject		
		dw_1.sharedata(dw_2)
		la_value = dw_2.Retrieve()
		li_rowcount = dw_1.rowcount()
		wf_output('retrieve','-1',f_string(la_value),"dw_2.retrieve() =")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.rowcount() = ")
		wf_Output('retrieve',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.rowcount() = ")
end subroutine

public subroutine wf_rowscopy ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

		any la_value
		int li_rowcount
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		//dw_1 rowscopy from dw_1's primary to dw_1's primary
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		la_value = dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Primary!)
		wf_Output('rowscopy','1',f_string(la_value),"dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Primary!) = ")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_1.RowCount()),"dw_1.RowCount()")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_2.RowCount()),"dw_2.RowCount()")
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Delete!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.deletedcount()),'dw_1.deletedcount()')
//		wf_output('rowscopy','0',f_string(dw_2.deletedcount()),'dw_2.deletedcount()')
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Filter!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.FilteredCount()),"dw_2.FilteredCount()")
//		wf_output('rowscopy','0',f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		//dw_1 rowscopy from dw_1's primary to dw_2's primary
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		la_value = dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Primary!)
		wf_Output('rowscopy','1',f_string(la_value),"dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Primary!) = ")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_1.RowCount()),"dw_1.RowCount()")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_2.RowCount()),"dw_2.RowCount()")
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Delete!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.deletedcount()),'dw_1.deletedcount()')
//		wf_output('rowscopy','0',f_string(dw_2.deletedcount()),'dw_2.deletedcount()')
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Filter!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.FilteredCount()),"dw_2.FilteredCount()")
//		wf_output('rowscopy','0',f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		//dw_2 rowscopy form dw_1's primary to dw_1' primary
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		la_value = dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Primary!)
		wf_Output('rowscopy','1',f_string(la_value),"dw_2.RowsCopy(dw_2.GetRow(),dw_2.RowCount(),Primary!,dw_1,1,Primary!) = ")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_1.RowCount()),"dw_1.RowCount()")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_2.RowCount()),"dw_2.RowCount()")
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Delete!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_2.RowsCopy(dw_2.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.deletedcount()),'dw_1.deletedcount()')
//		wf_output('rowscopy','0',f_string(dw_2.deletedcount()),'dw_2.deletedcount()')
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Filter!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.FilteredCount()),"dw_2.FilteredCount()")
//		wf_output('rowscopy','0',f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		//dw_2 rowscopy from dw_1's primary to dw_2's primary
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		la_value = dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Primary!)
		wf_Output('rowscopy','1',f_string(la_value),"dw_2.RowsCopy(dw_2.GetRow(),dw_2.RowCount(),Primary!,dw_2,1,Primary!) = ")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_1.RowCount()),"dw_1.RowCount()")
		wf_output('rowscopy',string(li_rowcount * 2),f_string(dw_2.RowCount()),"dw_2.RowCount()")
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Delete!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_2.RowsCopy(dw_2.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.deletedcount()),'dw_1.deletedcount()')
//		wf_output('rowscopy','0',f_string(dw_2.deletedcount()),'dw_2.deletedcount()')
		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		li_rowcount = dw_1.rowcount()
//		la_value = dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Filter!)
//		wf_Output('rowscopy','1',f_string(la_value),"dw_2.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_2,1,Delete!) = ")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.RowCount()),"dw_1.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_2.RowCount()),"dw_2.RowCount()")
//		wf_output('rowscopy',string(li_rowcount),f_string(dw_1.FilteredCount()),"dw_2.FilteredCount()")
//		wf_output('rowscopy','0',f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
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

public subroutine wf_rowsmove ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		int li_rowcount, li_currentrow, li_rows
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.RowCount()
		la_value = dw_1.RowsMove(1,dw_1.RowCount(),Primary!,dw_1,1,Delete!)
		wf_Output('rowsmove','1',f_string(la_value),"dw_1.RowsMove(1,dw_1.RowCount(),Primary!,dw_1,1,Delete!) = ")
		wf_output('rowsmove','0',f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsmove','0',f_string(dw_2.RowCount()),'dw_2.RowCount()')
		wf_output('rowsmove',string(li_rowcount),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		wf_output('rowsmove',string(li_rowcount),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')

		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.RowCount()
		la_value = dw_1.RowsMove(1,dw_1.RowCount(),Primary!,dw_1,1,Filter!)
		wf_Output('rowsmove','1',f_string(la_value),"dw_1.RowsMove(1,dw_1.RowCount(),Primary!,dw_1,1,Filter!) = ")
		wf_output('rowsmove','0',f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsmove','0',f_string(dw_2.RowCount()),'dw_2.RowCount()')
		wf_output('rowsmove',string(li_rowcount),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		wf_output('rowsmove',string(li_rowcount),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		dw_1.deleterow(dw_1.getrow())
		dw_1.deleterow(dw_1.getrow())
		dw_1.deleterow(dw_1.getrow())
		li_rowcount = dw_1.RowCount()
		li_rows = dw_1.DeletedCount()
		la_value = dw_1.RowsMove(1,dw_1.DeletedCount(),Delete!,dw_1,1,Primary!)
		wf_Output('rowsmove','1',f_string(la_value),"dw_1.RowsMove(1,dw_1.RowCount(),Delete!,dw_1,1,Primary!) = ")
		wf_output('rowsmove',string(li_rowcount + li_rows),f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsmove',string(li_rowcount + li_rows),f_string(dw_2.RowCount()),'dw_2.RowCount()')
		wf_output('rowsmove','0',f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		wf_output('rowsmove','0',f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		dw_1.deleterow(dw_1.getrow())
		dw_1.deleterow(dw_1.getrow())
		dw_1.deleterow(dw_1.getrow())
		li_rowcount = dw_1.FilteredCount()
		li_rows = dw_1.DeletedCount()
		la_value = dw_1.RowsMove(1,dw_1.DeletedCount(),Delete!,dw_1,1,Filter!)
		wf_Output('rowsmove','1',f_string(la_value),"dw_1.RowsMove(1,dw_1.RowCount(),Delete!,dw_1,1,Filter!) = ")
		wf_output('rowsmove',string(li_rowcount + li_rows),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		//wf_output('rowsmove',string(li_rowcount),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		wf_output('rowsmove','0',f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		//wf_output('rowsmove',string(li_rows),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')

		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		dw_1.SetFilter("emp_id > 300")
		dw_1.Filter()
		li_rowcount = dw_1.RowCount()
		li_rows = dw_1.FilteredCount()
		la_value = dw_1.RowsMove(1,dw_1.FilteredCount(),Filter!,dw_1,1,Primary!)
		wf_Output('rowsmove','1',f_string(la_value),"dw_1.RowsMove(1,dw_1.RowCount(),Filter!,dw_1,1,Primary!) = ")
		wf_output('rowsmove',string(li_rowcount + li_rows),f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsmove',string(li_rowcount + li_rows),f_string(dw_2.RowCount()),'dw_2.RowCount()')
		wf_output('rowsmove','0',f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		wf_output('rowsmove','0',f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')

		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		dw_1.SetFilter("emp_id > 300")
		dw_1.Filter()
		li_rowcount = dw_1.DeletedCount()
		li_rows = dw_1.FilteredCount()
		la_value = dw_1.RowsMove(1,dw_1.FilteredCount(),Filter!,dw_1,1,Delete!)
		wf_Output('rowsmove','1',f_string(la_value),"dw_1.RowsMove(1,dw_1.RowCount(),Filter!,dw_1,1,Primary!) = ")
		wf_output('rowsmove',string(li_rowcount + li_rows),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		//wf_output('rowsmove','0',f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
		wf_output('rowsmove','0',f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		//wf_output('rowsmove',string(li_rows),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		
		
		
		
		
		
		
		
		
		
		
		
end subroutine

public subroutine wf_rowsdiscard ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		int li_rowcount, li_currentrow
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.RowCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_1.RowsDiscard(1,dw_1.GetRow(),Primary!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_1.RowsDiscard(1,dw_1.GetRow(),Primary!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
		
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		li_rowcount = dw_1.DeletedCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_1.RowsDiscard(1,dw_1.GetRow(),delete!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_1.RowsDiscard(1,dw_1.RowCount(),delete!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
		
		dw_1.SetFilter("emp_id > 400")
		dw_1.Filter()		
		li_rowcount = dw_1.FilteredCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_1.RowsDiscard(1,dw_1.GetRow(),Filter!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_1.RowsDiscard(1,dw_1.RowCount(),Filter!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.RowCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_1.RowsDiscard(1,dw_2.GetRow(),Primary!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_1.RowsDiscard(1,dw_2.GetRow(),Primary!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')

		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		li_rowcount = dw_1.DeletedCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_1.RowsDiscard(1,dw_2.GetRow(),delete!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_1.RowsDiscard(1,dw_2.GetRow(),delete!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
		
		dw_1.SetFilter("emp_id > 400")
		dw_1.Filter()		
		li_rowcount = dw_1.FilteredCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_1.RowsDiscard(1,dw_2.GetRow(),Filter!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_1.RowsDiscard(1,dw_2.GetRow(),Filter!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.RowCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_2.RowsDiscard(1,dw_1.GetRow(),Primary!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_2.RowsDiscard(1,dw_1.GetRow(),Primary!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
		
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		li_rowcount = dw_1.DeletedCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_2.RowsDiscard(1,dw_1.GetRow(),delete!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_2.RowsDiscard(1,dw_1.GetRow(),delete!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
		
		dw_1.SetFilter("emp_id > 400")
		dw_1.Filter()		
		li_rowcount = dw_1.FilteredCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_2.RowsDiscard(1,dw_1.GetRow(),Filter!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_2.RowsDiscard(1,dw_1.GetRow(),Filter!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
		
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.RowCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_2.RowsDiscard(1,dw_2.GetRow(),Primary!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_2.RowsDiscard(1,dw_2.GetRow(),Primary!) = ")		
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
		
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		dw_1.deleterow(dw_1.GetRow())
		li_rowcount = dw_1.DeletedCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_2.RowsDiscard(1,dw_2.GetRow(),delete!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_2.RowsDiscard(1,dw_2.GetRow(),delete!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
		
		dw_1.SetFilter("emp_id > 400")
		dw_1.Filter()		
		li_rowcount = dw_1.FilteredCount()
		li_currentrow = dw_1.GetRow()
		la_value = dw_2.RowsDiscard(1,dw_2.GetRow(),Filter!)
		wf_Output('rowsdiscard','1',f_string(la_value),"dw_2.RowsDiscard(1,dw_2.GetRow(),Filter!) = ")
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
		wf_output('rowsdiscard',string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		wf_output('rowsdiscard',string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
end subroutine

public subroutine wf_update ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		int li_rowcount, li_rows
		
		wf_init()
		wf_resume()
		dw_1.dataobject = "d_sharedata_update"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.rowcount()		
		la_value = dw_1.deleterow(0)
		wf_output('update','1',f_string(la_value),"dw_1.deleterow(0) = ")
		la_value = dw_1.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		li_rowcount = li_rowcount - 1
		wf_output('update',string(li_rowcount),f_string(dw_1.rowcount()),"after dw_1.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount),f_string(dw_2.rowcount()),"after dw_1.update(),dw_2.rowcount = ")
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_1.DeletedCount() =')
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_2.DeletedCount() =')
		
		li_rowcount = dw_1.rowcount()		
		la_value = dw_2.deleterow(0)
		wf_output('update','1',f_string(la_value),"dw_2.deleterow(0) = ")
		la_value = dw_1.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		li_rowcount = li_rowcount - 1
		wf_output('update',string(li_rowcount),f_string(dw_1.rowcount()),"after dw_1.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount),f_string(dw_2.rowcount()),"after dw_1.update(),dw_2.rowcount = ")
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_1.DeletedCount() =')
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_2.DeletedCount() =')
		
		li_rowcount = dw_1.rowcount()		
		la_value = dw_1.deleterow(0)
		wf_output('update','1',f_string(la_value),"dw_1.deleterow(0) = ")
		la_value = dw_2.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		li_rowcount = li_rowcount - 1
		wf_output('update',string(li_rowcount),f_string(dw_1.rowcount()),"after dw_2.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount),f_string(dw_2.rowcount()),"after dw_2.update(),dw_2.rowcount = ")
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_1.DeletedCount() =')
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_2.DeletedCount() =')
		
		li_rowcount = dw_1.rowcount()		
		la_value = dw_2.deleterow(0)
		wf_output('update','1',f_string(la_value),"dw_2.deleterow(0) = ")
		la_value = dw_2.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		li_rowcount = li_rowcount - 1
		wf_output('update',string(li_rowcount),f_string(dw_1.rowcount()),"after dw_2.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount),f_string(dw_2.rowcount()),"after dw_2.update(),dw_2.rowcount = ")
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_1.DeletedCount() =')
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_2.DeletedCount() =')


		wf_init()
		wf_resume()
		dw_1.dataobject = "d_sharedata_update"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.sharedata(dw_2)
		
		li_rowcount = dw_1.rowcount()		
		dw_1.setfilter("emp_id >200")
		dw_1.filter()
		li_rows = dw_1.FilteredCount()
		la_value = dw_1.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_1.rowcount()),"after dw_1.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_2.rowcount()),"after dw_1.update(),dw_2.rowcount = ")
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount() =')
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_2.FilteredCount() =')
		
		wf_init()
		wf_resume()
		dw_1.dataobject = "d_sharedata_update"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()		
		dw_1.setfilter("emp_id >300")
		dw_1.filter()
		li_rows = dw_1.FilteredCount()
		la_value = dw_1.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_1.rowcount()),"after dw_1.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_2.rowcount()),"after dw_1.update(),dw_2.rowcount = ")
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount() =')
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_2.FilteredCount() =')
		
		wf_init()
		wf_resume()
		dw_1.dataobject = "d_sharedata_update"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()		
		dw_1.setfilter("emp_id >400")
		dw_1.filter()
		li_rows = dw_1.FilteredCount()
		la_value = dw_2.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_1.rowcount()),"after dw_2.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_2.rowcount()),"after dw_2.update(),dw_2.rowcount = ")
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount() =')
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_2.FilteredCount() =')
		
		wf_init()
		wf_resume()
		dw_1.dataobject = "d_sharedata_update"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()		
		dw_1.setfilter("emp_id >500")
		dw_1.filter()
		li_rows = dw_1.FilteredCount()
		la_value = dw_2.update()
		wf_output('update','1',f_string(la_value),"dw_1.update() = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_1.rowcount()),"after dw_2.update(),dw_1.rowcount = ")
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_2.rowcount()),"after dw_2.update(),dw_2.rowcount = ")
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount() =')
		wf_output('update',string(li_rowcount - dw_1.rowcount()),f_string(dw_1.FilteredCount()),'dw_2.FilteredCount() =')
		
		wf_init()
		wf_resume()
		dw_1.dataobject = "d_sharedata_update"
		dw_2.dataobject = dw_1.dataobject
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.sharedata(dw_2)
		li_rowcount = dw_1.rowcount()
		dw_1.DeleteRow(0)
		dw_1.Update()
		wf_output('update',string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
		wf_output('update','0',f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
		wf_output('update',string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
		wf_output('update','0',f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
		
		li_rowcount = dw_1.RowCount()
		dw_1.SetFilter("emp_id > 200")
		dw_1.Filter()
		li_rows = dw_1.RowCount()
		wf_output('update',string(li_rows),f_string(dw_1.RowCount()),'dw_1.RowCount')
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
		wf_output('update',string(li_rows),f_string(dw_2.RowCount()),'dw_2.RowCount')
		wf_output('update',string(li_rowcount - li_rows),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
end subroutine

public subroutine wf_setvalue ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		string ls_itemvalue
		
		wf_init()		
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)

		la_value = dw_1.SetValue("manager_id",1,"Manager_Id	1576")
		wf_Output('setvalue','1',f_string(la_value),"dw_1.SetValue(~"manager_id~",1,~"Manager_Id	1576~") = ")
		wf_output('setvalue','Manager_Id	1576',f_string(dw_1.GetValue('manager_id',1)),'dw_1.GetValue(~'manager_id~',1)')
		wf_output('setvalue','Appeon	1576',f_string(dw_2.GetValue('manager_id',1)),'dw_1.GetValue(~'manager_id~',1)')
		
		la_value = dw_2.SetValue("manager_id",2,"sharedata	129")
		wf_Output('setvalue','1',f_string(la_value),"dw_2.SetValue(~"manager_id~",2,~"sharedata	129~") = ")
		wf_output('setvalue','Sybase	129',f_string(dw_1.GetValue('manager_id',2)),'dw_1.GetValue(~'manager_id~',2)')
		wf_output('setvalue','sharedata	129',f_string(dw_2.GetValue('manager_id',2)),'dw_1.GetValue(~'manager_id~',2)')
end subroutine

public subroutine wf_sort ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////
		
		any la_value
		wf_init()
		dw_2.dataobject = dw_1.dataobject
		dw_1.sharedata(dw_2)
		la_value = dw_1.SetSort("emp_id a")
		wf_Output('sort','1',f_string(la_value),"dw_1.SetSort(~"emp_id a~") = ")
		la_value = dw_1.Sort()
		wf_Output('sort','1',f_string(la_value),"dw_1.Sort() = ")
		wf_output('sort','148 184',string(dw_1.GetItemNumber(1,'emp_id')) + ' ' + string(dw_1.GetItemNumber(2,'emp_id')),'dw_1.GetItemNumber(1,~'emp_id~')')
		wf_output('sort','148 184',string(dw_2.GetItemNumber(1,'emp_id')) + ' ' + string(dw_2.GetItemNumber(2,'emp_id')),'dw_2.GetItemNumber(1,~'emp_id~')')
		
		la_value = dw_1.SetSort("emp_id d")
		wf_Output('sort','1',f_string(la_value),"dw_1.SetSort(~"emp_id d~") = ")
		la_value = dw_1.Sort()
		wf_Output('sort','1',f_string(la_value),"dw_1.Sort() = ")
		wf_output('sort','1751 1740',string(dw_1.GetItemNumber(1,'emp_id')) + ' ' + string(dw_1.GetItemNumber(2,'emp_id')),'dw_1.GetItemNumber(1,~'emp_id~')')
		wf_output('sort','1751 1740',string(dw_2.GetItemNumber(1,'emp_id')) + ' ' + string(dw_2.GetItemNumber(2,'emp_id')),'dw_2.GetItemNumber(1,~'emp_id~')')
		
		la_value = dw_2.SetSort("emp_id a")
		wf_Output('sort','1',f_string(la_value),"dw_2.SetSort(~"emp_id a~") = ")
		la_value = dw_2.Sort()
		wf_Output('sort','1',f_string(la_value),"dw_2.Sort() = ")
		wf_output('sort','148 184',string(dw_1.GetItemNumber(1,'emp_id')) + ' ' + string(dw_1.GetItemNumber(2,'emp_id')),'dw_1.GetItemNumber(1,~'emp_id~')')
		wf_output('sort','148 184',string(dw_2.GetItemNumber(1,'emp_id')) + ' ' + string(dw_2.GetItemNumber(2,'emp_id')),'dw_2.GetItemNumber(1,~'emp_id~')')
		
		la_value = dw_2.SetSort("emp_id d")
		wf_Output('sort','1',f_string(la_value),"dw_2.SetSort(~"emp_id d~") = ")
		la_value = dw_2.Sort()
		wf_Output('sort','1',f_string(la_value),"dw_2.Sort() = ")
		wf_output('sort','1751 1740',string(dw_1.GetItemNumber(1,'emp_id')) + ' ' + string(dw_1.GetItemNumber(2,'emp_id')),'dw_1.GetItemNumber(1,~'emp_id~')')
		wf_output('sort','1751 1740',string(dw_2.GetItemNumber(1,'emp_id')) + ' ' + string(dw_2.GetItemNumber(2,'emp_id')),'dw_2.GetItemNumber(1,~'emp_id~')')
end subroutine

public subroutine wf_rowdiscard ();//		any la_value
//		int li_rowcount, li_currentrow
//		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		
//		li_rowcount = dw_1.RowCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_1.RowsDiscard(1,dw_1.GetRow(),Primary!)
//		wf_Output('1',f_string(la_value),"dw_1.RowsDiscard(1,dw_1.GetRow(),Primary!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
//		
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		li_rowcount = dw_1.DeletedCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_1.RowsDiscard(1,dw_1.GetRow(),delete!)
//		wf_Output('1',f_string(la_value),"dw_1.RowsDiscard(1,dw_1.RowCount(),delete!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
//		
//		dw_1.SetFilter("emp_id > 400")
//		dw_1.Filter()		
//		li_rowcount = dw_1.FilteredCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_1.RowsDiscard(1,dw_1.GetRow(),Filter!)
//		wf_Output('1',f_string(la_value),"dw_1.RowsDiscard(1,dw_1.RowCount(),Filter!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
//		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		
//		li_rowcount = dw_1.RowCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_1.RowsDiscard(1,dw_2.GetRow(),Primary!)
//		wf_Output('1',f_string(la_value),"dw_1.RowsDiscard(1,dw_2.GetRow(),Primary!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
//
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		li_rowcount = dw_1.DeletedCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_1.RowsDiscard(1,dw_2.GetRow(),delete!)
//		wf_Output('1',f_string(la_value),"dw_1.RowsDiscard(1,dw_2.GetRow(),delete!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
//		
//		dw_1.SetFilter("emp_id > 400")
//		dw_1.Filter()		
//		li_rowcount = dw_1.FilteredCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_1.RowsDiscard(1,dw_2.GetRow(),Filter!)
//		wf_Output('1',f_string(la_value),"dw_1.RowsDiscard(1,dw_2.GetRow(),Filter!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
//		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		
//		li_rowcount = dw_1.RowCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_2.RowsDiscard(1,dw_1.GetRow(),Primary!)
//		wf_Output('1',f_string(la_value),"dw_2.RowsDiscard(1,dw_1.GetRow(),Primary!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
//		
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		li_rowcount = dw_1.DeletedCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_2.RowsDiscard(1,dw_1.GetRow(),delete!)
//		wf_Output('1',f_string(la_value),"dw_2.RowsDiscard(1,dw_1.GetRow(),delete!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
//		
//		dw_1.SetFilter("emp_id > 400")
//		dw_1.Filter()		
//		li_rowcount = dw_1.FilteredCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_2.RowsDiscard(1,dw_1.GetRow(),Filter!)
//		wf_Output('1',f_string(la_value),"dw_2.RowsDiscard(1,dw_1.GetRow(),Filter!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
//		
//		wf_init()
//		dw_2.dataobject = dw_1.dataobject
//		dw_1.sharedata(dw_2)
//		
//		li_rowcount = dw_1.RowCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_2.RowsDiscard(1,dw_2.GetRow(),Primary!)
//		wf_Output('1',f_string(la_value),"dw_2.RowsDiscard(1,dw_2.GetRow(),Primary!) = ")		
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.RowCount()),'dw_1.RowCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.RowCount()),'dw_2.RowCount()')
//		
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		dw_1.deleterow(dw_1.GetRow())
//		li_rowcount = dw_1.DeletedCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_2.RowsDiscard(1,dw_2.GetRow(),delete!)
//		wf_Output('1',f_string(la_value),"dw_2.RowsDiscard(1,dw_2.GetRow(),delete!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.DeletedCount()),'dw_1.DeletedCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.DeletedCount()),'dw_2.DeletedCount()')
//		
//		dw_1.SetFilter("emp_id > 400")
//		dw_1.Filter()		
//		li_rowcount = dw_1.FilteredCount()
//		li_currentrow = dw_1.GetRow()
//		la_value = dw_2.RowsDiscard(1,dw_2.GetRow(),Filter!)
//		wf_Output('1',f_string(la_value),"dw_2.RowsDiscard(1,dw_2.GetRow(),Filter!) = ")
//		wf_output(string(li_currentrow),f_string(dw_1.GetRow()),'dw_1.GetRow()')
//		wf_output(string(li_currentrow),f_string(dw_2.GetRow()),'dw_2.GetRow()')
//		wf_output(string(li_rowcount - 1),f_string(dw_1.FilteredCount()),'dw_1.FilteredCount()')
//		wf_output(string(li_rowcount - 1),f_string(dw_2.FilteredCount()),'dw_2.FilteredCount()')
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

ls_message[]= {"[Á´½Ó]","",gs_link,""}
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

on w_sharedata.create
this.dw_bak=create dw_bak
this.cbx_showright=create cbx_showright
this.dw_3=create dw_3
this.cb_run=create cb_run
this.dw_2=create dw_2
this.st_message=create st_message
this.lb_testitems=create lb_testitems
this.cb_autorun=create cb_autorun
this.cb_saveas=create cb_saveas
this.cb_error=create cb_error
this.cbx_right=create cbx_right
this.cb_max=create cb_max
this.cb_1=create cb_1
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_1=create dw_1
this.dw_output=create dw_output
this.gb_4=create gb_4
this.gb_5=create gb_5
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.lb_1=create lb_1
this.Control[]={this.dw_bak,&
this.cbx_showright,&
this.dw_3,&
this.cb_run,&
this.dw_2,&
this.st_message,&
this.lb_testitems,&
this.cb_autorun,&
this.cb_saveas,&
this.cb_error,&
this.cbx_right,&
this.cb_max,&
this.cb_1,&
this.cb_sort,&
this.cb_reset,&
this.dw_1,&
this.dw_output,&
this.gb_4,&
this.gb_5,&
this.gb_1,&
this.gb_2,&
this.gb_3,&
this.lb_1}
end on

on w_sharedata.destroy
destroy(this.dw_bak)
destroy(this.cbx_showright)
destroy(this.dw_3)
destroy(this.cb_run)
destroy(this.dw_2)
destroy(this.st_message)
destroy(this.lb_testitems)
destroy(this.cb_autorun)
destroy(this.cb_saveas)
destroy(this.cb_error)
destroy(this.cbx_right)
destroy(this.cb_max)
destroy(this.cb_1)
destroy(this.cb_sort)
destroy(this.cb_reset)
destroy(this.dw_1)
destroy(this.dw_output)
destroy(this.gb_4)
destroy(this.gb_5)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
destroy(this.lb_1)
end on

event open;dw_1.SetTransObject(sqlca)
dw_1.Retrieve()
//dw_bak.SetTransObject(sqlca)
//dw_bak.Retrieve()
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

type dw_bak from datawindow within w_sharedata
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

type cbx_showright from checkbox within w_sharedata
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

type dw_3 from datawindow within w_sharedata
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

type cb_run from commandbutton within w_sharedata
integer x = 2295
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
wf_message(ls_Item,"ShareTest")
wf_script(trim(mid(ls_Item,pos(lb_testitems.text(lb_testitems.selectedindex())," "))))
if ii_errornumber = 0 and not(cbx_right.checked) then
	dw_output.rowsdiscard(li_rowcount + 1, li_rowcount + ii_rightnumber + 10,Primary!)
end if

cb_error.text = "All"
cb_error.TriggerEvent(clicked!)
end event

type dw_2 from datawindow within w_sharedata
integer x = 78
integer y = 1400
integer width = 2546
integer height = 804
integer taborder = 30
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

event retrievestart;return ii_retrievestart
end event

type st_message from statictext within w_sharedata
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

type lb_testitems from listbox within w_sharedata
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

this.additem(string(i,"00")+" DeleteRow")
i += 1
this.additem(string(i,"00")+" InsertRow")
i += 1
//this.additem(string(i,"00")+" ReselectRow")
//i += 1

this.additem(string(i,"00")+" Filter")
i += 1
this.additem(string(i,"00")+" Sort")
i += 1

this.additem(string(i,"00")+" GetItemDate")
i += 1
this.additem(string(i,"00")+" GetItemString")
i += 1
this.additem(string(i,"00")+" SetItem")
i += 1
this.additem(string(i,"00")+" SetValue")
i += 1

this.additem(string(i,"00")+" GetItemStatus")
i += 1
this.additem(string(i,"00")+" SetItemStatus")
i += 1

this.additem(string(i,"00")+" GetSQLSelect")
i += 1
this.additem(string(i,"00")+" SetSQLSelect")
i += 1

this.additem(string(i,"00")+" ImportFile")
i += 1
this.additem(string(i,"00")+" ImportString")
i += 1
this.additem(string(i,"00")+" ImportClipboard")
i += 1

this.additem(string(i,"00")+" Reset")
i += 1
this.additem(string(i,"00")+" Retrieve")
i += 1

this.additem(string(i,"00")+" RowsCopy")
i += 1
this.additem(string(i,"00")+" RowsDiscard")
i += 1
this.additem(string(i,"00")+" RowsMove")
i += 1

this.additem(string(i,"00")+" Update")




end event

event doubleclicked;//string ls_Item
//ls_Item = lb_testitems.text(index)
//ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
//wf_script(ls_Item)
cb_run.TriggerEvent(clicked!)
end event

type cb_autorun from commandbutton within w_sharedata
integer x = 2295
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
	wf_message(ls_Item,"ShareTest")
	ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
	wf_script(ls_Item)
	f_outputtext(dw_output,ls_message)
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
	end if 
Next

end event

type cb_saveas from commandbutton within w_sharedata
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

type cb_error from commandbutton within w_sharedata
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

type cbx_right from checkbox within w_sharedata
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

type cb_max from commandbutton within w_sharedata
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

type cb_1 from commandbutton within w_sharedata
integer x = 2295
integer y = 296
integer width = 297
integer height = 88
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Save"
end type

event clicked;integer li_ItemTotal, li_ItemCount

li_ItemTotal = lb_testitems.TotalItems( )

FOR li_ItemCount = 1 to li_ItemTotal
	
	if lb_testitems.State(li_ItemCount)=1 then
		
//		choose case li_ItemCount
////			case 8
////				wf_dotoperate(true)
////			case 9
////				wf_dotoperatortonull(true)
////			case 10
////				wf_dotoperatorfromnull(true)
//		end choose
	end if

NEXT

end event

type cb_sort from commandbutton within w_sharedata
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

type cb_reset from commandbutton within w_sharedata
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

event clicked;wf_init()
dw_output.reset()
ii_error = 0
st_message.text = ""
end event

type dw_1 from datawindow within w_sharedata
integer x = 78
integer y = 476
integer width = 2551
integer height = 776
integer taborder = 20
string title = "none"
string dataobject = "d_sharedata_grid"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

event retrievestart;return ii_retrievestart
end event

type dw_output from datawindow within w_sharedata
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

type gb_4 from groupbox within w_sharedata
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

type gb_5 from groupbox within w_sharedata
integer x = 37
integer y = 1328
integer width = 2629
integer height = 916
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = " Share Datawindow"
end type

type gb_1 from groupbox within w_sharedata
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

type gb_2 from groupbox within w_sharedata
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

type gb_3 from groupbox within w_sharedata
integer x = 37
integer y = 416
integer width = 2629
integer height = 876
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

type lb_1 from listbox within w_sharedata
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

