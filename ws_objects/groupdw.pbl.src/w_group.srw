$PBExportHeader$w_group.srw
forward
global type w_group from window
end type
type dw_bak from datawindow within w_group
end type
type cbx_showright from checkbox within w_group
end type
type cb_2 from commandbutton within w_group
end type
type cb_run from commandbutton within w_group
end type
type st_message from statictext within w_group
end type
type lb_testitems from listbox within w_group
end type
type cb_autorun from commandbutton within w_group
end type
type cb_10 from commandbutton within w_group
end type
type cb_3 from commandbutton within w_group
end type
type cbx_right from checkbox within w_group
end type
type cb_max from commandbutton within w_group
end type
type cb_1 from commandbutton within w_group
end type
type cb_sort from commandbutton within w_group
end type
type cb_reset from commandbutton within w_group
end type
type dw_1 from datawindow within w_group
end type
type dw_output from datawindow within w_group
end type
type gb_4 from groupbox within w_group
end type
type gb_1 from groupbox within w_group
end type
type gb_2 from groupbox within w_group
end type
type gb_3 from groupbox within w_group
end type
type lb_1 from listbox within w_group
end type
end forward

global type w_group from window
integer width = 4768
integer height = 2676
boolean titlebar = true
string title = "GroupDW Test"
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
cb_2 cb_2
cb_run cb_run
st_message st_message
lb_testitems lb_testitems
cb_autorun cb_autorun
cb_10 cb_10
cb_3 cb_3
cbx_right cbx_right
cb_max cb_max
cb_1 cb_1
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
global w_group w_group

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
long ii_dwx,ii_gbx,ii_dwwidth,ii_gbwidth
point str_point
end variables

forward prototypes
public subroutine wf_output (string as_testitem, string as_orivalue, string as_curvalue, string as_type)
public subroutine wf_script (string as_testitem)
public subroutine wf_resume ()
public subroutine wf_message (string as_operate, string as_problem)
public subroutine wf_property (string as_testitem)
public subroutine wf_expression (string as_testitem)
public subroutine wf_function (string as_testitem)
public subroutine wf_method (string as_testitem)
public subroutine wf_datachange (string as_testitem)
public function integer wf_returnerror ()
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
//int ii_num
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
end subroutine

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
	case 'GroupDefinition'
		wf_property(as_testitem)
	case 'GroupSortA'
		wf_property(as_testitem)
	case 'GroupSortD'
		wf_property(as_testitem)
	case 'Reset Page CountT'
		wf_property(as_testitem)
	case 'Reset Page CountF'
		wf_property(as_testitem)
	case 'New Page on Group BreakT'
		wf_property(as_testitem)
	case 'New Page on Group BreakF'
		wf_property(as_testitem)
	case 'AutoSize HeightT'
		wf_property(as_testitem)
	case 'AutoSize HeightF'
		wf_property(as_testitem)

	case "avg"  
		wf_function(as_testitem)             
	case "count"   
		wf_function(as_testitem)          
	case "cumulativePercent"  
		wf_function(as_testitem)
	case "cumulativeSum"  
		wf_function(as_testitem)   
	case "first"    
		wf_function(as_testitem)          
	case "last"   
		wf_function(as_testitem)           
	case "max"   
		wf_function(as_testitem)            
	case "min"   
		wf_function(as_testitem)            
	case "percent"   
		wf_function(as_testitem)        
	case "sum"  
		wf_function(as_testitem)
		
	case "Scroll"	
		wf_method(as_testitem)	
	case "ScrollPriorPage" 
		wf_method(as_testitem)
	case "ScrollNextPage"  
		wf_method(as_testitem)
	case "ScrollPriorRow"  
		wf_method(as_testitem)
	case "ScrollNextRow"  
		wf_method(as_testitem) 
	case "ScrollToRow"
		wf_method(as_testitem)	
	case "GetBandAtPointer"
		wf_method(as_testitem)
	case "Sort"
		wf_datachange(as_testitem)
	case "Filter"
		wf_datachange(as_testitem)
	case "Rowscopy"
		wf_datachange(as_testitem)
	case "Rowsmove"
		wf_datachange(as_testitem)
	case "RowsDiscard"
		wf_datachange(as_testitem)
	case "Insert"
		wf_datachange(as_testitem)
	case "Delete"
		wf_datachange(as_testitem)
	case "SetItem"
		wf_datachange(as_testitem)
end choose
end subroutine

public subroutine wf_resume ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

int li_result
string ls_string
ls_string = "001	NAME1	M	20	01/01/1980 00:00:00	2001.10	A01	B01~r~n&
002	NAME1	M	30	01/01/1980 00:00:00	2001.10	A02	B02~r~n&
003	NAME1	M	20	01/01/1980 00:00:00	2002.10	A03	B03~r~n&
004	NAME1	M	20	01/01/1980 00:00:00	2002.10	A04	B04~r~n&
005	NAME1	M	20	01/02/1980 00:00:00	2003.10	A05	B05~r~n&
006	NAME1	M	20	01/02/1980 00:00:00	2003.10	A06	B06~r~n&
007	NAME1	M	20	01/02/1980 00:00:00	2074.10	A07	B07~r~n&
008	NAME1	M	20	01/02/1980 00:00:00	2084.10	A08	B08~r~n&
009	NAME1	W	30	01/03/1980 00:00:00	2005.10	A09	B09~r~n&
010	NAME1	M	30	01/03/1980 00:00:00	2005.10	A10	B10~r~n&
011	NAME2	W	40	01/04/1980 00:00:00	2006.10	A11	B11~r~n&
012	NAME2	W	40	01/04/1980 00:00:00	2006.10	A12	B12~r~n&
013	NAME2	W	40	01/04/1980 00:00:00	2006.10	A13	B13~r~n&
014	NAME2	W	50	01/05/1980 00:00:00	2007.10	A14	B14~r~n&
015	NAME2	W	50	01/05/1980 00:00:00	2007.10	A15	B15~r~n&
016	NAME2	W	50	01/05/1980 00:00:00	2007.10	A16	B16~r~n&
017	NAME3	W	60	01/06/1980 00:00:00	2008.10	A17	B17~r~n&
018	NAME3	W	60	01/06/1980 00:00:00	2008.10	A18	B18~r~n&
019	NAME3	W	70	01/07/1980 00:00:00	2009.10	A19	B19~r~n&
020	NAME3	W	70	01/07/1980 00:00:00	2009.10	A20	B20~r~n&
021	NAME1	M	20	01/01/1980 00:00:00	2001.10	A01	B21~r~n&
022	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B22~r~n&
023	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B23~r~n&
024	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B24~r~n&
025	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B25~r~n&
026	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B26~r~n&
027	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B27~r~n&
028	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B28~r~n&
029	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B29~r~n&
030	NAME1	M	22	01/01/1980 00:00:00	2001.10	A01	B30"
delete v30_dwgroup;

if sqlca.sqlcode = 0 then
	commit;
	dw_1.dataobject = 'd_back'
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	li_result = dw_1.importstring(ls_string)
	//li_result = dw_1.importfile("group_back.txt", 2)	
//	if li_result = -5 then
//		messagebox('File not find','please copy file of group_back.txt to ' + GetCurrentDirectory())
//		halt close
//	end if
//	li_result = dw_bak.rowscopy(1,dw_bak.rowcount(),Primary!,dw_1,999999,Primary!)
//	if li_result <> 1 then messagebox('failed','resume data failed')
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
ls_message[]={'[±àºÅ]','','GroupDatawindow '+string(ii_number,"000"),''}
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

public subroutine wf_property (string as_testitem);any la_value
choose case as_testitem
	case 'GroupDefinition'
		//groupdefinition
		wf_resume()
		dw_1.dataobject = "d_group_test"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('GroupDefinition = "c_sex"','170',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('GroupDefinition = "c_sex"','218',f_string(dw_1.GetItemNumber(dw_1.RowCount(),"compute_2")),"dw_1.GetItemNumber(dw_1.RowCount(),~"compute_2~") = ")

		wf_resume()
		dw_1.dataobject = "d_group_1"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('GroupDefinition ="c_sex" , "v_name" ','170',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
	case 'GroupSortA'
		//groupsort
		wf_resume()
		dw_1.dataobject = "d_group_sorta"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('GroupSort = count(id for group 1) A ','260',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
   case 'GroupSortD'
		wf_resume()
		dw_1.dataobject = "d_group_sortd"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('GroupSort = count(id for group 1) D ','448',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
//	case 'Reset Page CountT'
//		//Reset Page Count true
//		wf_resume()
//		dw_1.dataobject = "d_group_newpage_true"
//		dw_1.SetTransObject(sqlca)
//		dw_1.Retrieve()
//		wf_Output('Reset Page Count = True','pagecount() = 3',f_string(dw_1.GetItemString(1,"compute_header")),"dw_1.GetItemNumber(1,~"compute_header~") = ")
//		wf_Output('Reset Page Count = True','pagecount() = 7',f_string(dw_1.GetItemString(dw_1.RowCount(),"compute_headergroup")),'dw_1.GetItemString(dw_1.RowCount(),"compute_headergroup")')
//
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(1,"page_header")),'dw_1.GetItemString(1,"page_header")')
//
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(4,"page_headergroup")),'dw_1.GetItemString(4,"page_headergroup")')
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(10,"page_headergroup")),'dw_1.GetItemString(10,"page_headergroup")')
//
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(4,"page_detail")),'dw_1.GetItemString(4,"page_detail")')
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(10,"page_detail")),'dw_1.GetItemString(10,"page_detail")')
//
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(4,"page_trailergroup")),'dw_1.GetItemString(4,"page_trailergroup")')
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(10,"page_trailergroup")),'dw_1.GetItemString(10,"page_trailergroup")')
//
//		wf_Output('Reset Page Count = True','page() = 7',f_string(dw_1.GetItemString(dw_1.RowCount(),"page_summary")),'dw_1.GetItemString(dw_1.RowCount,"page_summary")')
//
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(4,"page_footer")),'dw_1.GetItemString(4,"page_footer")')
//		wf_Output('Reset Page Count = True','page() = 1',f_string(dw_1.GetItemString(10,"page_footer")),'dw_1.GetItemString(10,"page_footer")')

//	case 'Reset Page CountF'
//		wf_resume()
//		dw_1.dataobject = "d_group_newpage_false"
//		dw_1.SetTransObject(sqlca)
//		dw_1.Retrieve()
//		wf_Output('Reset Page Count = False','pagecount() = 10',f_string(dw_1.GetItemString(1,"compute_header")),"dw_1.GetItemNumber(1,~"compute_header~") = ")
//		wf_Output('Reset Page Count = False','pagecount() = 10',f_string(dw_1.GetItemString(dw_1.RowCount(),"compute_headergroup")),'dw_1.GetItemString(dw_1.RowCount(),"compute_headergroup")')
//
//		wf_Output('Reset Page Count = False','page() = 1',f_string(dw_1.GetItemString(1,"page_header")),'dw_1.GetItemString(1,"page_header")')
//
//		wf_Output('Reset Page Count = False','page() = 1',f_string(dw_1.GetItemString(4,"page_headergroup")),'dw_1.GetItemString(4,"page_headergroup")')
//		wf_Output('Reset Page Count = False','page() = 4',f_string(dw_1.GetItemString(10,"page_headergroup")),'dw_1.GetItemString(10,"page_headergroup")')
//
//		wf_Output('Reset Page Count = False','page() = 1',f_string(dw_1.GetItemString(4,"page_detail")),'dw_1.GetItemString(4,"page_detail")')
//		wf_Output('Reset Page Count = False','page() = 4',f_string(dw_1.GetItemString(10,"page_detail")),'dw_1.GetItemString(10,"page_detail")')
//
//		wf_Output('Reset Page Count = False','page() = 1',f_string(dw_1.GetItemString(4,"page_trailergroup")),'dw_1.GetItemString(4,"page_trailergroup")')
//		wf_Output('Reset Page Count = False','page() = 4',f_string(dw_1.GetItemString(10,"page_trailergroup")),'dw_1.GetItemString(10,"page_trailergroup")')
//
//		wf_Output('Reset Page Count = False','page() = 10',f_string(dw_1.GetItemString(dw_1.RowCount(),"page_summary")),'dw_1.GetItemString(dw_1.RowCount,"page_summary")')
//
//		wf_Output('Reset Page Count = False','page() = 1',f_string(dw_1.GetItemString(4,"page_footer")),'dw_1.GetItemString(4,"page_footer")')
//		wf_Output('Reset Page Count = False','page() = 4',f_string(dw_1.GetItemString(10,"page_footer")),'dw_1.GetItemString(10,"page_footer")')
	case 'New Page on Group BreakT'
		wf_resume()
		dw_1.dataobject = "d_group_newpagebreak"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('New Page on Group Break = true','page() = 2',f_string(dw_1.GetItemString(4,"page_headergroup")),'dw_1.GetItemString(4,"page_headergroup")')
		wf_Output('New Page on Group Break = true','page() = 6',f_string(dw_1.GetItemString(10,"page_headergroup")),'dw_1.GetItemString(10,"page_headergroup")')

		wf_Output('New Page on Group Break = true','page() = 2',f_string(dw_1.GetItemString(4,"page_detail")),'dw_1.GetItemString(4,"page_detail")')
		wf_Output('New Page on Group Break = true','page() = 6',f_string(dw_1.GetItemString(10,"page_detail")),'dw_1.GetItemString(10,"page_detail")')

		wf_Output('New Page on Group Break = true','page() = 2',f_string(dw_1.GetItemString(4,"page_trailergroup")),'dw_1.GetItemString(4,"page_trailergroup")')
		wf_Output('New Page on Group Break = true','page() = 6',f_string(dw_1.GetItemString(10,"page_trailergroup")),'dw_1.GetItemString(10,"page_trailergroup")')
//	case 'New Page on Group BreakF'
//		wf_resume()
//		dw_1.dataobject = "d_group_newpagebreak_false"
//		dw_1.SetTransObject(sqlca)
//		dw_1.Retrieve()
//		wf_Output('New Page on Group Break = False','page() = 1',f_string(dw_1.GetItemString(4,"page_headergroup")),'dw_1.GetItemString(4,"page_headergroup")')
//		wf_Output('New Page on Group Break = False','page() = 2',f_string(dw_1.GetItemString(10,"page_headergroup")),'dw_1.GetItemString(10,"page_headergroup")')
//
//		wf_Output('New Page on Group Break = False','page() = 1',f_string(dw_1.GetItemString(4,"page_detail")),'dw_1.GetItemString(4,"page_detail")')
//		wf_Output('New Page on Group Break = False','page() = 2',f_string(dw_1.GetItemString(10,"page_detail")),'dw_1.GetItemString(10,"page_detail")')
//
//		wf_Output('New Page on Group Break = False','page() = 1',f_string(dw_1.GetItemString(4,"page_trailergroup")),'dw_1.GetItemString(4,"page_trailergroup")')
//		wf_Output('New Page on Group Break = False','page() = 2',f_string(dw_1.GetItemString(10,"page_trailergroup")),'dw_1.GetItemString(10,"page_trailergroup")')

	case 'AutoSize HeightT'
		wf_resume()
		dw_1.dataobject = "d_group_atuosize"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('AutoSize Height = true','page() = 2',f_string(dw_1.GetItemString(4,"page_headergroup")),'dw_1.GetItemString(4,"page_headergroup")')
		wf_Output('AutoSize Height = true','page() = 4',f_string(dw_1.GetItemString(10,"page_headergroup")),'dw_1.GetItemString(10,"page_headergroup")')

		wf_Output('AutoSize Height = true','page() = 2',f_string(dw_1.GetItemString(4,"page_detail")),'dw_1.GetItemString(4,"page_detail")')
		wf_Output('AutoSize Height = true','page() = 4',f_string(dw_1.GetItemString(10,"page_detail")),'dw_1.GetItemString(10,"page_detail")')

		wf_Output('AutoSize Height = true','page() = 2',f_string(dw_1.GetItemString(4,"page_trailergroup")),'dw_1.GetItemString(4,"page_trailergroup")')
		wf_Output('AutoSize Height = true','page() = 4',f_string(dw_1.GetItemString(10,"page_trailergroup")),'dw_1.GetItemString(10,"page_trailergroup")')
	case 'AutoSize HeightF'
		wf_resume()
		dw_1.dataobject = "d_group_atuosize_false"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('AutoSize Height = False','page() = 1',f_string(dw_1.GetItemString(4,"page_headergroup")),'dw_1.GetItemString(4,"page_headergroup")')
		wf_Output('AutoSize Height = False','page() = 2',f_string(dw_1.GetItemString(10,"page_headergroup")),'dw_1.GetItemString(10,"page_headergroup")')

		wf_Output('AutoSize Height = False','page() = 1',f_string(dw_1.GetItemString(4,"page_detail")),'dw_1.GetItemString(4,"page_detail")')
		wf_Output('AutoSize Height = False','page() = 2',f_string(dw_1.GetItemString(10,"page_detail")),'dw_1.GetItemString(10,"page_detail")')

		wf_Output('AutoSize Height = False','page() = 1',f_string(dw_1.GetItemString(4,"page_trailergroup")),'dw_1.GetItemString(4,"page_trailergroup")')
		wf_Output('AutoSize Height = False','page() = 2',f_string(dw_1.GetItemString(10,"page_trailergroup")),'dw_1.GetItemString(10,"page_trailergroup")')		
end choose























end subroutine

public subroutine wf_expression (string as_testitem);//
end subroutine

public subroutine wf_function (string as_testitem);long cumu, sum ,i
choose case as_testitem
	case "avg"  
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('avg','53',f_string(dw_1.GetItemNumber(18,"avg")),"dw_1.GetItemNumber(18,~"avg~") = ")
		wf_Output('avg','21.8',f_string(dw_1.GetItemNumber(30,"avg")),"dw_1.GetItemNumber(30,~"avg~") = ")
	case "count"   
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('count','10',f_string(dw_1.GetItemNumber(18,"count")),"dw_1.GetItemNumber(18,~"count~") = ")
		wf_Output('count','10',f_string(dw_1.GetItemNumber(30,"count")),"dw_1.GetItemNumber(30,~"count~") = ")          
	case "cumulativePercent"  
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		cumu = dw_1.GetItemNumber(18,"cumulativeSum")
		sum = dw_1.GetItemNumber(18,"sum")
		wf_Output('cumulativePercent',f_string(truncate(cumu / sum,6)),f_string(dw_1.GetItemNumber(18,"cumulativePercent")),"dw_1.GetItemNumber(18,~"cumulativePercent~") = ")
		cumu = dw_1.GetItemNumber(30,"cumulativeSum")
		sum = dw_1.GetItemNumber(30,"sum")
		wf_Output('cumulativePercent',f_string(cumu / sum),f_string(dw_1.GetItemNumber(30,"cumulativePercent")),"dw_1.GetItemNumber(30,~"cumulativePercent~") = ")
	case "cumulativeSum"  
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('cumulativeSum',"390",f_string(dw_1.GetItemNumber(18,"cumulativeSum")),"dw_1.GetItemNumber(18,~"cumulativeSum~") = ")
		wf_Output('cumulativeSum',"218",f_string(dw_1.GetItemNumber(30,"cumulativeSum")),"dw_1.GetItemNumber(30,~"cumulativeSum~") = ")   
	case "first"    
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('first',"2006.1",f_string(dw_1.GetItemNumber(18,"first")),"dw_1.GetItemNumber(18,~"first~") = ")
		wf_Output('first',"2001.1",f_string(dw_1.GetItemNumber(30,"first")),"dw_1.GetItemNumber(30,~"first~") = ")          
	case "last"   
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('last','2009.1',f_string(dw_1.GetItemNumber(18,"last")),"dw_1.GetItemNumber(18,~"last~") = ")
		wf_Output('last','2001.1',f_string(dw_1.GetItemNumber(30,"last")),"dw_1.GetItemNumber(30,~"last~") = ")          
	case "max"   
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('max','020',f_string(dw_1.GetItemString(18,"max")),"dw_1.GetItemString(18,~"max~") = ")
		wf_Output('max','030',f_string(dw_1.GetItemString(30,"max")),"dw_1.GetItemString(30,~"max~") = ")            
	case "min"   
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('min','011',f_string(dw_1.GetItemString(18,"min")),"dw_1.GetItemString(18,~"min~") = ")
		wf_Output('min','021',f_string(dw_1.GetItemString(30,"min")),"dw_1.GetItemString(30,~"min~") = ")            
	case "percent"   
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('percent',f_string(truncate(dw_1.GetItemNumber(18,"i_arg")/dw_1.GetItemNumber(18,"sum"),6)),f_string(dw_1.GetItemNumber(18,"percent")),"dw_1.GetItemNumber(18,~"percent~") = ")
		wf_Output('percent',f_string(truncate(dw_1.GetItemNumber(30,"i_arg")/dw_1.GetItemNumber(30,"sum"),6)),f_string(dw_1.GetItemNumber(30,"percent")),"dw_1.GetItemNumber(30,~"percent~") = ")        
	case "sum"  
		wf_resume()
		dw_1.dataobject = "d_group_function"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		wf_Output('sum','530',f_string(dw_1.GetItemNumber(18,"sum")),"dw_1.GetItemNumber(18,~"sum~") = ")
		wf_Output('sum','218',f_string(dw_1.GetItemNumber(30,"sum")),"dw_1.GetItemNumber(30,~"sum~") = ")
end choose
end subroutine

public subroutine wf_method (string as_testitem);int li_currentrow,xpos,ypos
string ls_value
any la_value

choose case as_testitem
	case "Scroll"	
		//wf_resume()
		li_currentrow = dw_1.GetRow()
		dw_1.SetFocus()
		wf_Output('Scroll',string(li_currentrow),f_string(dw_1.scroll(30)),"dw_1.Scroll(4) = ")
	case "ScrollPriorPage"
		//wf_resume()
		dw_1.dataobject = "d_group_method"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		dw_1.SetFocus()
		dw_1.ScrollToRow(dw_1.RowCount())
		la_value = dw_1.ScrollPriorPage()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorPage()')
		la_value = dw_1.ScrollPriorPage()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorPage()')
	case "ScrollNextPage"
		//wf_resume()
		dw_1.dataobject = "d_group_method"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		dw_1.SetFocus()
		li_currentrow = dw_1.GetRow()
		ls_value = dw_1.GetItemString(li_currentrow,"id")
		la_value = dw_1.ScrollNextPage()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextPage()')
		la_value = dw_1.ScrollNextPage()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextPage()')
		la_value = dw_1.ScrollNextPage()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextPage()')
		la_value = dw_1.ScrollNextPage()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextPage()')
	case "ScrollPriorRow"  
		//wf_resume()
		dw_1.dataobject = "d_group_method"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		dw_1.SetFocus()
		dw_1.ScrollToRow(dw_1.RowCount())
		la_value = dw_1.ScrollPriorRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorRow()')
		la_value = dw_1.ScrollPriorRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorRow()')
		la_value = dw_1.ScrollPriorRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorRow()')
		la_value = dw_1.ScrollPriorRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorRow()')
		la_value = dw_1.ScrollPriorRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorRow()')
		la_value = dw_1.ScrollPriorRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollPriorRow()')
	case "ScrollNextRow" 
		//wf_resume()
		dw_1.dataobject = "d_group_method"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		dw_1.SetFocus()
		la_value = dw_1.ScrollNextRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextRow()')
		la_value = dw_1.ScrollNextRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextRow()')
		la_value = dw_1.ScrollNextRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextRow()')
		la_value = dw_1.ScrollNextRow()
		wf_Output('ScrollPriorPage',string(dw_1.describe("datawindow.firstrowonpage")),f_string(la_value),'dw_1.ScrollNextRow()')
	case "ScrollToRow"
		//wf_resume()
		dw_1.dataobject = "d_group_method"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
		dw_1.SetFocus()
		la_value = dw_1.ScrollToRow(3)
		wf_Output('ScrollPriorPage','3',string(dw_1.GetRow()),'dw_1.ScrollToRow(' + string(3) +')')
		la_value = dw_1.ScrollToRow(7)
		wf_Output('ScrollPriorPage','7',string(dw_1.GetRow()),'dw_1.ScrollToRow(' + string(7) +')')
		la_value = dw_1.ScrollToRow(11)
		wf_Output('ScrollPriorPage','11',string(dw_1.GetRow()),'dw_1.ScrollToRow(' + string(11) +')')
		la_value = dw_1.ScrollToRow(19)
		wf_Output('ScrollPriorPage','19',string(dw_1.GetRow()),'dw_1.ScrollToRow(' + string(19) +')')
	case "GetBandAtPointer"
		dw_1.dataobject = "d_group_method"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()		
//		SetCursorPos(UnitsToPixels(w_mdi.x + w_group.x + dw_1.x + PixelsToUnits(64,XPixelsToUnits!),XUnitsToPixels!),&
//		             UnitsToPixels(w_mdi.y + w_group.y + dw_1.y + PixelsToUnits(200,XPixelsToUnits!),YUnitsToPixels!))
		SetCursorPos(UnitsToPixels(w_group.x + dw_1.x + PixelsToUnits(64,XPixelsToUnits!),XUnitsToPixels!),&
		             UnitsToPixels(w_group.y + dw_1.y + PixelsToUnits(200,XPixelsToUnits!),YUnitsToPixels!))

		wf_Output('GetBandAtPointer','detail	3',f_string(dw_1.GetBandAtPointer()),'dw_1.GetBandAtPointer()')
end choose

end subroutine

public subroutine wf_datachange (string as_testitem);long ll_temp1,ll_temp2
choose case as_testitem
	case "Sort"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.SetSort("id A")
		dw_1.Sort()
		wf_Output('Sort','448',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('Sort','260',f_string(dw_1.GetItemNumber(20,"compute_2")),'dw_1.GetItemNubmer(20,"compute_2")=')
		
		dw_1.SetSort("id D")
		dw_1.Sort()
		wf_Output('Sort','448',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('Sort','270',f_string(dw_1.GetItemNumber(20,"compute_2")),'dw_1.GetItemNubmer(20,"compute_2")=')
		
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.SetSort("id A")		
		dw_1.Sort()
		dw_1.retrieve()
		wf_Output('Sort','260',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('Sort','448',f_string(dw_1.GetItemNumber(20,"compute_2")),'dw_1.GetItemNubmer(20,"compute_2")=')

		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.SetSort("id D")
		dw_1.Sort()
		dw_1.retrieve()
		wf_Output('Sort','260',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('Sort','448',f_string(dw_1.GetItemNumber(20,"compute_2")),'dw_1.GetItemNubmer(20,"compute_2")=')
	case "Filter"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.SetFilter("i_arg < 40")
		dw_1.Filter()
		wf_Output('Filter','448',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('Filter','448',f_string(dw_1.GetItemNumber(7,"compute_2")),'dw_1.GetItemNubmer(7,"compute_2")=')
		
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.SetFilter("i_arg > 40")
		dw_1.Filter()
		wf_Output('Filter','260',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		//result of pb is error. right result is 270, not 150. 
		wf_Output('Filter','150',f_string(dw_1.GetItemNumber(7,"compute_2")),'dw_1.GetItemNubmer(7,"compute_2")=')
		
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.SetFilter("i_arg < 40")
		dw_1.Filter()
		dw_1.retrieve()
		wf_Output('Filter','448',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('Filter','448',f_string(dw_1.GetItemNumber(7,"compute_2")),'dw_1.GetItemNubmer(7,"compute_2")=')

		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.SetFilter("i_arg > 40")
		dw_1.Filter()
		dw_1.retrieve()
		wf_Output('Filter','150',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") = ")
		wf_Output('Filter','260',f_string(dw_1.GetItemNumber(7,"compute_2")),'dw_1.GetItemNubmer(7,"compute_2")=')
	case "Rowscopy"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.setTransObject(sqlca)
		dw_1.retrieve()
		ll_temp1 = dw_1.GetItemNumber(1,"compute_2")
		ll_temp2 = dw_1.GetItemNumber(10,"compute_2")
		dw_1.RowsCopy(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Primary!)
		wf_Output('Rowscopy',string(ll_temp1 * 2),f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") =")
		wf_Output('Rowscopy',string(ll_temp2 * 2),f_string(dw_1.GetItemNumber(10,"compute_2")),'dw_1.GetItemNubmer(10,"compute_2")=')
	case "Rowsmove"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.setTransObject(sqlca)
		dw_1.retrieve()
		ll_temp1 = dw_1.GetItemNumber(1,"compute_2")
		ll_temp2 = dw_1.GetItemNumber(10,"compute_2")
		dw_1.RowsMove(dw_1.GetRow(),dw_1.RowCount(),Primary!,dw_1,1,Primary!)
		wf_Output('RowsMove',string(ll_temp1),f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") =")
		wf_Output('RowsMove',string(ll_temp2),f_string(dw_1.GetItemNumber(10,"compute_2")),'dw_1.GetItemNubmer(10,"compute_2")=')
	case "RowsDiscard"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.setTransObject(sqlca)
		dw_1.retrieve()
		ll_temp1 = dw_1.GetItemNumber(1,"compute_2")
		ll_temp2 = dw_1.GetItemNumber(10,"compute_2")
		dw_1.RowsDiscard(1,1,Delete!)
		wf_Output('RowsDiscard',string(ll_temp1),f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") =")
		wf_Output('RowsDiscard',string(ll_temp2),f_string(dw_1.GetItemNumber(10,"compute_2")),'dw_1.GetItemNubmer(10,"compute_2")=')
	case "Insert"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.InsertRow(1)
		wf_Output('InsertRow','null',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") =")
	case "Delete"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.deleterow(0)
		wf_Output('DeleteRow','200',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") =")
	case "SetItem"
		wf_resume()
		dw_1.dataobject = "d_group_sort"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.SetItem(1,"v_name","NAME2")
		wf_Output('SetItem','60',f_string(dw_1.GetItemNumber(1,"compute_2")),"dw_1.GetItemNumber(1,~"compute_2~") =")
end choose
end subroutine

public function integer wf_returnerror ();return ii_error
end function

on w_group.create
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
this.cb_1=create cb_1
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_1=create dw_1
this.dw_output=create dw_output
this.gb_4=create gb_4
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.lb_1=create lb_1
this.Control[]={this.dw_bak,&
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
this.cb_1,&
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

on w_group.destroy
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
destroy(this.cb_1)
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

type dw_bak from datawindow within w_group
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

type cbx_showright from checkbox within w_group
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

type cb_2 from commandbutton within w_group
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

type cb_run from commandbutton within w_group
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

dw_output.Reset()
ii_error = 0
st_message.text = ""

ls_Item = lb_testitems.text(lb_testitems.selectedindex())
ii_errornumber = 0
ii_rightnumber = 0
li_rowcount = dw_output.rowcount()
wf_message(ls_Item,"GroupDW")
wf_script(trim(mid(ls_item,pos(lb_testitems.text(lb_testitems.selectedindex()),"Group:") + 6)))
if ii_errornumber = 0 and not(cbx_right.checked) then
	dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
end if

cb_3.TriggerEvent(clicked!)
cb_3.text = "All"

//dw_1.modify("datawindow.zoom = 70")
//	ii_errornumber = 0
//	li_rowcount = dw_output.rowcount()
//	wf_message(ls_Item,"Group Datawindow")
//	if ii_errornumber = 0 then
//		dw_output.rowsdiscard(li_rowcount,li_rowcount + 9 + ii_errornumber,primary!)
//	end if
end event

type st_message from statictext within w_group
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

type lb_testitems from listbox within w_group
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
//this.additem(string(i,"00")+" Group Property")
//i += 1

this.additem(string(i,"00")+" Group: GroupDefinition")
i += 1
this.additem(string(i,"00")+" Group: GroupSortA")
i += 1
this.additem(string(i,"00")+" Group: GroupSortD")
i += 1
//this.additem(string(i,"00")+" Group: Reset Page CountT")
//i += 1
this.additem(string(i,"00")+" Group: Reset Page CountF")
i += 1
this.additem(string(i,"00")+" Group: New Page on Group BreakT")
i += 1
//this.additem(string(i,"00")+" Group: New Page on Group BreakF")
//i += 1
this.additem(string(i,"00")+" Group: AutoSize HeightT")
i += 1
this.additem(string(i,"00")+" Group: AutoSize HeightF")
i += 1


this.additem(string(i,"00")+" Group: avg")
i += 1
this.additem(string(i,"00")+" Group: count")
i += 1
this.additem(string(i,"00")+" Group: cumulativePercent")
i += 1
this.additem(string(i,"00")+" Group: cumulativeSum")
i += 1
this.additem(string(i,"00")+" Group: first")
i += 1
this.additem(string(i,"00")+" Group: last")
i += 1
this.additem(string(i,"00")+" Group: max")
i += 1
this.additem(string(i,"00")+" Group: min")
i += 1
this.additem(string(i,"00")+" Group: percent")
i += 1
this.additem(string(i,"00")+" Group: sum")
i += 1


//this.additem(string(i,"00")+" Group: Scroll")
//i += 1
this.additem(string(i,"00")+" Group: ScrollPriorPage")
i += 1
this.additem(string(i,"00")+" Group: ScrollNextPage")
i += 1
this.additem(string(i,"00")+" Group: ScrollPriorRow")
i += 1
this.additem(string(i,"00")+" Group: ScrollNextRow")
i += 1
this.additem(string(i,"00")+" Group: ScrollToRow")
i += 1
//this.additem(string(i,"00")+" Group: GetBandAtPointer")
//i += 1


this.additem(string(i,"00")+" Group: Sort")
i += 1
this.additem(string(i,"00")+" Group: Filter")
i += 1
this.additem(string(i,"00")+" Group: Rowscopy")
i += 1
this.additem(string(i,"00")+" Group: Rowsmove")
i += 1
this.additem(string(i,"00")+" Group: RowsDiscard")
i += 1
this.additem(string(i,"00")+" Group: Insert")
i += 1
this.additem(string(i,"00")+" Group: Delete")
i += 1
this.additem(string(i,"00")+" Group: SetItem")
i += 1

end event

event doubleclicked;//string ls_Item
//ls_Item = lb_testitems.text(index)
//ls_Item = trim(mid(ls_Item,pos(ls_Item," ")))
//wf_script(ls_Item)
cb_run.TriggerEvent(clicked!)
end event

type cb_autorun from commandbutton within w_group
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
	wf_message(ls_Item,"Group Datawindow")
	ls_Item = trim(mid(ls_Item,pos(ls_Item,"Group:") + 6))
	wf_script(ls_Item)
	f_outputtext(dw_output,ls_message)	
	if ii_errornumber = 0 and not(cbx_right.checked) then
		dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,primary!)
	end if
Next

end event

type cb_10 from commandbutton within w_group
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

type cb_3 from commandbutton within w_group
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

type cbx_right from checkbox within w_group
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

type cb_max from commandbutton within w_group
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

type cb_1 from commandbutton within w_group
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

type cb_sort from commandbutton within w_group
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

type cb_reset from commandbutton within w_group
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

type dw_1 from datawindow within w_group
integer x = 78
integer y = 476
integer width = 2551
integer height = 1732
integer taborder = 20
string title = "none"
string dataobject = "d_group_test"
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

type dw_output from datawindow within w_group
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

type gb_4 from groupbox within w_group
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

type gb_1 from groupbox within w_group
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

type gb_2 from groupbox within w_group
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

type gb_3 from groupbox within w_group
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

type lb_1 from listbox within w_group
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

