$PBExportHeader$w_composite.srw
forward
global type w_composite from window
end type
type cb_3 from commandbutton within w_composite
end type
type cb_2 from commandbutton within w_composite
end type
type cb_autorun from commandbutton within w_composite
end type
type dw_event from datawindow within w_composite
end type
type st_message from statictext within w_composite
end type
type lb_testitems from listbox within w_composite
end type
type cb_run from commandbutton within w_composite
end type
type cb_saveas from commandbutton within w_composite
end type
type cb_error from commandbutton within w_composite
end type
type cbx_right from checkbox within w_composite
end type
type cb_max from commandbutton within w_composite
end type
type cb_1 from commandbutton within w_composite
end type
type cb_sort from commandbutton within w_composite
end type
type cb_reset from commandbutton within w_composite
end type
type dw_output from datawindow within w_composite
end type
type gb_1 from groupbox within w_composite
end type
type gb_2 from groupbox within w_composite
end type
type gb_3 from groupbox within w_composite
end type
type gb_4 from groupbox within w_composite
end type
type dw_1 from datawindow within w_composite
end type
end forward

global type w_composite from window
integer width = 4658
integer height = 2388
boolean titlebar = true
string title = "Composite DataWindow Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_3 cb_3
cb_2 cb_2
cb_autorun cb_autorun
dw_event dw_event
st_message st_message
lb_testitems lb_testitems
cb_run cb_run
cb_saveas cb_saveas
cb_error cb_error
cbx_right cbx_right
cb_max cb_max
cb_1 cb_1
cb_sort cb_sort
cb_reset cb_reset
dw_output dw_output
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
gb_4 gb_4
dw_1 dw_1
end type
global w_composite w_composite

type variables
int ii_retrievestart = 0,ii_error = 0,ii_retrieverow = 0 ,ii_number = 1,ii_errornumber = 0,ii_rightnumber = 0
string is_event
end variables

forward prototypes
public function string wf_getvaluestring (datawindow adw_cur, long al_srow, long al_erow, long al_scol, long al_ecol, dwbuffer adw_buffer, boolean ab_orig_value)
public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type)
public function integer wf_firstrowonpage ()
public subroutine wf_datawindowobjectproperty ()
public subroutine wf_retrievalarg (integer ai_dataobject)
public subroutine wf_criteria ()
public subroutine wf_nest_arguments ()
public subroutine wf_otherfun ()
public subroutine wf_dwc_unsupport ()
public subroutine wf_dwc ()
public subroutine wf_computefield ()
public subroutine wf_runorsave (boolean ab_save, string as_value, string as_result, string as_flag)
public subroutine wf_event (boolean ab_save)
public subroutine wf_controlfun_unspport ()
public subroutine wf_controlfun ()
public subroutine wf_print ()
public subroutine wf_event_child (boolean ab_save)
public subroutine wf_testitem (boolean ab_init, boolean ab_save)
public subroutine wf_sharedata (boolean ab_save)
public subroutine wf_innerobject ()
public subroutine wf_nestreport_criteria ()
public subroutine wf_nestreport_nest_arguments ()
public subroutine wf_nestreport_dwc_unsupport ()
public subroutine wf_nestreport_dwc ()
public subroutine wf_nestreport_innerobject ()
public subroutine wf_nestreport_datawindowobjectproperty ()
public subroutine wf_nestreport_event (boolean ab_save)
public subroutine wf_nestreport_event_child (boolean ab_save)
public subroutine wf_performance ()
public subroutine wf_nestreport_print ()
public subroutine wf_performance_importdw ()
public subroutine wf_peformance_importdw_bak ()
public function integer wf_returnerror ()
public subroutine wf_message (string as_operate, string as_problem)
end prototypes

event ue_autorun();cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
cb_error.TriggerEvent(clicked!)
cb_saveas.TriggerEvent(clicked!)
cbx_right.checked = true
end event

public function string wf_getvaluestring (datawindow adw_cur, long al_srow, long al_erow, long al_scol, long al_ecol, dwbuffer adw_buffer, boolean ab_orig_value);long ll_row,ll_col
any la_value
string ls_return

for ll_row = al_srow to al_erow
	for ll_col = al_scol to al_ecol
		CHOOSE CASE Lower (left(adw_cur.Describe ("#"+string(ll_col) + ".ColType" ),5))
			CASE "char(", "char","strin"		//  CHARACTER DATATYPE
				la_value = adw_cur.GetItemString ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "date"					//  DATE DATATYPE
				la_value = adw_cur.GetItemDate ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "datet"				//  DATETIME DATATYPE
				la_value = adw_cur.GetItemDateTime ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "decim"				//  DECIMAL DATATYPE
				la_value = adw_cur.GetItemDecimal ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "numbe", "long", "ulong", "real", "int"				//  NUMBER DATATYPE	
				la_value = adw_cur.GetItemNumber ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE "time", "times"		//  TIME DATATYPE
				la_value = adw_cur.GetItemTime ( ll_row, ll_col, adw_buffer, ab_orig_value ) 
			CASE ELSE 
				la_value = 'null'
		END CHOOSE
		ls_return+= string(la_value)
	next
next

return ls_return
end function

public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type);string ls_message[]
//¸ÄsaveasË³Ðò
ls_message[]= {"Right","JS",as_type,as_OriValue}
if as_orivalue = "POP" then ls_message[1] = 'MessageBox'
as_Orivalue = f_replacetext(as_Orivalue," ","")
as_CurValue = f_replacetext(as_CurValue," ","")
if as_OriValue = as_CurValue then
	if cbx_right.checked then
		ii_rightnumber++
		f_outputtext(dw_output,ls_message)
	end if
else
	ii_error ++
	ii_errornumber++
	ls_message[1] = 'Error'
	ls_message[2] = 'PB'
	f_outputtext(dw_output,ls_message)
	ls_message[2] = 'JS'
	ls_message[4] = as_CurValue
	f_outputtext(dw_output,ls_message)
end if

st_message.text = "Error:"+string(ii_error)
//ÔÚµ±Ò³¿´µ½POPÐÅÏ¢
if as_orivalue = "POP" and  as_orivalue = as_curvalue then
	dw_output.scrolltorow(dw_output.rowcount())
end if
end subroutine

public function integer wf_firstrowonpage ();///*
//1.firstrowonpage
//2.lastrowonpage
//3.nested
//4.print.scale
//5.processing
//6.retrieval argument
//7.synatax.data
//*/
//
//dw_1.dataobject = "d_F158A45_dwprop01"
////dw_1.object.dw_1.dataobject = 'd_public_composite2'
//dw_1.settransobject(sqlca)
//
//dw_1.retrieve()
////ii_retrievestart = 2
////dw_1.retrieve()
////dw_1.retrieve()
////dw_1.retrieve()
////ii_retrievestart = 0
//messagebox("",dw_1.rowcount())
//any la_value
////1.firstrowonpage
////describe
//la_value = dw_1.Describe("Datawindow.FirstRowOnPage")
//wf_output('1',f_string(la_value),"FirstRowOnPage(describe): Level 1 ")
//la_value =  string(dw_1.object.dw_1.object.DataWindow.FirstRowOnPage)
//wf_output('1',f_string(la_value),"FirstRowOnPage(describe): Level 2 ")
//la_value = dw_1.object.dw_1.objet.dw_1.object.DataWindow.FirstRowOnPage
//wf_output('1',f_string(la_value),"FirstRowOnPage(describe): Level 3 ")
//
////dw_1.scrolltorow(10)
//la_value = dw_1.Describe("Datawindow.FirstRowOnPage")
//wf_output('1',f_string(la_value),"FirstRowOnPage(describe): Level 1 ")
//la_value =  string(dw_1.object.dw_1.object.DataWindow.FirstRowOnPage)
//wf_output('1',f_string(la_value),"FirstRowOnPage(describe): Level 2 ")
//la_value = dw_1.object.dw_1.objet.dw_1.object.DataWindow.FirstRowOnPage
//wf_output('1',f_string(la_value),"FirstRowOnPage(describe): Level 3 ")
//
////modify
//la_value = dw_1.modify("Datawindow.FirstRowOnPage = 5")
//wf_output('Line 1  Column 28: incorrect syntax.',f_string(la_value),"FirstRowOnPage(modify): Level 1 ")
//la_value =  dw_1.modify("dw_1.object.dw_1.object.DataWindow.FirstRowOnPage = 2")
//wf_output('Line 1  Column 52: incorrect syntax.',f_string(la_value),"FirstRowOnPage(modify): Level 2 ")
//la_value = dw_1.modify("dw_1.object.dw_1.objet.dw_1.object.DataWindow.FirstRowOnPage=3")
//wf_output('Line 1  Column 62: incorrect syntax.',f_string(la_value),"FirstRowOnPage(modify): Level 3 ")
//
////2.lastrowonpage
////describe
//la_value = dw_1.Describe("Datawindow.LastRowOnPage")
//wf_output('1',f_string(la_value),"LastRowOnPage(describe): Level 1 ")
//la_value =  string(dw_1.object.dw_1.object.DataWindow.FirstRowOnPage)
//wf_output('1',f_string(la_value),"LastRowOnPage(describe): Level 2 ")
//la_value = dw_1.object.dw_1.objet.dw_1.object.DataWindow.FirstRowOnPage
//wf_output('1',f_string(la_value),"LastRowOnPage(describe): Level 3 ")
//
////modify
//la_value = dw_1.modify("Datawindow.LastRowOnPage = 5")
//wf_output('Line 1  Column 27: incorrect syntax.',f_string(la_value),"LastRowOnPage(modify): Level 1 ")
//la_value =  dw_1.modify("dw_1.object.dw_1.object.DataWindow.LastRowOnPage = 2")
//wf_output('Line 1  Column 51: incorrect syntax.',f_string(la_value),"LastRowOnPage(modify): Level 2 ")
//la_value = dw_1.modify("dw_1.object.dw_1.objet.dw_1.object.DataWindow.LastRowOnPage=3")
//wf_output('Line 1  Column 61: incorrect syntax.',f_string(la_value),"LastRowOnPage(modify): Level 3 ")
//
//ls_arg = dw_1.Describe("Datawindow.Nested")
//dw_1.Modify("Datawindow.Nested = 5")
//
//				ls_arg = dw_1.Describe("Datawindow.Nested")
//				wf_output('Level 1 Nested: '+ls_arg,False)
//				ls_arg = dw_1.object.dw_1.object.DataWindow.Nested
//				wf_output('Level 2 Nested: '+ls_arg,False)
//				ls_arg = dw_1.object.dw_1.object.dw_1.Object.DataWindow.Nested
//				wf_output('Level 3 Nested: '+ls_arg,False)
//				
//				ls_arg = dw_1.Describe("Datawindow.Print.Scale")				
//				wf_output('Level 1 Print Scale: '+ls_arg,False)
//				ls_arg = dw_1.object.dw_1.object.DataWindow.Print.Scale
//				wf_output('Level 2 Print Scale: '+ls_arg,False)
//				ls_arg = dw_1.object.dw_1.obejct.dw_1.object.Datawindow.print.Scale
//				wf_output('Level 3 print scale: '+ls_arg,False)	
//				
//				dw_1.Modify("Datawindow.print.scale = 300")
//				ls_arg = dw_1.Describe("DataWindow.Print.Scale")
//				wf_output('Level 1 Print Scale : '+ls_arg,False)
//				wf_output('Please pay attention to change UI',False)
//				
//				dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
//				ls_arg = string(dw_1.object.dw_1.object.DataWindow.Print.Scale)
//				wf_output('Level 2 Print Scale: '+ls_arg,False)
//				wf_output('Please pay attention to change UI',False)


return 1
end function

public subroutine wf_datawindowobjectproperty ();// DataWindow object property
/* test function:
			Column.Count
			Print.preview
			ReadOnly
			QueryMode
			QuerySort
			table.sort
			firstrowonpage
			lastrowonpage
			nested
			print.scale
			processing
			//retrieval argument
			synatax.data
*/

any la_value
dw_1.dataobject = "d_F158A45_dwprop01"
dw_1.settransobject(sqlca)
dw_1.retrieve()

la_value = dw_1.Describe("DataWindow.Column.Count")
wf_output('1',f_string(la_value),'Column Count: level 1')
la_value = string(dw_1.object.dw_1.object.DataWindow.Column.Count)
wf_output('1',f_string(la_value),'Column Count: level 2')
la_value = dw_1.object.dw_1.object.dw_1.object.DataWindow.Column.Count
wf_output('8',f_string(la_value),'Column Count: level 3')

la_value = dw_1.Describe("DataWindow.Print.preview")
wf_output('yes',f_string(la_value),'Print preview: level 1')	
la_value = dw_1.object.dw_1.object.DataWindow.Print.Preview
wf_output('yes',f_string(la_value),'Print Preview: level 2')
la_value = dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Preview
wf_output('yes',f_string(la_value),'Print Preview: level 3')				

la_value = dw_1.Describe("DataWindow.ReadOnly")
wf_output('no',f_string(la_value),'ReadOnly: level 1')	
la_value = string(dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('no',f_string(la_value),'ReadOnly: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('no',f_string(la_value),'ReadOnly: level 3')

//
dw_1.Modify("DataWindow.ReadOnly = yes")
la_value = dw_1.Describe("DataWindow.ReadOnly")
wf_output('yes',f_string(la_value),'ReadOnly: level 1')
dw_1.object.dw_1.object.DataWindow.ReadOnly = 'yes'
la_value = string(dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('yes',f_string(la_value),'ReadOnly: level 3')
dw_1.object.dw_1.object.dw_1.object.DataWindow.ReadOnly ='yes'
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('yes',f_string(la_value),'ReadOnly: level 3')
//
la_value = dw_1.Describe("DataWindow.QueryMode")
wf_output('no',f_string(la_value),'QueryMode: level 1')
la_value = string(dw_1.object.dw_1.object.DataWindow.QueryMode)
wf_output('no',f_string(la_value),'QueryMode: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.QueryMode)
wf_output('no',f_string(la_value),'QueryMode: level 3')
//
la_value = dw_1.Describe("DataWindow.QuerySort")
wf_output('no',f_string(la_value),'QuerySort: level 1')
la_value = string(dw_1.object.dw_1.object.DataWindow.QuerySort)
wf_output('no',f_string(la_value),'QuerySort: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.QuerySort)
wf_output('no',f_string(la_value),'QuerySort: level 3')
//
la_value = dw_1.Describe("DataWindow.Table.Sort")
wf_output('?',f_string(la_value),'Table Sort: level 1')		
la_value = string(dw_1.object.dw_1.object.DataWindow.Table.Sort)
wf_output('?',f_string(la_value),'Table Sort: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Table.Sort)
wf_output('?',f_string(la_value),'Table Sort: level 3')
//
la_value = dw_1.Describe("Datawindow.FirstRowOnPage")
wf_output('1',f_string(la_value),'FirstRowOnPage: level 1')	
//la_value = string(dw_1.object.dw_1.object.DataWindow.FirstRowOnPage)
//wf_output('1',f_string(la_value),'FirstRowOnPage: level 2')
//la_value = string(dw_1.object.dw_1.objet.dw_1.object.DataWindow.FirstRowOnPage)
//wf_output('1',f_string(la_value),'FirstRowOnPage: level 3')
//
la_value = dw_1.Describe("Datawindow.LastRowOnPage")
wf_output('1',f_string(la_value),'LastRowOnPage: level 1')
//la_value = string(dw_1.object.dw_1.object.DataWindow.LastRowOnPage)
//wf_output('1',f_string(la_value),'LastRowOnPage: level 2')
//la_value = string(dw_1.Object.dw_1.object.dw_1.object.DataWindow.LastRowOnPage)
//wf_output('10',f_string(la_value),'LastRowOnPage: level 3')
//
la_value = dw_1.Describe("Datawindow.Nested")
wf_output('yes',f_string(la_value),'Nested: level 1')
la_value = dw_1.object.dw_1.object.DataWindow.Nested
wf_output('yes',f_string(la_value),'Nested: level 2')
la_value = dw_1.object.dw_1.object.dw_1.Object.DataWindow.Nested
wf_output('no',f_string(la_value),'Nested: level 3')
//
la_value = dw_1.Describe("Datawindow.Print.Scale")				
wf_output('0',f_string(la_value),'Print Scale: level 1')
la_value = dw_1.object.dw_1.object.DataWindow.Print.Scale
wf_output('0',f_string(la_value),'Print Scale: level 2')
la_value = dw_1.object.dw_1.obejct.dw_1.object.Datawindow.print.Scale
wf_output('0',f_string(la_value),'Print scale: level 3')				
//
dw_1.Modify("Datawindow.print.scale = 300")
la_value = dw_1.Describe("DataWindow.Print.Scale")
wf_output('300',f_string(la_value),'Print Scale : level 1')
//
dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.DataWindow.Print.Scale)
wf_output('300',f_string(la_value),'Print Scale: level 2')
//
dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale)			
wf_output('300',f_string(la_value),'Print Scale: level 3')	
//
dw_1.Modify("Datawindow.Print.Scale = 300")
la_value = dw_1.Describe("Datawindow.Print.Scale")
wf_output('300',f_string(la_value),'Print Scale: level 1')	
dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.DataWindow.Print.Scale)
wf_output('300',f_string(la_value),'Print Scale: level 2')
dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale)
wf_output('300',f_string(la_value),'Print Scale: level 3')
//
la_value = dw_1.Describe("Datawindow.Processing")
wf_output('5',f_string(la_value),'Processing: level 1')	
la_value = string(dw_1.object.dw_1.object.DataWindow.Processing)
wf_output('5',f_string(la_value),'Processing: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Processing)
wf_output('0',f_string(la_value),'Processing: level 3')

la_value = dw_1.Describe("Datawindow.Syntax.Data")
wf_output('data(null ) ',f_string(la_value),'Datawindow.Syntax.Data')



end subroutine

public subroutine wf_retrievalarg (integer ai_dataobject);	string ls_dataobject[] = {"d_F158A61_dwprop02","d_arg_default","d_arg_default1"}
	/*
	ai_dataobject: ²»Í¬µÄdataobject
	1 - argument expression...Ö¸¶¨²ÎÊý
	2 - argument expression...Ã»ÓÐÖ¸¶¨²ÎÊý(ÊÖ¹¤È¥µô)
	3 - argument expression...Ã»ÓÐÖ¸¶¨²ÎÊý
	*/


	any la_value
	//dw_1.dataobject = "d_F158A61_dwprop02"
	dw_1.settransobject(sqlca)
	//dw_1.retrieve()
	
	//Õý³£Çé¿ö
if ai_dataobject = 3 then wf_output('POP','POP','pop argumentwindow click "cancel"')
	dw_1.dataobject = ls_dataobject[ai_dataobject]
	dw_1.settransobject(sqlca)
	
	//retrieval argument
	//la_value = string(dw_1.retrieve('101',1980-01-01,280.50,'102'))
	//wf_output('1',f_string(la_value),string(ai_dataobject)+'RetrievalArgument Retrieve Return: ')

	
	//Ãû³ÆÏàÍ¬ÇÒ²ÎÊýÀàÐÍÒ²ÏàÍ¬
if ai_dataobject = 2 then wf_output('POP','POP','Nest arguments are incorrectly specified.')
	la_value = string(dw_1.retrieve('102',1980-01-01,220.50,'101'))
	wf_output('1',f_string(la_value),string(ai_dataobject)+'RetrievalArgument Retrieve rows: ')			
	
	
	//ÀàÐÍString¸ÄÎªNumber
	wf_output('POP','POP','Retrieve argument 4 does not match expected type.')
	la_value = string(dw_1.retrieve('102',1980-01-01,220.50,101))
	wf_output('-1',f_string(la_value),string(ai_dataobject)+'RetrievalArgument TypeNotMatch Retrieve rows: ')				
	
	
	//ÀàÐÍNumber¸ÄString
	wf_output('POP','POP','Retrieve argument 1 does not match expected type.')
	la_value = string(dw_1.retrieve(102,1980-01-01,220.50,'102'))
	wf_output('-1',f_string(la_value),string(ai_dataobject)+'RetrievalArgument TypeNotMatch Retrieve rows: ')
	
	//Retrieveº¯ÊýÓëRetrievalÊôÐÔ²ÎÊýÀàÐÍ²»Æ¥Åä
	wf_output('POP','POP','Retrieve argument 3 does not match expected type.')
	la_value = string(dw_1.retrieve('102',1980-01-01,'220.50','103'))
	wf_output('-1',f_string(la_value),string(ai_dataobject)+'RetrievalArgument TypeNotMatch Retrieve rows: ')
	
if ai_dataobject = 3 then wf_output('POP','POP','pop argumentwindow click "cancel"')		
	//²ÎÊý¸öÊý²»ÏàµÈ£¬Retrieve²ÎÊý¶à
	if ai_dataobject = 2 then 	wf_output('POP','POP','Nest arguments are incorrectly specified.')
	la_value = string(dw_1.retrieve('101',1980-01-01,280.50,'103','105'))
	wf_output('1',f_string(la_value),string(ai_dataobject)+'RetrievalArgument LessArg Retrieve rows: ')
	
	
	//²ÎÊý¸öÊý²»ÏàµÈ£¬Retrieve²ÎÊýÉÙ
	wf_output('POP','POP','Expecting 4 retrieval arguments but got 2.')
	la_value = string(dw_1.retrieve('101',1980-01-01))
	wf_output('-1',f_string(la_value),string(ai_dataobject)+'RetrievalArgument Retrieve rows: ')				
	


end subroutine

public subroutine wf_criteria ();any la_value
dw_1.dataobject = "d_F158A45_dwprop01"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//»ñÈ¡CriteriaÊôÐÔµÄ³õÊ¼Öµ
	
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("",f_string(la_value),"01 dw_1.Describe('dw_1.Criteria') = ")
//¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊý
	
	dw_1.Modify("dw_1.Criteria = '>104'")
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output(">104",f_string(la_value),"02 dw_1.Describe('dw_1.Criteria') = ")
	
//µã²Ù×÷ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊý
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.object.dw_1.Criteria = '>104~t~t=~'M~''
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	//wf_Output(">104		='M'",f_string(la_value),"03 dw_1.Describe('dw_1.Criteria') = ")
	
//¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊýÎª×Ö·ûÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '101~n102'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("101~n102",f_string(la_value),"04 dw_1.Describe('dw_1.Criteria') = ")
	
// ¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊýÎªÊý×ÖÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '~t~t~t~t~t200.00~n~t~t~t~t~t220.50'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("~t~t~t~t~t200.00~n~t~t~t~t~t220.50",f_string(la_value),"05 dw_1.Describe('dw_1.Criteria') = ")
	
// ¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊýÎªÈÕÆÚÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '~t~t~t~t1/1/1980~n~t~t~t~t1/3/1980'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("~t~t~t~t1/1/1980~n~t~t~t~t1/3/1980",f_string(la_value),"06 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÍ¬Ò»×Ö¶ÎµÄ¶à¸ö²ÎÊýÖµÖ®¼äµÄÓë»ò¹ØÏµ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '101~n102~n103~n104'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("101~n102~n103~n104",f_string(la_value),"07 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÍ¬Ò»ÐÐÉèÖÃ¶à¸ö×Ö¶ÎµÄÓë»ò¹ØÏµ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~tNAME10~tM~t50'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~tNAME10~tM~t50",f_string(la_value),"08 dw_1.Describe('dw_1.Criteria') = ")
	
//ÔÚÍ¬Ò»×Ö¶ÎµÄ¶à¸öÖµÖÐÉèÖÃÒ»¸ö´íÎóµÄÊý¾Ý
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '101~n25~n103'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("101~n25~n103",f_string(la_value),"09 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÔÚÍ¬Ò»ÐÐÖÐÉèÖÃÒ»¸ö´íÎóµÄÊý¾Ý
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~tok~tM~t50'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~tok~tM~t50",f_string(la_value),"10 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÃ¿¸ö×Ö¶Î×î¶à¿ÉÒÔÉèÖÃ24¸ö¹ýÂËÌõ¼þ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n",f_string(la_value),"11 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔ×Ö¶Î´óÓÚ24¸ö¹ýÂËÌõ¼þµÄÇé¿ö
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n103~n'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n103~n",f_string(la_value),"12 dw_1.Describe('dw_1.Criteria') = ")
	
//¶¯Ì¬ÉèÖÃ¶ÔÓ¦×Ö¶ÎÖµµÄÀàÐÍÎªÆäËü´íÎóÀàÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '~t~t~tname01'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("~t~t~tname01",f_string(la_value),"13 dw_1.Describe('dw_1.Criteria') = ")
	
//¶¯Ì¬ÉèÖÃÍ¬Ò»×Ö¶Î¶à¸öÏàÍ¬µÄÖµ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~n101~n100~n100~n'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~n101~n100~n100~n",f_string(la_value),"14 dw_1.Describe('dw_1.Criteria') = ")

	dw_1.dataobject = "d_f158a05_detailprop01"//"d_F158A45_dwprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()	
	
//dataobject
//»ñÈ¡reportÊôÐÔµÄ³õÊ¼Öµ

	la_value = dw_1.describe("dw_1.dataobject")
	wf_Output("d_public_composite1",f_string(la_value),"15 dw_1.Describe('dw_1.dataobject') = ")
	
//ÓÃº¯Êý¶¯Ì¬ÐÞ¸ÄreportÊôÐÔ

	dw_1.Modify("dw_1.dataobject = 'd_public_composite2'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.dataobject")
	wf_Output("d_public_composite2",f_string(la_value),"16 dw_1.Describe('dw_1.dataobject') = ")
	la_value = dw_1.Describe("dw_1.visible")
	wf_Output("1",f_string(la_value),"inner dw_1.visible') = ")

//ÓÃµã²Ù×÷¶¯Ì¬ÐÞ¸ÄreportÊôÐÔ

	dw_1.Object.dw_1.dataobject = 'd_public_composite2'
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.dataobject")
	wf_Output("d_public_composite2",f_string(la_value),"17 dw_1.Describe('dw_1.dataobject') = ")
	

//reportname.Height.Autosize
	
	la_value = dw_1.Describe("dw_1.Height.Autosize")
	wf_Output("yes",f_string(la_value),"18 dw_1.Describe('dw_1.Height.Autosize') = ")
	
	la_value = dw_1.modify("dw_1.Height.Autosize = 'no'")
	wf_Output("",f_string(la_value),"19 dw_1.modify('dw_1.Height.Autosize') = ")
	
	la_value = dw_1.Describe("dw_1.Height.Autosize")
	wf_Output("no",f_string(la_value),"20 dw_1.Describe('dw_1.Height.Autosize') = ")
////Movable
//	la_value = dw_1.Describe("dw_1.Movable")
//	wf_Output("!",f_string(la_value),"21 dw_1.Describe('dw_1.Movable') = ")
//	
//	la_value = dw_1.modify("dw_1.Movable = 'yes'")
//	wf_Output("",f_string(la_value),"22 dw_1.modify('dw_1.Movable') = ")
//	
//	la_value = dw_1.Describe("dw_1.Movable")
//	wf_Output("yes",f_string(la_value),"23 dw_1.Describe('dw_1.Movable') = ")

end subroutine

public subroutine wf_nest_arguments ();	any la_value
	string ls_value
	dw_1.dataobject = "d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()

//nest_argument
//»ñÈ¡Nest_ArgumentsÊôÐÔµÄ³õÊ¼Öµ

	la_value = dw_1.describe("dw_1.nest_arguments")
	wf_Output('?',f_string(la_value),"01 Describe('dw_1.nest_arguments') = ")

//Êý¾Ý¶ÔÏóÎªÒ»¸ö²ÎÊýÇé¿ö£¬ÇÒRetrieve²»´øÈÎºÎ²ÎÊý
	la_value = 	dw_1.Retrieve()
	wf_Output('1',f_string(la_value),"02 nest_arguments retrieve return: ")

//Êý¾Ý¶ÔÏóÎªÒ»¸ö²ÎÊýÇé¿ö£¬ÇÒNest_ArgumentsÊôÐÔÖµ±»Çå³ý

	la_value = dw_1.Retrieve('101')
	wf_Output('1',f_string(la_value),"03 nest_arguments retrieve return: ")
	
//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔ
	dw_1.Modify("dw_1.nest_arguments = ((~" as_id ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.Retrieve('101')
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~" as_id ~"))',f_string(la_value),"04 Describe('dw_1.nest_arguments') = ")



//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔÎª101
	dw_1.Modify("dw_1.nest_arguments = ((~" 101 ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.Retrieve('101')
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~" 101 ~"))',f_string(la_value),"05 Describe('dw_1.nest_arguments') = ")



//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔÎª¶à¸öÖµ
	dw_1.Modify("dw_1.nest_arguments = ((~" as_id ~"),(~" 101 ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.Retrieve('101')
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~" as_id ~"),(~" 101 ~"))',f_string(la_value),"06 Describe('dw_1.nest_arguments') = ")
	
//	dw_1.dataobject = "d_F158A05_detailprop01"
//	dw_1.settransobject(sqlca)
//	dw_1.retrieve()

//»ñÈ¡ReprtÊý¾Ý¶ÔÏó¶à²ÎÊýµÄ³õÊ¼Öµ
	la_value = dw_1.describe("dw_1.nest_arguments")
	wf_Output('((~" as_id ~"),(~" 101 ~"))',f_string(la_value),"07 Describe('dw_1.nest_arguments') = ")

//Retrieveº¯Êý¶ÔNest_ArgumentsÊôÐÔµÄÓ°Ïì

	la_value = dw_1.retrieve('101',1980-01-01)
	wf_Output('1',f_string(la_value),"08 nest_arguments retrieve return: ")
//Report¶ÔÏóµÄNest_ArgumentsÊôÐÔÃ»ÓÐ²ÎÊý

	la_value = dw_1.retrieve('101',1980-01-01,280.50)
	wf_Output('1',f_string(la_value),"09 nest_arguments retrieve return: ")

//¶¯Ì¬ÉèÖÃReport¶ÔÏóµÄNest_ArgumentsÊôÐÔ

	dw_1.Modify("dw_1.Nest_Arguments = ((~"as_id~"),(~"ad_date~"),(~"an_num~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.retrieve('101',1980-01-01,280.50)
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~"as_id~"),(~"ad_date~"),(~"an_num~"))',f_string(la_value),"10 Describe('dw_1.nest_arguments') = ")


//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔ²ÎÊýÎª±í´ïÊ½
	dw_1.Modify("dw_1.Nest_Arguments = ((~"as_id~"),(~"ad_date~"),(~" abs(-100) +  an_num ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.retrieve('101',1980-01-01,180.50)
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~"as_id~"),(~"ad_date~"),(~" abs(-100) +  an_num ~"))',f_string(la_value),"11 Describe('dw_1.nest_arguments') = ")


//¾²Ì¬ÉèÖÃNest_ArgumentsÊôÐÔ²ÎÊýÎª±í´ïÊ½ÖÐº¬ÓÐ¼ÆËãÁÐ
	la_value = dw_1.Retrieve('101')
	wf_Output('1',f_string(la_value),"12 nest_arguments retrieve return: ")
//newpage	
	la_value = dw_1.describe("dw_1.newpage")
	wf_Output('no',f_string(la_value),"01 dw_1.newpage: ")
	
	la_value = dw_1.modify("dw_1.newpage = yes")
	wf_Output('',f_string(la_value),"02 modify newpage: ")
	
	la_value = dw_1.describe("dw_1.newpage")
	wf_Output('yes',f_string(la_value),"03 newpage: ")
	
//Resizeable
	la_value = dw_1.describe("dw_1.Resizeable")
	wf_Output('0',f_string(la_value),"01 dw_1.Resizeable: ")
	
	la_value = dw_1.modify("dw_1.Resizeable = yes")
	ls_value = f_string(la_value)
	ls_value = mid(ls_value,1,4)
	wf_Output('Line',ls_value,"02 modify Resizeable: ")
	
	la_value = dw_1.describe("dw_1.Resizeable")
	wf_Output('0',f_string(la_value),"03 Resizeable: ")
//Trail_Footer
	la_value = dw_1.describe("dw_1.Trail_Footer")
	wf_Output('yes',f_string(la_value),"01 dw_1.Trail_Footer: ")
	
	la_value = dw_1.modify("dw_1.Trail_Footer = no")
	wf_Output('',f_string(la_value),"02 modify Trail_Footer: ")
	
	la_value = dw_1.describe("dw_1.Trail_Footer")
	wf_Output('no',f_string(la_value),"03 Trail_Footer: ")
//¶à¼¶µã²Ù×÷
/**/
	
end subroutine

public subroutine wf_otherfun ();//	Attributes	ÓëÆäËüColumn¶ÔÏó·µ»ØÖµÒ»Ñù
//Name	a
//Type	column
//Visible	0

	dw_1.dataobject = "d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	
	any la_value
	la_value = dw_1.describe("a.Attributes")
	string ls_attributes = "accelerator	alignment	attributes	band	bitmapname	border	checkbox.3d	checkbox.lefttext	checkbox.off	checkbox.on	checkbox.other	checkbox.scale	checkbox.text	checkbox.threed	color	coltype	compute	criteria.dialog	criteria.override_edit	criteria.required	dbname	dddw.allowedit	dddw.autohscroll	dddw.autoretrieve	dddw.case	dddw.datacolumn	dddw.displaycolumn	dddw.hscrollbar	dddw.hsplitscroll	dddw.imemode	dddw.limit	dddw.lines	dddw.name	dddw.nilisnull	dddw.percentwidth	dddw.required	dddw.showlist	dddw.useasborder	dddw.vscrollbar	ddlb.allowedit	ddlb.autohscroll	ddlb.case	ddlb.imemode	ddlb.limit	ddlb.nilisnull	ddlb.required	ddlb.showlist	ddlb.sorted	ddlb.useasborder	ddlb.vscrollbar	edit.autohscroll	edit.autoselect	edit.autovscroll	edit.case	edit.codetable	edit.displayonly	edit.focusrectangle	edit.format	edit.hscrollbar	edit.imemode	edit.limit	edit.name	edit.nilisnull	edit.password	edit.required	edit.style	edit.validatecode	edit.vscrollbar	editmask.autoskip	editmask.codetable	editmask.focusrectangle	editmask.imemode	editmask.mask	editmask.readonly	editmask.required	editmask.spin	editmask.spinincr	editmask.spinrange	editmask.useformat	format	height	height.autosize	html.appendedhtml	html.link	html.linkargs	html.linktarget	html.valueishtml	id	identity	initial	key	lineremove	moveable	multiline	name	pointer	protect	radiobuttons.3d	radiobuttons.columns	radiobuttons.lefttext	radiobuttons.scale	radiobuttons.threed	resizeable	righttoleft	row_in_detail	slideleft	slideup	tabsequence	tag	type	update	updatewhereclause	useinternalleading	validation	validationmsg	values	visible	width	width.autosize	x	y	background.color	background.mode	font.charset	font.escapement	font.face	font.family	font.height	font.italic	font.orientation	font.pitch	font.strikethrough	font.underline	font.weight	font.width"
	wf_Output(ls_attributes,f_string(la_value),"01 a.Attributes: ")
	
	la_value = dw_1.describe("a.Name")
	wf_Output('a',f_string(la_value),"01 a.Name: ")
	
	la_value = dw_1.describe("a.Type")
	wf_Output('column',f_string(la_value),"01 a.Type: ")
	
	la_value = dw_1.describe("a.Visible")
	wf_Output('0',f_string(la_value),"01 a.Visible: ")
	//#1Ò²ÊÇÒ»ÑùµÄ
	la_value = dw_1.describe("#1.Attributes")
	wf_Output(ls_attributes,f_string(la_value),"01 1#.Attributes: ")
	
	la_value = dw_1.describe("#1.Name")
	wf_Output('a',f_string(la_value),"01 1#.Name: ")
	
	la_value = dw_1.describe("#1.Type")
	wf_Output('column',f_string(la_value),"01 1#.Type: ")
	
	la_value = dw_1.describe("#1.Visible")
	wf_Output('0',f_string(la_value),"01 1#.Visible: ")
	
//	la_value = dw_1.modify("dw_1.Trail_Footer = yes")
//	wf_Output('',f_string(la_value),"02 modify Trail_Footer: ")
//	
//	la_value = dw_1.describe("dw_1.Trail_Footer")
//	wf_Output('',f_string(la_value),"03 Trail_Footer: ")
end subroutine

public subroutine wf_dwc_unsupport ();/*
	GetClickedColumn	-1	ÒòÎªDataWindow´¦ÓÚPrintPreview×´Ì¬£¬ËùÒÔÎÞ·¨È¡µÃµã»÷µÄColumn
	GetClickedRow	-1	Ô­ÒòÍ¬ÉÏ
	GetColumn	0	ÒòÎªÎÞ·¨¶ÔReportÄÚµÄÊý¾Ý²Ù×÷£¬ËùÒÔ²»Ö§³Ö
	GetColumnName	""	Ã»ÓÐµ±Ç°ÁÐ£¬ËùÒÔÒ²ÎÞ·¨È¡Öµ
	GetParent		·µ»ØµÄ¶ÔÏóÊ¹ÓÃIsNull()ºÍIsValidÅÐ¶Ï£¬·µ»ØÖµÎªFalse
	GetRow	0	ÐÐ½¹µã²»»á±ä»¯
	GetRowFromRowID	0	
	GetRowIDFromRow	-1	
	GetSelectedRow	0	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	GetText	""	Ã»ÓÐµ±Ç°ÐÐ¡¢ÁÐ£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	GetTrans	-1	
	IsSelected	False	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	SelectRow	-1	PrintPreview×´Ì¬ÏÂ£¬ÎÞ·¨SelectRow
	SetColumn	-1	
	SetDetailHeight	-1	
	SetRow	-1	
	SetRowFocusIndicator	-1	ÎÞ·¨¶ÔÐÐ½øÐÐUI²Ù×÷£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
*/
any la_value
	
	dw_1.dataobject = "d_nest_objectproperty"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	
	
//	//Òªgetchild²ÅÄÜ¸Ä:
//	la_value = dw_1.modify("dw_1.object.DataWindow.zoom = 80")
//	wf_Output('Line 1  Column 30: incorrect syntax.',f_string(la_value),"03 modify report zoom = 80: ")
	
	datawindowchild ldw_child
	dw_1.GetChild('dw_1', ldw_child)	


//	GetClickedColumn	-1	ÒòÎªDataWindow´¦ÓÚPrintPreview×´Ì¬£¬ËùÒÔÎÞ·¨È¡µÃµã»÷µÄColumn
	la_value = ldw_child.GetClickedColumn()
	wf_Output('-1',f_string(la_value),"GetClickedColumn return:")
	
//	GetClickedRow	-1	Ô­ÒòÍ¬ÉÏ
	la_value = ldw_child.GetClickedRow()
	wf_Output('-1',f_string(la_value),"GetClickedRow return:")
	
//	GetColumn	0	ÒòÎªÎÞ·¨¶ÔReportÄÚµÄÊý¾Ý²Ù×÷£¬ËùÒÔ²»Ö§³Ö
	la_value = ldw_child.GetColumn()
	wf_Output('0',f_string(la_value),"GetColumn return:")
	
//	GetColumnName	""	Ã»ÓÐµ±Ç°ÁÐ£¬ËùÒÔÒ²ÎÞ·¨È¡Öµ
	la_value = ldw_child.GetColumnName()
	wf_Output('',f_string(la_value),"GetColumnName return:")
	
//	GetParent		·µ»ØµÄ¶ÔÏóÊ¹ÓÃIsNull()ºÍIsValidÅÐ¶Ï£¬·µ»ØÖµÎªFalse
//	la_value = ldw_child.GetParent()
//	wf_Output('',f_string(la_value),"GetParent return:")
	
//	GetRow	0	ÐÐ½¹µã²»»á±ä»¯
	la_value = ldw_child.GetRow()
	wf_Output('0',f_string(la_value),"GetRow return:")
	
//	GetRowFromRowID	0
	la_value = ldw_child.GetRowFromRowID(2)
	wf_Output('0',f_string(la_value),"GetRowFromRowID return:")
//PBµÄÖµÀÏÊÇ±ä£¬×¢ÊÍµô
////	GetRowIDFromRow	-1	
//	la_value = ldw_child.GetRowIDFromRow(3)
//	wf_Output('46768284',f_string(la_value),"GetRowIDFromRow return:")
	
//	GetSelectedRow	0	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	la_value = ldw_child.GetSelectedRow(1)
	wf_Output('-1',f_string(la_value),"GetSelectedRow return:")
	
//	GetText	""	Ã»ÓÐµ±Ç°ÐÐ¡¢ÁÐ£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	la_value = ldw_child.GetText()
	wf_Output('',f_string(la_value),"GetText return:")
	
////	GetTrans	-1	
//	transaction object1
//	
//	object1 = CREATE transaction
//	la_value = ldw_child.GetTrans(object1)
//	wf_Output('-1',f_string(la_value),"GetTrans return:")
//	destroy object1
	
//	IsSelected	False	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	la_value = ldw_child.IsSelected(1)
	wf_Output('false',f_string(la_value),"IsSelected return:")
	
//	SelectRow	-1	PrintPreview×´Ì¬ÏÂ£¬ÎÞ·¨SelectRow
	la_value = ldw_child.SelectRow(1,true)
	wf_Output('1',f_string(la_value),"SelectRow return:")
	
//	SetColumn	-1	
	la_value = ldw_child.SetColumn(2)
	wf_Output('null',f_string(la_value),"SetColumn return:")
	
////	SetDetailHeight	-1	
//	la_value = ldw_child.SetDetailHeight(2, 3, 0)
//	wf_Output('-1',f_string(la_value),"SetDetailHeight return:")
	
//	SetRow	-1	
	la_value = ldw_child.SetRow(1)
	wf_Output('-1',f_string(la_value),"SetRow return:")
	
////	SetRowFocusIndicator	-1	ÎÞ·¨¶ÔÐÐ½øÐÐUI²Ù×÷£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
//	la_value = ldw_child.SetRowFocusIndicator("handle!")
//	wf_Output('-1',f_string(la_value),"SetRowFocusIndicator return:")

end subroutine

public subroutine wf_dwc ();	any la_value
	
	dw_1.dataobject = "d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	

	datawindowchild ldw_child
	dw_1.GetChild('dw_1', ldw_child)	

/*
Ö§³Ö²¿·Ý
deleterow
getbandatpoint 
getobjectatpoint
ImportClipboard¡¢ImportFile¡¢ImportString
insertrow
reset
rowscopy
rowsdiscard
rowsmove
scroll
*/
	la_value = ldw_child.rowcount()
	wf_Output('10',f_string(la_value),"rowcount return:")
	
//deleterow
	la_value = ldw_child.deleterow(2)
	wf_Output('1',f_string(la_value),"SelectRow return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('9',f_string(la_value),"rowcount return:")

//ÕâÁ½¸öº¯ÊýÔËÐÐPB»áÍË³ö
////getbandatpoint 
//	la_value = ldw_child.getbandatpointer()
//	wf_Output('-1',f_string(la_value),"getbandatpoint return:")
////getobjectatpoint
//	la_value = ldw_child.getobjectatpointer()
//	wf_Output('-1',f_string(la_value),"getobjectatpoint return:")
////ImportClipboard¡¢ImportFile¡¢ImportString
//insertrow
	la_value = ldw_child.insertrow(0)
	wf_Output('10',f_string(la_value),"insertrow return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('10',f_string(la_value),"rowcount return:")

//rowscopy
	la_value = ldw_child.rowscopy(1,ldw_child.rowcount(),primary!,ldw_child,1,Primary!)
	wf_Output('1',f_string(la_value),"rowscopy return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('20',f_string(la_value),"rowcount return:")
	
//rowsdiscard
	la_value = ldw_child.rowsdiscard(1,1,primary!)
	wf_Output('1',f_string(la_value),"rowsdiscard return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('19',f_string(la_value),"rowcount return:")
//rowsmove
	la_value = ldw_child.rowsmove(1,ldw_child.rowcount(),primary!,ldw_child,1,filter!)
	wf_Output('1',f_string(la_value),"rowsmove return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")
	
//scroll
//ScrollNextPage¡¢ScrollPriorPage¡¢ScrollNextRow¡¢ScrollPriorRow
	la_value = ldw_child.ScrollNextPage()
	//wf_Output('1',f_string(la_value),"ScrollNextPage return:")
	
	la_value = ldw_child.ScrollPriorPage()
	//wf_Output('1',f_string(la_value),"ScrollPriorPage return:")
	
	la_value = ldw_child.ScrollNextRow()
	//wf_Output('1',f_string(la_value),"ScrollNextRow return:")
	
	la_value = ldw_child.ScrollPriorRow()
	//wf_Output('1',f_string(la_value),"ScrollPriorRow return:")
	
	//reset
	la_value = ldw_child.reset()
	wf_Output('1',f_string(la_value),"reset return:")
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")

end subroutine

public subroutine wf_computefield ();any la_value
dw_1.dataobject = "d_computefield"
dw_1.settransobject(sqlca)
dw_1.retrieve()


long ll_row = 1,i
string ls_coltype,ls_expression,ls_compute[],ls_name
//dw_1.Height.Autosize = 'yes'
string ls_computePB[]={"1","12","1","1","1"} 

//dw_1.Scrollnextpage()
//dw_1.Scrollnextpage()
//dw_1.Scrollnextpage()

for i=1 to 5//computefield
	
	ls_name = "compute_"+string(i - 1)
	ls_coltype = dw_1.Describe(ls_name+".ColType")
	ls_expression=dw_1.Describe(ls_name+".Expression")

	choose case lower(left(ls_coltype,5))//È¡¼ÆËãÁÐµÄÖµ
		case "char"
				ls_compute[i] =  dw_1.getitemstring(ll_row,ls_name,primary!,false)

		case "date"
				ls_compute[i] = string(dw_1.getitemdate(ll_row,ls_name,primary!,false),'yyyy-mm-dd')

		case "datet"
				ls_compute[i] = string(dw_1.getitemdatetime(ll_row,ls_name,primary!,false),'yyyy-mm-dd hh:mm:ss')

		case "time"
				ls_compute[i] = string(dw_1.getitemtime(ll_row,ls_name,primary!,false),'hh:mm:ss')

		case else
				ls_compute[i] = f_string(dw_1.getitemnumber(ll_row,ls_name,primary!,false))
				
	end choose
	
	la_value = ls_compute[i]
	wf_Output(ls_computePB[i],f_string(la_value),ls_expression)
	
next

//dw_1.Height.Autosize = 'no'
la_value = dw_1.modify("dw_1.Height.Autosize = 'no'")
wf_Output("",f_string(la_value),"dw_1.modify('dw_1.Height.Autosize') = no")
ls_computePB[]={"1","12","1","1","1"} 
for i=1 to 5//computefield
	
	ls_name = "compute_"+string(i - 1)
	ls_coltype = dw_1.Describe(ls_name+".ColType")
	ls_expression=dw_1.Describe(ls_name+".Expression")

	choose case lower(left(ls_coltype,5))//È¡¼ÆËãÁÐµÄÖµ
		case "char"
				ls_compute[i] =  dw_1.getitemstring(ll_row,ls_name,primary!,false)

		case "date"
				ls_compute[i] = string(dw_1.getitemdate(ll_row,ls_name,primary!,false),'yyyy-mm-dd')

		case "datet"
				ls_compute[i] = string(dw_1.getitemdatetime(ll_row,ls_name,primary!,false),'yyyy-mm-dd hh:mm:ss')

		case "time"
				ls_compute[i] = string(dw_1.getitemtime(ll_row,ls_name,primary!,false),'hh:mm:ss')

		case else
				ls_compute[i] = f_string(dw_1.getitemnumber(ll_row,ls_name,primary!,false))
				
	end choose
	
	la_value = ls_compute[i]
	wf_Output(ls_computePB[i],f_string(la_value),ls_expression)
	
next

end subroutine

public subroutine wf_runorsave (boolean ab_save, string as_value, string as_result, string as_flag);string ls_oldresult
//wf_runorsave(false,"","","")


//±£´æÊý¾Ý
if ab_save then
	//value = :as_value and result = :as_result and
	Delete from composite_fun where  flag = :as_flag;
	Insert into composite_fun(value,result,flag) values(:as_value,:as_result,:as_flag);
	commit;
	
//±È½ÏÊý¾Ý
else
	select result into :ls_OldResult from composite_fun where flag = :as_flag and value = :as_value;
	if (sqlca.sqlcode = 100 or sqlca.sqlcode < 0 ) then ls_oldresult = 'error'
	wf_output(ls_oldresult,as_result,as_value)
end if


is_event = ""




	
end subroutine

public subroutine wf_event (boolean ab_save);//delete from composite_fun;
integer li_count
dw_event.dataobject="d_computefield"
dw_event.settransobject(sqlca)
is_event = ""
dw_event.Retrieve()
//wf_runorsave(ab_save,"Retrieve hasdata",is_event,"1")

//dw_event.Resize(dw_event.width - 10,dw_event.height - 10)
//wf_runorsave(ab_save,"Resize hasdata",is_event,"2")

dw_event.reset()
dw_event.InsertRow(-1)
wf_output("POP","POP","DataWindow does not have UPDATE capability.")
dw_event.update()
//wf_runorsave(ab_save,"update 1 nodata",is_event,"3")

dw_event.reset()
dw_event.InsertRow(0)

wf_runorsave(ab_save,"InsertRow 0 nodata",is_event,"4")

dw_event.reset()
dw_event.InsertRow(10)

wf_runorsave(ab_save,"InsertRow 10 nodata",is_event,"5")

dw_event.reset()
dw_event.InsertRow(1000)

wf_runorsave(ab_save,"InsertRow 1000 nodata",is_event,"6")

dw_event.reset()
dw_event.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow nodata",is_event,"7")

dw_event.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow nodata",is_event,"8")

dw_event.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage nodata",is_event,"9")
//
dw_event.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage nodata",is_event,"10")


dw_event.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10 nodata",is_event,"11")

dw_event.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1 nodata",is_event,"12")

dw_event.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0 nodata",is_event,"13")


dw_event.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,nodata",is_event,"14")

dw_event.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,nodata",is_event,"15")
dw_event.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,nodata",is_event,"16")

dw_event.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,nodata",is_event,"17")


dw_event.SetSort('dept_id A')
dw_event.Sort()
wf_runorsave(ab_save,"Sort ,nodata",is_event,"18")

wf_output("POP","POP","Types of expressions must match.")
dw_event.SetFilter("#1 = 100")
dw_event.Filter()
wf_runorsave(ab_save,"Filter ,nodata",is_event,"19")

dw_event.RowsDiscard(1,2,delete!)
wf_runorsave(ab_save,"RowsDiscard delete!,nodata",is_event,"20")
dw_event.RowsDiscard(1,2,filter!)
wf_runorsave(ab_save,"RowsDiscard filter!,nodata",is_event,"21")
dw_event.RowsDiscard(1,2,primary!)
wf_runorsave(ab_save,"RowsDiscard primary!,nodata",is_event,"22")

dw_event.Reset()
wf_runorsave(ab_save,"Reset ,nodata",is_event,"23")

dw_event.Retrieve()
dw_event.InsertRow(-1)
wf_runorsave(ab_save,"InsertRow -1,hasdata",is_event,"24")

dw_event.InsertRow(0)
wf_runorsave(ab_save,"InsertRow 0,hasdata",is_event,"25")

dw_event.InsertRow(10)
wf_runorsave(ab_save,"InsertRow 10,hasdata",is_event,"26")

dw_event.InsertRow(1000)
wf_runorsave(ab_save,"InsertRow 1000,hasdata",is_event,"27")

dw_event.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow ,hasdata",is_event,"28")

dw_event.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow ,hasdata",is_event,"29")

dw_event.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage ,hasdata",is_event,"30")

dw_event.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage ,hasdata",is_event,"31")


dw_event.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10,hasdata",is_event,"32")

dw_event.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1,hasdata",is_event,"33")

dw_event.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0,hasdata",is_event,"34")

dw_event.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,hasdata",is_event,"35")

//dw_event.DeleteRow(1)
//wf_runorsave(ab_save,"DeleteRow 1,hasdata",is_event,"36")
//dw_event.DeleteRow(dw_event.getrow())
//wf_runorsave(ab_save,"DeleteRow currentrow,hasdata",is_event,"37")
//dw_event.DeleteRow(dw_event.rowcount())
//wf_runorsave(ab_save,"DeleteRow rowcount,hasdata",is_event,"38")

//dw_event.SetItem(1,5,'test')
//dw_event.AcceptText()
//wf_runorsave(ab_save,"AcceptText right,hasdata",is_event,"39")
//
//dw_event.SetItem(1,1,"abd")
//dw_event.AcceptText()
//wf_runorsave(ab_save,"acceptText error,hasdata",is_event,"40")

dw_event.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,hasdata",is_event,"41")
dw_event.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,hasdata",is_event,"42")

dw_event.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,hasdata",is_event,"43")


dw_event.SetSort('#1 A')
dw_event.Sort()
wf_runorsave(ab_save,"Sort ,hasdata",is_event,"44")
wf_output("POP","POP","Types of expressions must match.")
dw_event.SetFilter("#1 = 100")
dw_event.Filter()
wf_runorsave(ab_save,"Filter 100,hasdata",is_event,"45")

dw_event.SetFilter("#1 = '999'")
dw_event.Filter()
wf_runorsave(ab_save,"Filter 999,hasdata",is_event,"46")

//dw_event.RowsDiscard(1,2,delete!)
//wf_runorsave(ab_save,"RowsDiscard delete!",is_event,"47")
//dw_event.RowsDiscard(1,2,filter!)
//wf_runorsave(ab_save,"RowsDiscard filter!",is_event,"48")
//dw_event.RowsDiscard(1,2,primary!)
//wf_runorsave(ab_save,"RowsDiscard primary!",is_event,"49")

dw_event.Reset()
wf_runorsave(ab_save,"Reset ,hasdata",is_event,"50")



end subroutine

public subroutine wf_controlfun_unspport ();/*
AcceptText
CanUndo
CategoryCount
CategoryName
Clear
Clipboard
Copy
CopyRTF
CrosstabDialog
Cut
DataCount
FindCategory
FindGroupChange
FindSeries
GenerateHTMLForm
GetClickedColumn
*/

any la_value
	
dw_1.dataobject = "d_F158A05_detailprop01"
dw_1.settransobject(sqlca)
dw_1.retrieve()
	
la_value = dw_1.AcceptText()
wf_Output('1',f_string(la_value),"AcceptText return:")

//la_value = dw_1.CanUndo()
//wf_Output('false',f_string(la_value),"CanUndo return:")

//la_value = dw_1.CategoryCount()
//wf_Output('false',f_string(la_value),"CategoryCount return:")
//
//la_value = dw_1.CategoryName()
//wf_Output('false',f_string(la_value),"CategoryName return:")

la_value = dw_1.Clear()
wf_Output('-1',f_string(la_value),"Clear return:")

//la_value = dw_1.Clipboard()
//wf_Output('false',f_string(la_value),"Clipboard return:")

la_value = dw_1.Copy()
wf_Output('-1',f_string(la_value),"Copy return:")

//la_value = dw_1.CopyRTF()
//wf_Output('false',f_string(la_value),"CopyRTF return:")

la_value = dw_1.CrosstabDialog()
wf_Output('-1',f_string(la_value),"CrosstabDialog return:")

la_value = dw_1.Cut()
wf_Output('-1',f_string(la_value),"Cut return:")

//la_value = dw_1.DataCount()
//wf_Output('false',f_string(la_value),"DataCount return:")
//
//la_value = dw_1.FindCategory()
//wf_Output('false',f_string(la_value),"FindCategory return:")

//la_value = dw_1.FindGroupChange()
//wf_Output('false',f_string(la_value),"FindGroupChange return:")
//
//la_value = dw_1.FindSeries()
//wf_Output('false',f_string(la_value),"FindSeries return:")
//
//la_value = dw_1.GenerateHTMLForm()
//wf_Output('false',f_string(la_value),"GenerateHTMLForm return:")

la_value = dw_1.GetClickedColumn()
wf_Output('0',f_string(la_value),"GetClickedColumn return:")
/*
GetColumn
GetColumnName
GetData
GetDataPieExplode
GetDataStyle
GetItemDate
GetItemDateTime
GetItemDecimal
GetItemNumber
GetItemTime
GetSeriesStyle
GetSQLSelect
GetText
GroupCalc
InsertDocument
IsSelected
LineCount
ObjectAtPointer
Paste
PasteRTF
ReplaceText
ReselectRow
ResetDataColors
ResetUpdate
SaveAs (Graphs)
SelectedLength
SelectedLine
SelectedStart
SelectedText
SelectRow
SelectText
SelectTextAll
SelectTextLine
SeriesCount
SeriesName
SetBorderStyle
SetColumn
SetDataPieExplode
SetDataStyle
SetDetailHeight
SetItemStatus
SetPosition
SetRowFocusIndicator
SetSeriesStyle
SetSQLPreview
SetSQLSelect
SetTabOrder
SetTabOrder
SetText
ShowHeadFoot
TextLine
Undo
Update
*/
//GetColumn
la_value = dw_1.GetColumn()
wf_Output('0',f_string(la_value),"GetColumn return:")
//GetColumnName
la_value = dw_1.GetColumnName()
wf_Output('',f_string(la_value),"GetColumnName return:")
////GetData
//la_value = dw_1.GetData()
//wf_Output('1',f_string(la_value),"GetData return:")
//GetDataPieExplode
//la_value = dw_1.GetDataPieExplode()
//wf_Output('1',f_string(la_value),"GetDataPieExplode return:")
//GetDataStyle
//la_value = dw_1.GetDataStyle()
//wf_Output('1',f_string(la_value),"GetDataStyle return:")
////GetItemDate
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////GetItemDateTime
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////GetItemDecimal
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////GetItemNumber
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////GetItemTime
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////GetSeriesStyle
//la_value = dw_1.GetSeriesStyle()
//wf_Output('1',f_string(la_value),"GetSeriesStyle return:")
//GetSQLSelect
la_value = dw_1.GetSQLSelect()
wf_Output('',f_string(la_value),"GetSQLSelect return:")
//GetText
la_value = dw_1.GetText()
wf_Output('',f_string(la_value),"GetText return:")
//GroupCalc
la_value = dw_1.GroupCalc()
wf_Output('1',f_string(la_value),"GroupCalc return:")
////InsertDocument
//la_value = dw_1.InsertDocument()
//wf_Output('1',f_string(la_value),"InsertDocument return:")
//IsSelected
la_value = dw_1.IsSelected(1)
wf_Output('false',f_string(la_value),"IsSelected return:")
//LineCount
//la_value = dw_1.LineCount()
//wf_Output('-1',f_string(la_value),"LineCount return:")
////ObjectAtPointer
//la_value = dw_1.ObjectAtPointer()
//wf_Output('1',f_string(la_value),"ObjectAtPointer return:")
//Paste
la_value = dw_1.Paste()
wf_Output('-1',f_string(la_value),"Paste return:")
////PasteRTF
//la_value = dw_1.PasteRTF()
//wf_Output('1',f_string(la_value),"PasteRTF return:")
//ReplaceText
la_value = dw_1.ReplaceText('aaa')
wf_Output('-1',f_string(la_value),"ReplaceText return:")
//ReselectRow
la_value = dw_1.ReselectRow(2)
wf_Output('-1',f_string(la_value),"ReselectRow return:")
////ResetDataColors
//la_value = dw_1.ResetDataColors()
//wf_Output('1',f_string(la_value),"ResetDataColors return:")
//ResetUpdate
la_value = dw_1.ResetUpdate()
wf_Output('1',f_string(la_value),"ResetUpdate return:")
//SaveAs (Graphs)
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
//SelectedLength
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////SelectedLine
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////SelectedStart
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
//SelectedText
la_value = dw_1.SelectedText()
wf_Output('',f_string(la_value),"SelectedText return:")
//SelectRow
la_value = dw_1.SelectRow(3,true)
wf_Output('-1',f_string(la_value),"SelectRow return:")
////SelectText
//la_value = dw_1.SelectText(1)
//wf_Output('1',f_string(la_value),"SelectText return:")
////SelectTextAll
//la_value = dw_1.SelectTextAll()
//wf_Output('1',f_string(la_value),"SelectTextAll return:")
////SelectTextLine
//la_value = dw_1.SelectTextLine()
//wf_Output('1',f_string(la_value),"SelectTextLine return:")
////SeriesCount
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////SeriesName
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
//SetBorderStyle
la_value = dw_1.SetBorderStyle(2, ShadowBox!)
wf_Output('-1',f_string(la_value),"SetBorderStyle return:")
//SetColumn
la_value = dw_1.SetColumn(3)
wf_Output('1',f_string(la_value),"SetColumn return:")
////SetDataPieExplode
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////SetDataStyle
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////SetDetailHeight
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////SetItemStatus
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
//SetPosition
la_value = dw_1.SetPosition("oval_red", "footer", FALSE)
wf_Output('-1',f_string(la_value),"SetPosition return:")
//SetRowFocusIndicator
la_value = dw_1.SetRowFocusIndicator(hand!)
wf_Output('1',f_string(la_value),"SetRowFocusIndicator return:")
////SetSeriesStyle
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////SetSQLPreview
//la_value = dw_1.SetSQLPreview()
//wf_Output('1',f_string(la_value),"SetSQLPreview return:")
////SetSQLSelect
//la_value = dw_1.SetSQLSelect()
//wf_Output('1',f_string(la_value),"SetSQLSelect return:")
//SetTabOrder
la_value = dw_1.SetTabOrder(1, 0)
wf_Output('-1',f_string(la_value),"SetTabOrder return:")

//SetText
la_value = dw_1.SetText("aaa")
wf_Output('-1',f_string(la_value),"SetText return:")
////ShowHeadFoot
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
////TextLine
//la_value = dw_1.AcceptText()
//wf_Output('1',f_string(la_value),"AcceptText return:")
//Undo
la_value = dw_1.Undo()
wf_Output('-1',f_string(la_value),"Undo return:")
//Update
wf_output("POP","POP","DataWindow does not have UPDATE capability.")
la_value = dw_1.Update()
wf_Output('-1',f_string(la_value),"Update return:")

end subroutine

public subroutine wf_controlfun ();/*
11.3.3	GetFormat
11.3.4	GetItemString
11.3.5	GetValidate
11.4.1	DeleteRow ////
11.4.2	InsertRow
11.4.3	Reset
11.4.4	Retrieve
11.4.5	RowsCopy
11.4.6	RowsDiscard
11.4.7	RowsMove
11.4.8	SaveAs
11.4.9	SaveAsAscii
11.4.10	ShareData
*/

any la_value
	
dw_1.dataobject = "d_F158A05_detailprop01"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//11.3.3	GetFormat
la_value = dw_1.GetFormat(1)
wf_Output('',f_string(la_value),"GetFormat return:")
//11.3.4	GetItemString
la_value = dw_1.GetItemString(1,1)
wf_Output('null',f_string(la_value),"GetItemString return:")
la_value = dw_1.setItem(1,1,"aaa")
wf_Output('aaa',f_string(dw_1.GetItemString(1,1)),"GetItemString return:")
//11.3.5	GetValidate
la_value = dw_1.GetValidate(1)
wf_Output('',f_string(la_value),"GetValidate return:")
//11.4.1	DeleteRow 
la_value = dw_1.DeleteRow(1)
wf_Output('1',f_string(la_value),"DeleteRow return:")
la_value = dw_1.DeletedCount ( ) 
wf_Output('0',f_string(la_value),"DeletedCount return:")
//11.4.2	InsertRow
la_value = dw_1.InsertRow(0)
wf_Output('1',f_string(la_value),"InsertRow return:")
wf_Output('new!',f_enumerate2string(dw_1.GetItemStatus(1,0,primary!) ,"dwitemstatus"),"InsertRow return:")

////reportÎÞ²ÎÊýÊ±£¬Èç¹ûÔÚcomposite datawindow retrieve¹ý³ÌÖÐ£¬retrieverowÊÂ¼þ·µ»Ø1£¬
dw_1.dataobject = "d_F158A05_detailprop01"
dw_1.settransobject(sqlca)
ii_retrieverow = 1//event return

dw_1.retrieve()

datawindowchild ldw_child
dw_1.GetChild('dw_1', ldw_child)	
la_value = ldw_child.rowcount()
//wf_Output('1',f_string(la_value),"ldw_child rowcount:")

la_value = dw_1.InsertRow(0)
//wf_Output('2',f_string(la_value),"ldw_child rowcount:")

ii_retrieverow = 0//event return

//11.4.3	Reset
dw_1.GetChild('dw_1', ldw_child)	
la_value = dw_1.reset()
wf_Output('1',f_string(la_value),"reset return:")
la_value = ldw_child.rowcount()
//wf_Output('0',f_string(la_value),"ldw_child return:")

//11.4.4	Retrieve
la_value = dw_1.Retrieve()
wf_Output('1',f_string(la_value),"Retrieve return:")
//11.4.5	RowsCopy
//ATL²»Ö§³Ö£¬¼û·ÖÎöÎÄµµ
//11.4.6	RowsDiscard
dw_1.deleterow(0)
la_value=dw_1.RowsDiscard(1, dw_1.DeletedCount(), Delete!)
wf_Output('-1',f_string(la_value),"RowsDiscard (delete!) return:")

la_value=dw_1.RowsDiscard(1, dw_1.RowCount(), primary!)
//wf_Output('1',f_string(la_value),"RowsDiscard (Primary!) return:")
//11.4.7	RowsMove
//ATL²»Ö§³Ö£¬¼û·ÖÎöÎÄµµ
//11.4.8	SaveAs
la_value=dw_1.SaveAs("C:\composite.xls", Excel!, TRUE)
wf_Output('1',f_string(la_value),"saveas (excel!) return:")

la_value=dw_1.SaveAs("C:\composite.txt", Text!, TRUE)
wf_Output('1',f_string(la_value),"saveas (text!) return:")

la_value=dw_1.SaveAs("C:\composite.wmf", WMF!, TRUE)
wf_Output('1',f_string(la_value),"saveas (WMF!) return:")

//11.4.9	SaveAsAscii
la_value=dw_1.SaveAsAscii("C:\compositeAscII.txt")
wf_Output('1',f_string(la_value),"SaveAsAscii (text!) return:")

//11.4.10	ShareData
//ÒÆÖÁwf_sharedata()
end subroutine

public subroutine wf_print ();//d_f158a13_dwprop06

//print.buttons	no
//print.columns	1
//print.columns.width	0
//print.preview	yes ²»Ö§³Ömodify
//print.preview.buttons	no
//print.preview.zoom	100

dw_1.dataobject = "d_f158a13_dwprop06"
dw_1.settransobject(sqlca)
dw_1.retrieve()

any la_value
//zhushaobin 2005-1-28:
//Print.ColumnºÍPrint.Column.WidthÊôÐÔ²»Ö§³Ö(chendawei)
la_value = dw_1.describe("Datawindow.Print.buttons")
wf_Output("no",f_string(la_value),"Datawindow.Print.buttons")
//la_value = dw_1.describe("Datawindow.Print.columns")
//wf_Output("1",f_string(la_value),"Datawindow.Print.columns")
//la_value = dw_1.describe("Datawindow.Print.columns.width")
//wf_Output("0",f_string(la_value),"Datawindow.Print.columns.width")
la_value = dw_1.describe("Datawindow.Print.preview")
wf_Output("yes",f_string(la_value),"Datawindow.Print.preview")
la_value = dw_1.describe("Datawindow.Print.preview.buttons")
wf_Output("no",f_string(la_value),"Datawindow.Print.preview.buttons")
la_value = dw_1.describe("Datawindow.Print.preview.zoom")
wf_Output("100",f_string(la_value),"Datawindow.Print.preview.zoom")


la_value = dw_1.Modify("Datawindow.Print.buttons = 'yes'")
wf_Output("",f_string(la_value),"modify Datawindow.Print.buttons")
//la_value = dw_1.Modify("Datawindow.Print.columns = 100")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns")
//la_value = dw_1.Modify("Datawindow.Print.columns.width = 20")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns.width")
//la_value = dw_1.Modify("Datawindow.Print.preview = 50")
//wf_Output("yes",f_string(la_value),"Datawindow.Print.preview")
la_value = dw_1.Modify("Datawindow.Print.preview.buttons = yes")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.buttons")
la_value = dw_1.Modify("Datawindow.Print.preview.zoom = 50")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.zoom")


la_value = dw_1.describe("Datawindow.Print.buttons")
wf_Output("yes",f_string(la_value),"Datawindow.Print.buttons")
//la_value = dw_1.describe("Datawindow.Print.columns")
//wf_Output("100",f_string(la_value),"Datawindow.Print.columns")
//la_value = dw_1.describe("Datawindow.Print.columns.width")
//wf_Output("20",f_string(la_value),"Datawindow.Print.columns.width")
//la_value = dw_1.describe("Datawindow.Print.preview")
//wf_Output("yes",f_string(la_value),"Datawindow.Print.preview")
la_value = dw_1.describe("Datawindow.Print.preview.buttons")
wf_Output("yes",f_string(la_value),"Datawindow.Print.preview.buttons")
la_value = dw_1.describe("Datawindow.Print.preview.zoom")
wf_Output("50",f_string(la_value),"Datawindow.Print.preview.zoom")

dw_1.dataobject = "d_f158a13_dwprop06"
dw_1.settransobject(sqlca)
dw_1.retrieve()


datawindowchild ldw_child
dw_1.GetChild('dw_1', ldw_child)

la_value = ldw_child.describe("Datawindow.Print.buttons")
wf_Output("no",f_string(la_value),"Child.Print.buttons")
//la_value = ldw_child.describe("Datawindow.Print.columns")
//wf_Output("1",f_string(la_value),"Child.Print.columns")
//la_value = ldw_child.describe("Datawindow.Print.columns.width")
//wf_Output("0",f_string(la_value),"Child.Print.columns.width")
la_value = ldw_child.describe("Datawindow.Print.preview")
wf_Output("yes",f_string(la_value),"Child.Print.preview")
la_value = ldw_child.describe("Datawindow.Print.preview.buttons")
wf_Output("no",f_string(la_value),"Child.Print.preview.buttons")
la_value = ldw_child.describe("Datawindow.Print.preview.zoom")
wf_Output("100",f_string(la_value),"Child.Print.preview.zoom")


la_value = ldw_child.Modify("Datawindow.Print.buttons = 'yes'")
wf_Output("",f_string(la_value),"modify Datawindow.Print.buttons")
//la_value = ldw_child.Modify("Datawindow.Print.columns = 100")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns")
//la_value = ldw_child.Modify("Datawindow.Print.columns.width = 20")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns.width")
//la_value = ldw_child.Modify("Datawindow.Print.preview = 50")
//wf_Output("yes",f_string(la_value),"Child.Print.preview")
la_value = ldw_child.Modify("Datawindow.Print.preview.buttons = yes")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.buttons")
la_value = ldw_child.Modify("Datawindow.Print.preview.zoom = 50")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.zoom")


la_value = ldw_child.describe("Datawindow.Print.buttons")
wf_Output("yes",f_string(la_value),"Child.Print.buttons")
//la_value = ldw_child.describe("Datawindow.Print.columns")
//wf_Output("100",f_string(la_value),"Child.Print.columns")
//la_value = ldw_child.describe("Datawindow.Print.columns.width")
//wf_Output("20",f_string(la_value),"Child.Print.columns.width")
//la_value = ldw_child.describe("Datawindow.Print.preview")
//wf_Output("yes",f_string(la_value),"Child.Print.preview")
la_value = ldw_child.describe("Datawindow.Print.preview.buttons")
wf_Output("yes",f_string(la_value),"Child.Print.preview.buttons")
la_value = ldw_child.describe("Datawindow.Print.preview.zoom")
wf_Output("50",f_string(la_value),"Child.Print.preview.zoom")

la_value = dw_1.print()
wf_output("1",f_string(la_value),"print")

//la_value = ldw_child.print()
//wf_output("-1",f_string(la_value),"child print")



end subroutine

public subroutine wf_event_child (boolean ab_save);//delete from composite_fun;
integer li_count

dw_event.dataobject="d_computefield"
dw_event.settransobject(sqlca)

dw_event.retrieve()
datawindowchild ldw_child
dw_event.GetChild('dw_1', ldw_child)
is_event = ""
ldw_child.Retrieve()
wf_runorsave(ab_save,"Retrieve hasdata",is_event,"C1")

//ldw_child.Resize(ldw_child.width - 10,ldw_child.height - 10)
//wf_runorsave(ab_save,"Resize hasdata",is_event,"C2")

ldw_child.reset()
ldw_child.InsertRow(-1)

ldw_child.update()
wf_runorsave(ab_save,"update 1 nodata",is_event,"C3")

ldw_child.reset()
ldw_child.InsertRow(0)

wf_runorsave(ab_save,"InsertRow 0 nodata",is_event,"C4")

ldw_child.reset()
ldw_child.InsertRow(10)

wf_runorsave(ab_save,"InsertRow 10 nodata",is_event,"C5")

ldw_child.reset()
ldw_child.InsertRow(1000)

wf_runorsave(ab_save,"InsertRow 1000 nodata",is_event,"C6")

ldw_child.reset()
ldw_child.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow nodata",is_event,"C7")

ldw_child.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow nodata",is_event,"C8")

ldw_child.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage nodata",is_event,"C9")
//
ldw_child.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage nodata",is_event,"C10")


ldw_child.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10 nodata",is_event,"C11")

ldw_child.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1 nodata",is_event,"C12")

ldw_child.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0 nodata",is_event,"C13")


ldw_child.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,nodata",is_event,"C14")

ldw_child.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,nodata",is_event,"C15")
ldw_child.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,nodata",is_event,"C16")

ldw_child.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,nodata",is_event,"C17")


ldw_child.SetSort('dept_id A')
ldw_child.Sort()
wf_runorsave(ab_save,"Sort ,nodata",is_event,"C18")


ldw_child.SetFilter("#1 = 100")
ldw_child.Filter()
wf_runorsave(ab_save,"Filter ,nodata",is_event,"C19")

ldw_child.RowsDiscard(1,2,delete!)
wf_runorsave(ab_save,"RowsDiscard delete!,nodata",is_event,"C20")
ldw_child.RowsDiscard(1,2,filter!)
wf_runorsave(ab_save,"RowsDiscard filter!,nodata",is_event,"C21")
ldw_child.RowsDiscard(1,2,primary!)
wf_runorsave(ab_save,"RowsDiscard primary!,nodata",is_event,"C22")

ldw_child.Reset()
wf_runorsave(ab_save,"Reset ,nodata",is_event,"C23")

ldw_child.Retrieve()
ldw_child.InsertRow(-1)
wf_runorsave(ab_save,"InsertRow -1,hasdata",is_event,"C24")

ldw_child.InsertRow(0)
wf_runorsave(ab_save,"InsertRow 0,hasdata",is_event,"C25")

ldw_child.InsertRow(10)
wf_runorsave(ab_save,"InsertRow 10,hasdata",is_event,"C26")

ldw_child.InsertRow(1000)
wf_runorsave(ab_save,"InsertRow 1000,hasdata",is_event,"C27")

ldw_child.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow ,hasdata",is_event,"C28")

ldw_child.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow ,hasdata",is_event,"C29")

ldw_child.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage ,hasdata",is_event,"C30")

ldw_child.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage ,hasdata",is_event,"C31")


ldw_child.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10,hasdata",is_event,"C32")

ldw_child.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1,hasdata",is_event,"C33")

ldw_child.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0,hasdata",is_event,"C34")

ldw_child.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,hasdata",is_event,"C35")

//ldw_child.DeleteRow(1)
//wf_runorsave(ab_save,"DeleteRow 1,hasdata",is_event,"C36")
//ldw_child.DeleteRow(ldw_child.getrow())
//wf_runorsave(ab_save,"DeleteRow currentrow,hasdata",is_event,"C37")
//ldw_child.DeleteRow(ldw_child.rowcount())
//wf_runorsave(ab_save,"DeleteRow rowcount,hasdata",is_event,"C38")

//ldw_child.SetItem(1,5,'test')
//ldw_child.AcceptText()
//wf_runorsave(ab_save,"AcceptText right,hasdata",is_event,"C39")
//
//ldw_child.SetItem(1,1,"abd")
//ldw_child.AcceptText()
//wf_runorsave(ab_save,"acceptText error,hasdata",is_event,"C40")

ldw_child.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,hasdata",is_event,"C41")
ldw_child.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,hasdata",is_event,"C42")

ldw_child.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,hasdata",is_event,"C43")


ldw_child.SetSort('#1 A')
ldw_child.Sort()
wf_runorsave(ab_save,"Sort ,hasdata",is_event,"C44")

ldw_child.SetFilter("#1 = 100")
ldw_child.Filter()
wf_runorsave(ab_save,"Filter 100,hasdata",is_event,"C45")

ldw_child.SetFilter("#1 = '999'")
ldw_child.Filter()
wf_runorsave(ab_save,"Filter 999,hasdata",is_event,"C46")

//ldw_child.RowsDiscard(1,2,delete!)
//wf_runorsave(ab_save,"RowsDiscard delete!",is_event,"C47")
//ldw_child.RowsDiscard(1,2,filter!)
//wf_runorsave(ab_save,"RowsDiscard filter!",is_event,"C48")
//ldw_child.RowsDiscard(1,2,primary!)
//wf_runorsave(ab_save,"RowsDiscard primary!",is_event,"C49")

ldw_child.Reset()
wf_runorsave(ab_save,"Reset ,hasdata",is_event,"C50")




end subroutine

public subroutine wf_testitem (boolean ab_init, boolean ab_save);int i
string ls_item[],ls_message[]
integer li_ItemTotal, li_ItemCount,li_rowcount
	
if ab_init then
	//CompositeReport
	ls_item[1]		=	"Datawindow Object Property"
	ls_item[2]		=	"Datawindow Object Property (Retrieval Argument)"
	ls_item[3]		=	"Datawindow Object Property (Retrieval Argument[DefaultArg(H)])" //argument expression...Ã»ÓÐÖ¸¶¨²ÎÊýºó£¬ÊÖ¹¤È¥µô
	ls_item[4]		=	"Datawindow Object Property (Retrieval Argument[DefaultArg])"
	ls_item[5]		=	"Report Object Property (Criteria...)"
	ls_item[6]		=	"Report Object Property (nest_arguments)"
	ls_item[7]		=	"Other Object Property (a)"
	ls_item[8]		=	"Inner Object"
	ls_item[9]		=	"Inner Object(DWC)"
	ls_item[10]		=	"Inner Function(computefield)"
	ls_item[11] 	=	"Event"
	ls_item[12] 	=	"Event (DWC)"
	ls_item[13] 	=	"Control Function"
	ls_item[14] 	=	"Print"
	//NestedReport
	ls_item[15]		=	"NEST Report Object Property (Criteria...)"
	ls_item[16]		=	"NEST Report Object Property (nest_arguments)"
	ls_item[17]		=	"NEST Inner Object"
	ls_item[18]		=	"NEST Inner Object(DWC)"
	ls_item[19]		=	"NEST Datawindow Object Property"
	ls_item[20] 	=	"NEST Event"
	ls_item[21] 	=	"NEST Event (DWC)"
	ls_item[22]		= 	"NEST Print"

	
	for i=1 to UpperBound(ls_item)
		lb_testitems.additem(string(i,"00")+" "+ls_Item[i])
	next
	
else //Ö´ÐÐ

	li_ItemTotal = lb_testitems.TotalItems( )
	
	dw_event.visible = false
	dw_1.visible = true
	
	FOR li_ItemCount = 1 to li_ItemTotal
		
		if lb_testitems.State(li_ItemCount)=1 then
			
			if not ab_save then//run
			ii_errornumber = 0
			ii_rightnumber = 0
			li_rowcount = dw_output.rowcount()
	
				choose case li_ItemCount
					case 1
						wf_message(lb_testitems.text(li_ItemCount),"Datawindow¶ÔÏóÊôÐÔ")
						wf_datawindowobjectproperty()
					case 2
						wf_message(lb_testitems.text(li_ItemCount),"Datawindow¶ÔÏóÊôÐÔµÄRetrieval ArgumentsÖ¸¶¨²ÎÊý")
						wf_retrievalarg(1)
					case 3
						wf_message(lb_testitems.text(li_ItemCount),"Datawindow¶ÔÏóÊôÐÔµÄRetrieval ArgumentsÃ»ÓÐÖ¸¶¨²ÎÊý(ÊÖ¹¤È¥µô)")
						wf_retrievalarg(2)
					case 4
						wf_message(lb_testitems.text(li_ItemCount),"Datawindow¶ÔÏóÊôÐÔµÄRetrieval ArgumentsÃ»ÓÐÖ¸¶¨²ÎÊý")
						wf_retrievalarg(3)
					case 5
						wf_message(lb_testitems.text(li_ItemCount),"Report¶ÔÏóÊôÐÔµÄCriteriaÊôÐÔ")
						wf_criteria()
					case 6
						wf_message(lb_testitems.text(li_ItemCount),"Report¶ÔÏóÊôÐÔµÄNest_ArgumentsÊôÐÔ")
						wf_nest_arguments()
					case 7
						wf_message(lb_testitems.text(li_ItemCount),"ÆäËû¶ÔÏóÊôÐÔaµÄÊôÐÔ")
						wf_otherfun()
					case 8
						wf_message(lb_testitems.text(li_ItemCount),"ReportÄÚ²¿¶ÔÏó")
						wf_innerobject()
					case 9
						wf_message(lb_testitems.text(li_ItemCount),"ReportÄÚ²¿¶ÔÏódwcµÄ·½·¨")
						wf_dwc_unsupport()
						wf_dwc()
					case 10
						wf_message(lb_testitems.text(li_ItemCount),"ÄÚ²¿º¯Êý(¼ÆËãÁÐ)")
						wf_computefield()
					case 11						
						wf_message(lb_testitems.text(li_ItemCount),"ÊÂ¼þ")
						dw_event.visible = true
						dw_1.visible = false
						//wf_event(ab_save)
					case 12
						wf_message(lb_testitems.text(li_ItemCount),"dwcÊÂ¼þ")
						dw_event.visible = true
						dw_1.visible = false
						wf_event_child(ab_save)
					case 13
						wf_message(lb_testitems.text(li_ItemCount),"Datawindow¿Ø¼þµÄ·½·¨")
						wf_controlfun_unspport()
						wf_controlfun()
						//wf_sharedata(ab_save)
					case 14
						wf_message(lb_testitems.text(li_ItemCount),"´òÓ¡")
						wf_print()
					//=======================================
					// nest report
					//µã²Ù×÷¡¢modify¡¢describeÔÚwf_nestreport_datawindowobjectproperty()ÖÐ
					//---------------------------------------
					case 15 
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)Report¶ÔÏóÊôÐÔµÄCriteriaÊôÐÔ")
						wf_nestreport_criteria()
					case 16
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)Report¶ÔÏóÊôÐÔµÄNest_ArgumentsÊôÐÔ")
						wf_nestreport_nest_arguments()
					case 17
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)ReportÄÚ²¿¶ÔÏó")
						wf_nestreport_innerobject()
					case 18
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)ReportÄÚ²¿¶ÔÏódwcµÄ·½·¨")
						wf_nestreport_dwc_unsupport()
						wf_nestreport_dwc()
					case 19
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)Datawindow¶ÔÏóÊôÐÔ")
						wf_nestreport_datawindowobjectproperty()
					case 20
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)ÊÂ¼þ")
						wf_nestreport_event(ab_save)
					case 21
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)dwcÊÂ¼þ")
						wf_nestreport_event_child(ab_save)
					case 22
						wf_message(lb_testitems.text(li_ItemCount),"(Nested Report)´òÓ¡")
						wf_nestreport_print()
					//=======================================
		
				end choose
				ls_message[] = {'','','',''}
				f_outputtext(dw_output,ls_message)	
				if ii_errornumber = 0 and not(cbx_right.checked) then
					dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,primary!)
				end if
			else//save
				choose case li_ItemCount
					case 11
						wf_event(ab_save)
					case 12
						wf_event_child(ab_save)
					case 13
						wf_sharedata(ab_save)
					case 20
						wf_nestreport_event(ab_save)
					case 21
						wf_nestreport_event_child(ab_save)
				end choose
			
			end if
		end if
	next
	
end if

end subroutine

public subroutine wf_sharedata (boolean ab_save);any la_value
datawindowchild l_child1,l_child2

dw_event.visible = true
dw_1.visible = false
dw_event.dataobject = "d_computefield"
dw_1.dataobject = "d_f158a45_dwprop01"
dw_1.SetTransObject(SQLCA)
dw_event.SetTransObject(SQLCA)
dw_1.ShareData(dw_event)
//
dw_1.insertrow(0)

dw_event.GetChild('dw_1',l_child1)

dw_event.GetChild('dw_2',l_child2)


la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"insertrow share data rowcount")

la_value = l_child1.rowcount()
//wf_runorsave(ab_save,"insertrow sharedata report1 rowcount",f_string(la_value),"sharedata1")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"insertrow sharedata report2 rowcount",f_string(la_value),"sharedata2")
//
dw_1.Reset()

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"reset share data rowcount")

la_value = l_child1.rowcount()
//wf_runorsave(ab_save,"reset sharedata report1 rowcount",f_string(la_value),"sharedata3")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"reset sharedata report2 rowcount",f_string(la_value),"sharedata4")
//
dw_1.Retrieve()

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"retrieve share data rowcount")

la_value = l_child1.rowcount()
//wf_runorsave(ab_save,"retrieve sharedata report1 rowcount",f_string(la_value),"sharedata5")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"retrieve sharedata report2 rowcount",f_string(la_value),"sharedata6")
//
dw_1.deleterow(0)

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"deleterow share data rowcount")

la_value = l_child1.rowcount()
//wf_runorsave(ab_save,"deleterow sharedata report1 rowcount",f_string(la_value),"sharedata7")

la_value = l_child2.rowcount()
//wf_runorsave(ab_save,"deleterow sharedata report2 rowcount",f_string(la_value),"sharedata8")
//
dw_event.sharedataoff()

la_value = dw_event.rowcount()
wf_output("0",f_string(la_value),"deleterow share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report1 rowcount",f_string(la_value),"sharedata9")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report2 rowcount",f_string(la_value),"sharedata10")
end subroutine

public subroutine wf_innerobject ();//zoom

	any la_value
	string ls_value
	
	dw_1.dataobject = "d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	
	la_value = dw_1.describe("DataWindow.zoom")
	wf_Output('100',f_string(la_value),"01 dw_1.zoom: ")
	
	la_value = dw_1.describe("dw_1.object.DataWindow.zoom")
	wf_Output('!',f_string(la_value),"02 dw_1.object.DataWindow.zoom: ")
	
	//Òªgetchild²ÅÄÜ¸Ä:
	ls_value = dw_1.modify("dw_1.object.DataWindow.zoom = 80")
	ls_value = mid(ls_value,1,4)
	wf_Output('Line',ls_value,"03 modify report zoom = 80: ")
	
	datawindowchild ldw_child
	dw_1.GetChild('dw_1', ldw_child)	
	
	la_value = ldw_child.modify("DataWindow.zoom = 80")
	wf_Output('',f_string(la_value),"04 modify report zoom = 80: ")
	
	la_value = dw_1.modify("DataWindow.zoom = 50")
	wf_Output('',f_string(la_value),"05 modify datawindow zoom = 50: ")

	
	la_value = dw_1.describe("dw_1.object.DataWindow.zoom")
	wf_Output('!',f_string(la_value),"06 report zoom: ")
	
	la_value = ldw_child.describe("DataWindow.zoom")
	wf_Output('50',f_string(la_value),"07 report zoom: ")
	
	la_value = dw_1.describe("DataWindow.zoom")
	wf_Output('50',f_string(la_value),"08 dw_1.zoom: ")
end subroutine

public subroutine wf_nestreport_criteria ();any la_value
dw_1.dataobject = "d_nest_objectproperty"//"d_F158A45_dwprop01"
dw_1.settransobject(sqlca)
dw_1.retrieve()

//»ñÈ¡CriteriaÊôÐÔµÄ³õÊ¼Öµ
	
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("",f_string(la_value),"01 dw_1.Describe('dw_1.Criteria') = ")
//¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊý
	
	dw_1.Modify("dw_1.Criteria = '>104'")
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output(">104",f_string(la_value),"02 dw_1.Describe('dw_1.Criteria') = ")
	
//µã²Ù×÷ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊý
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.object.dw_1.Criteria = '>104~t~t=~'M~''
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	//wf_Output(">104		='M'",f_string(la_value),"03 dw_1.Describe('dw_1.Criteria') = ")
	
//¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊýÎª×Ö·ûÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '101~n102'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("101~n102",f_string(la_value),"04 dw_1.Describe('dw_1.Criteria') = ")
	
// ¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊýÎªÊý×ÖÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '~t~t~t~t~t200.00~n~t~t~t~t~t220.50'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("~t~t~t~t~t200.00~n~t~t~t~t~t220.50",f_string(la_value),"05 dw_1.Describe('dw_1.Criteria') = ")
	
// ¶¯Ì¬ÉèÖÃCriteriaÊôÐÔµÄ¼ìË÷²ÎÊýÎªÈÕÆÚÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '~t~t~t~t1/1/1980~n~t~t~t~t1/3/1980'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("~t~t~t~t1/1/1980~n~t~t~t~t1/3/1980",f_string(la_value),"06 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÍ¬Ò»×Ö¶ÎµÄ¶à¸ö²ÎÊýÖµÖ®¼äµÄÓë»ò¹ØÏµ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '101~n102~n103~n104'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("101~n102~n103~n104",f_string(la_value),"07 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÍ¬Ò»ÐÐÉèÖÃ¶à¸ö×Ö¶ÎµÄÓë»ò¹ØÏµ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~tNAME10~tM~t50'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~tNAME10~tM~t50",f_string(la_value),"08 dw_1.Describe('dw_1.Criteria') = ")
	
//ÔÚÍ¬Ò»×Ö¶ÎµÄ¶à¸öÖµÖÐÉèÖÃÒ»¸ö´íÎóµÄÊý¾Ý
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '101~n25~n103'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("101~n25~n103",f_string(la_value),"09 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÔÚÍ¬Ò»ÐÐÖÐÉèÖÃÒ»¸ö´íÎóµÄÊý¾Ý
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~tok~tM~t50'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~tok~tM~t50",f_string(la_value),"10 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔÃ¿¸ö×Ö¶Î×î¶à¿ÉÒÔÉèÖÃ24¸ö¹ýÂËÌõ¼þ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n",f_string(la_value),"11 dw_1.Describe('dw_1.Criteria') = ")
	
//²âÊÔ×Ö¶Î´óÓÚ24¸ö¹ýÂËÌõ¼þµÄÇé¿ö
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n103~n'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~n101~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n100~n103~n",f_string(la_value),"12 dw_1.Describe('dw_1.Criteria') = ")
	
//¶¯Ì¬ÉèÖÃ¶ÔÓ¦×Ö¶ÎÖµµÄÀàÐÍÎªÆäËü´íÎóÀàÐÍ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '~t~t~tname01'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("~t~t~tname01",f_string(la_value),"13 dw_1.Describe('dw_1.Criteria') = ")
	
//¶¯Ì¬ÉèÖÃÍ¬Ò»×Ö¶Î¶à¸öÏàÍ¬µÄÖµ
	wf_output('POP','POP',"Cannot apply criteria to a select statement with a union or nested select or nested report.")
	dw_1.Modify("dw_1.Criteria = '100~n101~n100~n100~n'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.Criteria")
	wf_Output("100~n101~n100~n100~n",f_string(la_value),"14 dw_1.Describe('dw_1.Criteria') = ")

	dw_1.dataobject = "d_f158a32_dwothers14"//"d_f158a05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()	
	
//dataobject
//»ñÈ¡reportÊôÐÔµÄ³õÊ¼Öµ

	la_value = dw_1.describe("dw_1.dataobject")
	wf_Output("d_public_composite3",f_string(la_value),"15 dw_1.Describe('dw_1.dataobject') = ")
	
//ÓÃº¯Êý¶¯Ì¬ÐÞ¸ÄreportÊôÐÔ

	dw_1.Modify("dw_1.dataobject = 'd_public_composite2'")
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.dataobject")
	wf_Output("d_public_composite2",f_string(la_value),"16 dw_1.Describe('dw_1.dataobject') = ")
	la_value = dw_1.Describe("dw_1.visible")
	wf_Output("1",f_string(la_value),"inner dw_1.visible') = ")

//ÓÃµã²Ù×÷¶¯Ì¬ÐÞ¸ÄreportÊôÐÔ

	dw_1.Object.dw_1.dataobject = 'd_public_composite2'
	dw_1.Retrieve()
	la_value = dw_1.Describe("dw_1.dataobject")
	wf_Output("d_public_composite2",f_string(la_value),"17 dw_1.Describe('dw_1.dataobject') = ")
	

//reportname.Height.Autosize
	
	la_value = dw_1.Describe("dw_1.Height.Autosize")
	wf_Output("yes",f_string(la_value),"18 dw_1.Describe('dw_1.Height.Autosize') = ")
	
	la_value = dw_1.modify("dw_1.Height.Autosize = 'no'")
	wf_Output("",f_string(la_value),"19 dw_1.modify('dw_1.Height.Autosize') = ")
	
	la_value = dw_1.Describe("dw_1.Height.Autosize")
	wf_Output("no",f_string(la_value),"20 dw_1.Describe('dw_1.Height.Autosize') = ")
////Movable
//	la_value = dw_1.Describe("dw_1.Movable")
//	wf_Output("!",f_string(la_value),"21 dw_1.Describe('dw_1.Movable') = ")
//	
//	la_value = dw_1.modify("dw_1.Movable = 'yes'")
//	wf_Output("",f_string(la_value),"22 dw_1.modify('dw_1.Movable') = ")
//	
//	la_value = dw_1.Describe("dw_1.Movable")
//	wf_Output("yes",f_string(la_value),"23 dw_1.Describe('dw_1.Movable') = ")

end subroutine

public subroutine wf_nestreport_nest_arguments ();//	d_nest_objectproperty
	any la_value
	string ls_value
	dw_1.dataobject = "d_nest_objectproperty"//"d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()

//nest_argument
//»ñÈ¡Nest_ArgumentsÊôÐÔµÄ³õÊ¼Öµ

	la_value = dw_1.describe("dw_1.nest_arguments")
	wf_Output('?',f_string(la_value),"01 Describe('dw_1.nest_arguments') = ")

//Êý¾Ý¶ÔÏóÎªÒ»¸ö²ÎÊýÇé¿ö£¬ÇÒRetrieve²»´øÈÎºÎ²ÎÊý
	la_value = 	dw_1.Retrieve()
	wf_Output('10',f_string(la_value),"02 nest_arguments retrieve return: ")

//Êý¾Ý¶ÔÏóÎªÒ»¸ö²ÎÊýÇé¿ö£¬ÇÒNest_ArgumentsÊôÐÔÖµ±»Çå³ý

	la_value = dw_1.Retrieve('101')
	wf_Output('10',f_string(la_value),"03 nest_arguments retrieve return: ")
	
//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔ
	dw_1.Modify("dw_1.nest_arguments = ((~" as_id ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.Retrieve('101')
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~" as_id ~"))',f_string(la_value),"04 Describe('dw_1.nest_arguments') = ")



//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔÎª101
	dw_1.Modify("dw_1.nest_arguments = ((~" 101 ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.Retrieve('101')
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~" 101 ~"))',f_string(la_value),"05 Describe('dw_1.nest_arguments') = ")



//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔÎª¶à¸öÖµ
	dw_1.Modify("dw_1.nest_arguments = ((~" as_id ~"),(~" 101 ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.Retrieve('101')
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~" as_id ~"),(~" 101 ~"))',f_string(la_value),"06 Describe('dw_1.nest_arguments') = ")
	
//	dw_1.dataobject = "d_F158A05_detailprop01"
//	dw_1.settransobject(sqlca)
//	dw_1.retrieve()

//»ñÈ¡ReprtÊý¾Ý¶ÔÏó¶à²ÎÊýµÄ³õÊ¼Öµ
	la_value = dw_1.describe("dw_1.nest_arguments")
	wf_Output('((~" as_id ~"),(~" 101 ~"))',f_string(la_value),"07 Describe('dw_1.nest_arguments') = ")

//Retrieveº¯Êý¶ÔNest_ArgumentsÊôÐÔµÄÓ°Ïì

	la_value = dw_1.retrieve('101',1980-01-01)
	wf_Output('10',f_string(la_value),"08 nest_arguments retrieve return: ")
//Report¶ÔÏóµÄNest_ArgumentsÊôÐÔÃ»ÓÐ²ÎÊý

	la_value = dw_1.retrieve('101',1980-01-01,280.50)
	wf_Output('10',f_string(la_value),"09 nest_arguments retrieve return: ")

//¶¯Ì¬ÉèÖÃReport¶ÔÏóµÄNest_ArgumentsÊôÐÔ

	dw_1.Modify("dw_1.Nest_Arguments = ((~"as_id~"),(~"ad_date~"),(~"an_num~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.retrieve('101',1980-01-01,280.50)
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~"as_id~"),(~"ad_date~"),(~"an_num~"))',f_string(la_value),"10 Describe('dw_1.nest_arguments') = ")


//¶¯Ì¬ÉèÖÃNest_ArgumentsÊôÐÔ²ÎÊýÎª±í´ïÊ½
	dw_1.Modify("dw_1.Nest_Arguments = ((~"as_id~"),(~"ad_date~"),(~" abs(-100) +  an_num ~"))")
	dw_1.SetTransObject(SQLCA)
	dw_1.retrieve('101',1980-01-01,180.50)
	la_value = dw_1.Describe("dw_1.nest_arguments")
	wf_Output('((~"as_id~"),(~"ad_date~"),(~" abs(-100) +  an_num ~"))',f_string(la_value),"11 Describe('dw_1.nest_arguments') = ")


//¾²Ì¬ÉèÖÃNest_ArgumentsÊôÐÔ²ÎÊýÎª±í´ïÊ½ÖÐº¬ÓÐ¼ÆËãÁÐ
	la_value = dw_1.Retrieve('101')
	wf_Output('10',f_string(la_value),"12 nest_arguments retrieve return: ")
//newpage	
	la_value = dw_1.describe("dw_1.newpage")
	wf_Output('no',f_string(la_value),"01 dw_1.newpage: ")
	
	la_value = dw_1.modify("dw_1.newpage = yes")
	wf_Output('',f_string(la_value),"02 modify newpage: ")
	
	la_value = dw_1.describe("dw_1.newpage")
	wf_Output('yes',f_string(la_value),"03 newpage: ")
	
//Resizeable
	la_value = dw_1.describe("dw_1.Resizeable")
	wf_Output('0',f_string(la_value),"01 dw_1.Resizeable: ")
	
	ls_value = dw_1.modify("dw_1.Resizeable = yes")
	ls_value = mid(ls_value,1,4)
	wf_Output('Line',ls_value,"02 modify Resizeable: ")
	
	la_value = dw_1.describe("dw_1.Resizeable")
	wf_Output('0',f_string(la_value),"03 Resizeable: ")
//Trail_Footer
	la_value = dw_1.describe("dw_1.Trail_Footer")
	wf_Output('yes',f_string(la_value),"01 dw_1.Trail_Footer: ")
	
	la_value = dw_1.modify("dw_1.Trail_Footer = no")
	wf_Output('',f_string(la_value),"02 modify Trail_Footer: ")
	
	la_value = dw_1.describe("dw_1.Trail_Footer")
	wf_Output('no',f_string(la_value),"03 Trail_Footer: ")
//¶à¼¶µã²Ù×÷
/**/
	
end subroutine

public subroutine wf_nestreport_dwc_unsupport ();/*
	GetClickedColumn	-1	ÒòÎªDataWindow´¦ÓÚPrintPreview×´Ì¬£¬ËùÒÔÎÞ·¨È¡µÃµã»÷µÄColumn
	GetClickedRow	-1	Ô­ÒòÍ¬ÉÏ
	GetColumn	0	ÒòÎªÎÞ·¨¶ÔReportÄÚµÄÊý¾Ý²Ù×÷£¬ËùÒÔ²»Ö§³Ö
	GetColumnName	""	Ã»ÓÐµ±Ç°ÁÐ£¬ËùÒÔÒ²ÎÞ·¨È¡Öµ
	GetParent		·µ»ØµÄ¶ÔÏóÊ¹ÓÃIsNull()ºÍIsValidÅÐ¶Ï£¬·µ»ØÖµÎªFalse
	GetRow	0	ÐÐ½¹µã²»»á±ä»¯
	GetRowFromRowID	0	
	GetRowIDFromRow	-1	
	GetSelectedRow	0	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	GetText	""	Ã»ÓÐµ±Ç°ÐÐ¡¢ÁÐ£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	GetTrans	-1	
	IsSelected	False	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	SelectRow	-1	PrintPreview×´Ì¬ÏÂ£¬ÎÞ·¨SelectRow
	SetColumn	-1	
	SetDetailHeight	-1	
	SetRow	-1	
	SetRowFocusIndicator	-1	ÎÞ·¨¶ÔÐÐ½øÐÐUI²Ù×÷£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
*/
any la_value
	
	dw_1.dataobject = "d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	
	
//	//Òªgetchild²ÅÄÜ¸Ä:
//	la_value = dw_1.modify("dw_1.object.DataWindow.zoom = 80")
//	wf_Output('Line 1  Column 30: incorrect syntax.',f_string(la_value),"03 modify report zoom = 80: ")
	
	datawindowchild ldw_child
	dw_1.GetChild('dw_1', ldw_child)	


//	GetClickedColumn	-1	ÒòÎªDataWindow´¦ÓÚPrintPreview×´Ì¬£¬ËùÒÔÎÞ·¨È¡µÃµã»÷µÄColumn
	la_value = ldw_child.GetClickedColumn()
	wf_Output('0',f_string(la_value),"GetClickedColumn return:")
	
//	GetClickedRow	-1	Ô­ÒòÍ¬ÉÏ
	la_value = ldw_child.GetClickedRow()
	//wf_Output('0',f_string(la_value),"GetClickedRow return:")
	
//	GetColumn	0	ÒòÎªÎÞ·¨¶ÔReportÄÚµÄÊý¾Ý²Ù×÷£¬ËùÒÔ²»Ö§³Ö
	la_value = ldw_child.GetColumn()
	wf_Output('0',f_string(la_value),"GetColumn return:")
	
//	GetColumnName	""	Ã»ÓÐµ±Ç°ÁÐ£¬ËùÒÔÒ²ÎÞ·¨È¡Öµ
	la_value = ldw_child.GetColumnName()
	wf_Output('',f_string(la_value),"GetColumnName return:")
//	
////	GetParent		·µ»ØµÄ¶ÔÏóÊ¹ÓÃIsNull()ºÍIsValidÅÐ¶Ï£¬·µ»ØÖµÎªFalse
//	//la_value = ldw_child.GetParent()
//	wf_Output('',f_string(la_value),"GetParent return:")
	
////	GetRow	0	ÐÐ½¹µã²»»á±ä»¯
//	la_value = ldw_child.GetRow()
//	wf_Output('0',f_string(la_value),"GetRow return:")
	
////	GetRowFromRowID	0
//	la_value = ldw_child.GetRowFromRowID(2)
//	wf_Output('0',f_string(la_value),"GetRowFromRowID return:")
	
////	GetRowIDFromRow	-1	
//	la_value = ldw_child.GetRowIDFromRow(3)
//	wf_Output('-1',f_string(la_value),"GetRowIDFromRow return:")
	
//	GetSelectedRow	0	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	la_value = ldw_child.GetSelectedRow(1)
	wf_Output('0',f_string(la_value),"GetSelectedRow return:")
	
//	GetText	""	Ã»ÓÐµ±Ç°ÐÐ¡¢ÁÐ£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	la_value = ldw_child.GetText()
	wf_Output('',f_string(la_value),"GetText return:")
	
////	GetTrans	-1	
//	transaction object1
//	
//	object1 = CREATE transaction
//	la_value = ldw_child.GetTrans(object1)
//	wf_Output('1',f_string(la_value),"GetTrans return:")
//	destroy object1
	
//	IsSelected	False	ÒòÎªÎÞ·¨SelectRow£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
	la_value = ldw_child.IsSelected(1)
	wf_Output('false',f_string(la_value),"IsSelected return:")
	
//	SelectRow	-1	PrintPreview×´Ì¬ÏÂ£¬ÎÞ·¨SelectRow
	la_value = ldw_child.SelectRow(1,true)
	wf_Output('-1',f_string(la_value),"SelectRow return:")
	
//	SetColumn	-1	
	la_value = ldw_child.SetColumn(2)
	wf_Output('-1',f_string(la_value),"SetColumn return:")
	
////	SetDetailHeight	-1	
//	la_value = ldw_child.SetDetailHeight(2, 3, 0)
//	wf_Output('-1',f_string(la_value),"SetDetailHeight return:")
	
//	SetRow	-1	
	la_value = ldw_child.SetRow(1)
	wf_Output('-1',f_string(la_value),"SetRow return:")
	
////	SetRowFocusIndicator	-1	ÎÞ·¨¶ÔÐÐ½øÐÐUI²Ù×÷£¬ËùÒÔÎÞ·¨Ê¹ÓÃ¸Ã·½·¨
//	la_value = ldw_child.SetRowFocusIndicator("handle!")
//	wf_Output('-1',f_string(la_value),"SetRowFocusIndicator return:")

end subroutine

public subroutine wf_nestreport_dwc ();	any la_value
	
	dw_1.dataobject = "d_nest_objectproperty"//"d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	

	datawindowchild ldw_child
	dw_1.GetChild('dw_1', ldw_child)	

/*
Ö§³Ö²¿·Ý
deleterow
getbandatpoint 
getobjectatpoint
ImportClipboard¡¢ImportFile¡¢ImportString
insertrow
reset
rowscopy
rowsdiscard
rowsmove
scroll
*/
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")
	
//deleterow
	la_value = ldw_child.deleterow(2)
	wf_Output('-1',f_string(la_value),"SelectRow return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")

//ÕâÁ½¸öº¯ÊýÔËÐÐPB»áÍË³ö
////getbandatpoint 
//	la_value = ldw_child.getbandatpointer()
//	wf_Output('-1',f_string(la_value),"getbandatpoint return:")
////getobjectatpoint
//	la_value = ldw_child.getobjectatpointer()
//	wf_Output('-1',f_string(la_value),"getobjectatpoint return:")
////ImportClipboard¡¢ImportFile¡¢ImportString
//insertrow
	la_value = ldw_child.insertrow(0)
	wf_Output('-1',f_string(la_value),"insertrow return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")

//rowscopy
	la_value = ldw_child.rowscopy(1,ldw_child.rowcount(),primary!,ldw_child,1,Primary!)
	wf_Output('-1',f_string(la_value),"rowscopy return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")
	
//rowsdiscard
	la_value = ldw_child.rowsdiscard(1,1,primary!)
	wf_Output('-1',f_string(la_value),"rowsdiscard return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")
//rowsmove
	la_value = ldw_child.rowsmove(1,ldw_child.rowcount(),primary!,ldw_child,1,filter!)
	wf_Output('-1',f_string(la_value),"rowsmove return:")
	
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")
	
//scroll
//ScrollNextPage¡¢ScrollPriorPage¡¢ScrollNextRow¡¢ScrollPriorRow
	la_value = ldw_child.ScrollNextPage()
	wf_Output('-1',f_string(la_value),"ScrollNextPage return:")
	
	la_value = ldw_child.ScrollPriorPage()
	wf_Output('-1',f_string(la_value),"ScrollPriorPage return:")
	
	la_value = ldw_child.ScrollNextRow()
	wf_Output('-1',f_string(la_value),"ScrollNextRow return:")
	
	la_value = ldw_child.ScrollPriorRow()
	wf_Output('-1',f_string(la_value),"ScrollPriorRow return:")
	
	//reset
	la_value = ldw_child.reset()
	wf_Output('1',f_string(la_value),"reset return:")
	la_value = ldw_child.rowcount()
	wf_Output('0',f_string(la_value),"rowcount return:")

end subroutine

public subroutine wf_nestreport_innerobject ();//zoom

	any la_value
	string ls_value
	
	dw_1.dataobject = "d_nest_objectproperty"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	
	la_value = dw_1.describe("DataWindow.zoom")
	wf_Output('100',f_string(la_value),"01 dw_1.zoom: ")
	
	la_value = dw_1.describe("dw_1.object.DataWindow.zoom")
	wf_Output('!',f_string(la_value),"02 dw_1.object.DataWindow.zoom: ")
	
	//Òªgetchild²ÅÄÜ¸Ä:
	ls_value = dw_1.modify("dw_1.object.DataWindow.zoom = 80")
	ls_value = mid(ls_value,1,4)
	wf_Output('Line',ls_value,"03 modify report zoom = 80: ")
	
	datawindowchild ldw_child
	dw_1.GetChild('dw_1', ldw_child)	
	
	la_value = ldw_child.modify("DataWindow.zoom = 80")
	wf_Output('',f_string(la_value),"04 modify report zoom = 80: ")
	
	la_value = dw_1.modify("DataWindow.zoom = 50")
	wf_Output('',f_string(la_value),"05 modify datawindow zoom = 50: ")

	
	la_value = dw_1.describe("dw_1.object.DataWindow.zoom")
	wf_Output('!',f_string(la_value),"06 report zoom: ")
	
	la_value = ldw_child.describe("DataWindow.zoom")
	wf_Output('',f_string(la_value),"07 report zoom: ")
	
	la_value = dw_1.describe("DataWindow.zoom")
	wf_Output('50',f_string(la_value),"08 dw_1.zoom: ")
end subroutine

public subroutine wf_nestreport_datawindowobjectproperty ();// DataWindow object property
/* test function:
			Column.Count
			Print.preview
			ReadOnly
			QueryMode
			QuerySort
			table.sort
			firstrowonpage
			lastrowonpage
			nested
			print.scale
			processing
			//retrieval argument
			synatax.data
*/

any la_value
dw_1.dataobject = "d_nest_objectproperty"
dw_1.settransobject(sqlca)
dw_1.retrieve()

la_value = dw_1.Describe("DataWindow.Column.Count")
wf_output('8',f_string(la_value),'Column Count: level 1')
la_value = string(dw_1.object.dw_1.object.DataWindow.Column.Count)
wf_output('1',f_string(la_value),'Column Count: level 2')
la_value = dw_1.object.dw_1.object.dw_1.object.DataWindow.Column.Count
wf_output('8',f_string(la_value),'Column Count: level 3')

la_value = dw_1.Describe("DataWindow.Print.preview")
wf_output('yes',f_string(la_value),'Print preview: level 1')	
la_value = dw_1.object.dw_1.object.DataWindow.Print.Preview
wf_output('yes',f_string(la_value),'Print Preview: level 2')
la_value = dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Preview
wf_output('yes',f_string(la_value),'Print Preview: level 3')				

la_value = dw_1.Describe("DataWindow.ReadOnly")
wf_output('no',f_string(la_value),'ReadOnly: level 1')	
la_value = string(dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('no',f_string(la_value),'ReadOnly: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('no',f_string(la_value),'ReadOnly: level 3')

//
dw_1.Modify("DataWindow.ReadOnly = yes")
la_value = dw_1.Describe("DataWindow.ReadOnly")
wf_output('yes',f_string(la_value),'ReadOnly: level 1')
dw_1.object.dw_1.object.DataWindow.ReadOnly = 'yes'
la_value = string(dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('yes',f_string(la_value),'ReadOnly: level 3')
dw_1.object.dw_1.object.dw_1.object.DataWindow.ReadOnly ='yes'
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.ReadOnly)
wf_output('yes',f_string(la_value),'ReadOnly: level 3')
//
la_value = dw_1.Describe("DataWindow.QueryMode")
wf_output('no',f_string(la_value),'QueryMode: level 1')
la_value = string(dw_1.object.dw_1.object.DataWindow.QueryMode)
wf_output('no',f_string(la_value),'QueryMode: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.QueryMode)
wf_output('no',f_string(la_value),'QueryMode: level 3')
//
la_value = dw_1.Describe("DataWindow.QuerySort")
wf_output('no',f_string(la_value),'QuerySort: level 1')
la_value = string(dw_1.object.dw_1.object.DataWindow.QuerySort)
wf_output('no',f_string(la_value),'QuerySort: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.QuerySort)
wf_output('no',f_string(la_value),'QuerySort: level 3')
//
la_value = dw_1.Describe("DataWindow.Table.Sort")
wf_output('?',f_string(la_value),'Table Sort: level 1')		
la_value = string(dw_1.object.dw_1.object.DataWindow.Table.Sort)
wf_output('?',f_string(la_value),'Table Sort: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Table.Sort)
wf_output('?',f_string(la_value),'Table Sort: level 3')
//
la_value = dw_1.Describe("Datawindow.FirstRowOnPage")
wf_output('1',f_string(la_value),'FirstRowOnPage: level 1')	
//la_value = string(dw_1.object.dw_1.object.DataWindow.FirstRowOnPage)
//wf_output('1',f_string(la_value),'FirstRowOnPage: level 2')
//la_value = string(dw_1.object.dw_1.objet.dw_1.object.DataWindow.FirstRowOnPage)
//wf_output('1',f_string(la_value),'FirstRowOnPage: level 3')
//
//la_value = dw_1.Describe("Datawindow.LastRowOnPage")
//wf_output('10',f_string(la_value),'LastRowOnPage: level 1')
//la_value = string(dw_1.object.dw_1.object.DataWindow.LastRowOnPage)
//wf_output('1',f_string(la_value),'LastRowOnPage: level 2')
//la_value = string(dw_1.Object.dw_1.object.dw_1.object.DataWindow.LastRowOnPage)
//wf_output('10',f_string(la_value),'LastRowOnPage: level 3')
//
la_value = dw_1.Describe("Datawindow.Nested")
wf_output('yes',f_string(la_value),'Nested: level 1')
la_value = dw_1.object.dw_1.object.DataWindow.Nested
wf_output('yes',f_string(la_value),'Nested: level 2')
la_value = dw_1.object.dw_1.object.dw_1.Object.DataWindow.Nested
wf_output('no',f_string(la_value),'Nested: level 3')
//
la_value = dw_1.Describe("Datawindow.Print.Scale")				
wf_output('0',f_string(la_value),'Print Scale: level 1')
la_value = dw_1.object.dw_1.object.DataWindow.Print.Scale
wf_output('0',f_string(la_value),'Print Scale: level 2')
la_value = dw_1.object.dw_1.obejct.dw_1.object.Datawindow.print.Scale
wf_output('0',f_string(la_value),'Print scale: level 3')				
//
dw_1.Modify("Datawindow.print.scale = 300")
la_value = dw_1.Describe("DataWindow.Print.Scale")
wf_output('300',f_string(la_value),'Print Scale : level 1')
//
dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.DataWindow.Print.Scale)
wf_output('300',f_string(la_value),'Print Scale: level 2')
//
dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale)			
wf_output('300',f_string(la_value),'Print Scale: level 3')	
//
dw_1.Modify("Datawindow.Print.Scale = 300")
la_value = dw_1.Describe("Datawindow.Print.Scale")
wf_output('300',f_string(la_value),'Print Scale: level 1')	
dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.DataWindow.Print.Scale)
wf_output('300',f_string(la_value),'Print Scale: level 2')
dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale = 300
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Print.Scale)
wf_output('300',f_string(la_value),'Print Scale: level 3')
//
la_value = dw_1.Describe("Datawindow.Processing")
wf_output('0',f_string(la_value),'Processing: level 1')	
la_value = string(dw_1.object.dw_1.object.DataWindow.Processing)
wf_output('5',f_string(la_value),'Processing: level 2')
la_value = string(dw_1.object.dw_1.object.dw_1.object.DataWindow.Processing)
wf_output('0',f_string(la_value),'Processing: level 3')

la_value = dw_1.Describe("Datawindow.Syntax.Data")
wf_output('data("100","NAME10","M", 50,1980-01-01 00:00:00:000000, 200.00,"A01", 101,"101","NAME11","M", 20,1980-01-01 00:00:00:000000, 280.50,"A01", 101,"102","NAME12","W", 20,1980-01-01 00:00:00:000000, 220.50,"A03", 103,"103","NAME13","W", 20,1980-01-01 00:00:00:000000, 150.02,"A04", 104,"104","NAME14","M", 30,1980-01-02 00:00:00:000000, 250.00,"A05", 101,"105","NAME15","M", 40,1980-01-02 00:00:00:000000, 350.98,"A06", 106,"106","NAME16","W", 60,1980-01-02 00:00:00:000000, 400.00,"A07", 107,"107","NAME17","W", 20,1980-01-02 00:00:00:000000, 450.00,"A08", 108,"108","NAME18","W", 30,1980-01-03 00:00:00:000000, 350.00,"A09", 109,"109","NAME19","M", 10,1980-01-03 00:00:00:000000, 250.00,"A09", 110,) ',f_string(la_value),'Datawindow.Syntax.Data')



end subroutine

public subroutine wf_nestreport_event (boolean ab_save);//delete from composite_fun;
integer li_count
dw_event.dataobject="d_nest_objectproperty"
dw_event.settransobject(sqlca)
is_event = ""
dw_event.Retrieve()
wf_runorsave(ab_save,"Retrieve hasdata",is_event,"nestevent1")

dw_event.Resize(dw_event.width - 10,dw_event.height - 10)
wf_runorsave(ab_save,"Resize hasdata",is_event,"nestevent2")

dw_event.reset()
dw_event.InsertRow(-1)
wf_output("POP","POP","DataWindow does not have UPDATE capability.")
dw_event.update()
wf_runorsave(ab_save,"update 1 nodata",is_event,"nestevent3")

dw_event.reset()
dw_event.InsertRow(0)

wf_runorsave(ab_save,"InsertRow 0 nodata",is_event,"nestevent4")

dw_event.reset()
dw_event.InsertRow(10)

wf_runorsave(ab_save,"InsertRow 10 nodata",is_event,"nestevent5")

dw_event.reset()
dw_event.InsertRow(1000)

wf_runorsave(ab_save,"InsertRow 1000 nodata",is_event,"nestevent6")

dw_event.reset()
dw_event.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow nodata",is_event,"nestevent7")

dw_event.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow nodata",is_event,"nestevent8")

dw_event.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage nodata",is_event,"nestevent9")
//
dw_event.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage nodata",is_event,"nestevent10")


dw_event.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10 nodata",is_event,"nestevent11")

dw_event.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1 nodata",is_event,"nestevent12")

dw_event.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0 nodata",is_event,"nestevent13")


dw_event.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,nodata",is_event,"nestevent14")

dw_event.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,nodata",is_event,"nestevent15")
dw_event.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,nodata",is_event,"nestevent16")

dw_event.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,nodata",is_event,"nestevent17")


dw_event.SetSort('dept_id A')
dw_event.Sort()
wf_runorsave(ab_save,"Sort ,nodata",is_event,"nestevent18")

wf_output("POP","POP","Types of expressions must match.")
dw_event.SetFilter("#1 = 100")
dw_event.Filter()
wf_runorsave(ab_save,"Filter ,nodata",is_event,"nestevent19")

dw_event.RowsDiscard(1,2,delete!)
wf_runorsave(ab_save,"RowsDiscard delete!,nodata",is_event,"nestevent20")
dw_event.RowsDiscard(1,2,filter!)
wf_runorsave(ab_save,"RowsDiscard filter!,nodata",is_event,"nestevent21")
dw_event.RowsDiscard(1,2,primary!)
wf_runorsave(ab_save,"RowsDiscard primary!,nodata",is_event,"nestevent22")

dw_event.Reset()
wf_runorsave(ab_save,"Reset ,nodata",is_event,"nestevent23")

dw_event.Retrieve()
dw_event.InsertRow(-1)
wf_runorsave(ab_save,"InsertRow -1,hasdata",is_event,"nestevent24")

dw_event.InsertRow(0)
wf_runorsave(ab_save,"InsertRow 0,hasdata",is_event,"nestevent25")

dw_event.InsertRow(10)
wf_runorsave(ab_save,"InsertRow 10,hasdata",is_event,"nestevent26")

dw_event.InsertRow(1000)
wf_runorsave(ab_save,"InsertRow 1000,hasdata",is_event,"nestevent27")

dw_event.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow ,hasdata",is_event,"nestevent28")

dw_event.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow ,hasdata",is_event,"nestevent29")

dw_event.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage ,hasdata",is_event,"nestevent30")

dw_event.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage ,hasdata",is_event,"nestevent31")


dw_event.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10,hasdata",is_event,"nestevent32")

dw_event.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1,hasdata",is_event,"nestevent33")

dw_event.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0,hasdata",is_event,"nestevent34")

dw_event.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,hasdata",is_event,"nestevent35")

//dw_event.DeleteRow(1)
//wf_runorsave(ab_save,"DeleteRow 1,hasdata",is_event,"nestevent36")
//dw_event.DeleteRow(dw_event.getrow())
//wf_runorsave(ab_save,"DeleteRow currentrow,hasdata",is_event,"nestevent37")
//dw_event.DeleteRow(dw_event.rowcount())
//wf_runorsave(ab_save,"DeleteRow rowcount,hasdata",is_event,"nestevent38")

//dw_event.SetItem(1,5,'test')
//dw_event.AcceptText()
//wf_runorsave(ab_save,"AcceptText right,hasdata",is_event,"nestevent39")
//
//dw_event.SetItem(1,1,"abd")
//dw_event.AcceptText()
//wf_runorsave(ab_save,"acceptText error,hasdata",is_event,"nestevent40")

dw_event.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,hasdata",is_event,"nestevent41")
dw_event.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,hasdata",is_event,"nestevent42")

dw_event.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,hasdata",is_event,"nestevent43")


dw_event.SetSort('#1 A')
dw_event.Sort()
wf_runorsave(ab_save,"Sort ,hasdata",is_event,"nestevent44")
wf_output("POP","POP","Types of expressions must match.")
dw_event.SetFilter("#1 = 100")
dw_event.Filter()
wf_runorsave(ab_save,"Filter 100,hasdata",is_event,"nestevent45")

dw_event.SetFilter("#1 = '999'")
dw_event.Filter()
wf_runorsave(ab_save,"Filter 999,hasdata",is_event,"nestevent46")

//dw_event.RowsDiscard(1,2,delete!)
//wf_runorsave(ab_save,"RowsDiscard delete!",is_event,"nestevent47")
//dw_event.RowsDiscard(1,2,filter!)
//wf_runorsave(ab_save,"RowsDiscard filter!",is_event,"nestevent48")
//dw_event.RowsDiscard(1,2,primary!)
//wf_runorsave(ab_save,"RowsDiscard primary!",is_event,"nestevent49")

dw_event.Reset()
wf_runorsave(ab_save,"Reset ,hasdata",is_event,"nestevent50")



end subroutine

public subroutine wf_nestreport_event_child (boolean ab_save);//delete from composite_fun;
integer li_count

dw_event.dataobject="d_nest_objectproperty"
dw_event.settransobject(sqlca)

dw_event.retrieve()
datawindowchild ldw_child
dw_event.GetChild('dw_1', ldw_child)
is_event = ""
ldw_child.Retrieve()
wf_runorsave(ab_save,"Retrieve hasdata",is_event,"nesteventC1")

//ldw_child.Resize(ldw_child.width - 10,ldw_child.height - 10)
//wf_runorsave(ab_save,"Resize hasdata",is_event,"nesteventC2")

ldw_child.reset()
ldw_child.InsertRow(-1)

ldw_child.update()
wf_runorsave(ab_save,"update 1 nodata",is_event,"nesteventC3")

ldw_child.reset()
ldw_child.InsertRow(0)

wf_runorsave(ab_save,"InsertRow 0 nodata",is_event,"nesteventC4")

ldw_child.reset()
ldw_child.InsertRow(10)

wf_runorsave(ab_save,"InsertRow 10 nodata",is_event,"nesteventC5")

ldw_child.reset()
ldw_child.InsertRow(1000)

wf_runorsave(ab_save,"InsertRow 1000 nodata",is_event,"nesteventC6")

ldw_child.reset()
ldw_child.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow nodata",is_event,"nesteventC7")

ldw_child.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow nodata",is_event,"nesteventC8")

ldw_child.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage nodata",is_event,"nesteventC9")
//
ldw_child.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage nodata",is_event,"nesteventC10")


ldw_child.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10 nodata",is_event,"nesteventC11")

ldw_child.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1 nodata",is_event,"nesteventC12")

ldw_child.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0 nodata",is_event,"nesteventC13")


ldw_child.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,nodata",is_event,"nesteventC14")

ldw_child.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,nodata",is_event,"nesteventC15")
ldw_child.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,nodata",is_event,"nesteventC16")

ldw_child.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,nodata",is_event,"nesteventC17")


ldw_child.SetSort('dept_id A')
ldw_child.Sort()
wf_runorsave(ab_save,"Sort ,nodata",is_event,"nesteventC18")


ldw_child.SetFilter("#1 = 100")
ldw_child.Filter()
wf_runorsave(ab_save,"Filter ,nodata",is_event,"nesteventC19")

ldw_child.RowsDiscard(1,2,delete!)
wf_runorsave(ab_save,"RowsDiscard delete!,nodata",is_event,"nesteventC20")
ldw_child.RowsDiscard(1,2,filter!)
wf_runorsave(ab_save,"RowsDiscard filter!,nodata",is_event,"nesteventC21")
ldw_child.RowsDiscard(1,2,primary!)
wf_runorsave(ab_save,"RowsDiscard primary!,nodata",is_event,"nesteventC22")

ldw_child.Reset()
wf_runorsave(ab_save,"Reset ,nodata",is_event,"nesteventC23")

ldw_child.Retrieve()
ldw_child.InsertRow(-1)
wf_runorsave(ab_save,"InsertRow -1,hasdata",is_event,"nesteventC24")

ldw_child.InsertRow(0)
wf_runorsave(ab_save,"InsertRow 0,hasdata",is_event,"nesteventC25")

ldw_child.InsertRow(10)
wf_runorsave(ab_save,"InsertRow 10,hasdata",is_event,"nesteventC26")

ldw_child.InsertRow(1000)
wf_runorsave(ab_save,"InsertRow 1000,hasdata",is_event,"nesteventC27")

ldw_child.ScrollNextRow()
wf_runorsave(ab_save,"scrollnextrow ,hasdata",is_event,"nesteventC28")

ldw_child.ScrollPriorRow()
wf_runorsave(ab_save,"ScrollPriorRow ,hasdata",is_event,"nesteventC29")

ldw_child.ScrollNextPage()
wf_runorsave(ab_save,"ScrollNextPage ,hasdata",is_event,"nesteventC30")

ldw_child.ScrollPriorPage()
wf_runorsave(ab_save,"ScrollPriorPage ,hasdata",is_event,"nesteventC31")


ldw_child.ScrollToRow(10)
wf_runorsave(ab_save,"ScrollToRow 10,hasdata",is_event,"nesteventC32")

ldw_child.ScrollToRow(-1)
wf_runorsave(ab_save,"ScrollToRow -1,hasdata",is_event,"nesteventC33")

ldw_child.ScrollToRow(0)
wf_runorsave(ab_save,"ScrollToRow 0,hasdata",is_event,"nesteventC34")

ldw_child.ScrollToRow(1000)
wf_runorsave(ab_save,"ScrollToRow 1000,hasdata",is_event,"nesteventC35")

//ldw_child.DeleteRow(1)
//wf_runorsave(ab_save,"DeleteRow 1,hasdata",is_event,"nesteventC36")
//ldw_child.DeleteRow(ldw_child.getrow())
//wf_runorsave(ab_save,"DeleteRow currentrow,hasdata",is_event,"nesteventC37")
//ldw_child.DeleteRow(ldw_child.rowcount())
//wf_runorsave(ab_save,"DeleteRow rowcount,hasdata",is_event,"nesteventC38")

//ldw_child.SetItem(1,5,'test')
//ldw_child.AcceptText()
//wf_runorsave(ab_save,"AcceptText right,hasdata",is_event,"nesteventC39")
//
//ldw_child.SetItem(1,1,"abd")
//ldw_child.AcceptText()
//wf_runorsave(ab_save,"acceptText error,hasdata",is_event,"nesteventC40")

ldw_child.SetRow(-1)
wf_runorsave(ab_save,"SetRow -1,hasdata",is_event,"nesteventC41")
ldw_child.SetRow(1)
wf_runorsave(ab_save,"SetRow 1,hasdata",is_event,"nesteventC42")

ldw_child.SetRow(100)
wf_runorsave(ab_save,"SetRow 100,hasdata",is_event,"nesteventC43")


ldw_child.SetSort('#1 A')
ldw_child.Sort()
wf_runorsave(ab_save,"Sort ,hasdata",is_event,"nesteventC44")

ldw_child.SetFilter("#1 = 100")
ldw_child.Filter()
wf_runorsave(ab_save,"Filter 100,hasdata",is_event,"nesteventC45")

ldw_child.SetFilter("#1 = '999'")
ldw_child.Filter()
wf_runorsave(ab_save,"Filter 999,hasdata",is_event,"nesteventC46")

//ldw_child.RowsDiscard(1,2,delete!)
//wf_runorsave(ab_save,"RowsDiscard delete!",is_event,"nesteventC47")
//ldw_child.RowsDiscard(1,2,filter!)
//wf_runorsave(ab_save,"RowsDiscard filter!",is_event,"nesteventC48")
//ldw_child.RowsDiscard(1,2,primary!)
//wf_runorsave(ab_save,"RowsDiscard primary!",is_event,"nesteventC49")

ldw_child.Reset()
wf_runorsave(ab_save,"Reset ,hasdata",is_event,"nesteventC50")




end subroutine

public subroutine wf_performance ();/*

											0[1]	0[2]	0[3]	0[4]	0[5]
											
		-------------------------------1-----------------------------------	          -------------------------5-----------------------------------------
		1[a1-1]	1[a1-2]...1[a1-5]  	1[b1-1] 1[b1-2]...1[b1-10]		ÖÁ   1[e1-1]...1[e1-40]    5[a5-1]	5[a5-2]...5[a5-5]   5[b5-1] 5[b5-2]...5[b5-10]		ÖÁ   5[e5-1]...5[e5-40]
	
*/
/*
//ËÄ¸ö±í£ºsqlÓï¾äÈçÏÂ
drop table nest_peformance0;
drop table nest_peformance1;
drop table nest_peformance2;
drop table nest_peformance3;
drop table nest_peformance4;
CREATE TABLE nest_peformance0 ("nest" integer NOT NULL, "index1" varchar(15) NOT NULL, "value1" varchar(15) NOT NULL , PRIMARY KEY ("nest", "index1", "value1")) ;
CREATE TABLE nest_peformance1 ("nest" integer NOT NULL, "index1" varchar(15) NOT NULL, "value1" varchar(15) NOT NULL , PRIMARY KEY ("nest", "index1", "value1")) ;
CREATE TABLE nest_peformance2 ("nest" integer NOT NULL, "index1" varchar(15) NOT NULL, "value1" varchar(15) NOT NULL , PRIMARY KEY ("nest", "index1", "value1")) ;
CREATE TABLE nest_peformance3 ("nest" integer NOT NULL, "index1" varchar(15) NOT NULL, "value1" varchar(15) NOT NULL , PRIMARY KEY ("nest", "index1", "value1")) ;
CREATE TABLE nest_peformance4 ("nest" integer NOT NULL, "index1" varchar(15) NOT NULL, "value1" varchar(15) NOT NULL , PRIMARY KEY ("nest", "index1", "value1")) ;

select value1,count(*) from nest_peformance2 group by value1;
select index1,count(*) from nest_peformance4 group by index1;
*/
//violation
int i,j,k,l,m,li_nest

int li_record[] = {5,10,20,30,40} 
//×îºóÒ»²ãÎª{10,20}


string ls_index,ls_value
string ls_DwNumber[] = {"a","b","c","d","e"}
Delete from nest_peformance0;
//µÚ0²ã
//1,1,a01
li_nest = 1
for i = 1 to 5 //datawindowÊý
	ls_value = string(i,"00")
	Insert into nest_peformance0(nest,index1,value1) 
	values(:li_nest,:ls_value,:ls_value);
next

Delete from nest_peformance1;
//µÚÒ»²ã
//1,1,a01
li_nest = 1
for i = 1 to 5 //datawindowÊý
	ls_index = string(i,"00")
	
	for j = 1 to li_record[i] //Ã¿Ò»¸ödatawindowµÄÊý¾Ý
		ls_value = ls_DwNumber[i] + string(j,"00")
		Insert into nest_peformance1(nest,index1,value1) 
		values(:li_nest,:ls_index,:ls_value);
	next
next

Delete from nest_peformance2;
//µÚ¶þ²ã
//2 a01 a01-01
li_nest = 2
for i = 1 to 5 //datawindowÊý
	for k = 1 to 5
		ls_index = ls_DwNumber[i]+string(k,"00")
		for j = 1 to li_record[k] //Ã¿Ò»¸ödatawindowµÄÊý¾Ý
			ls_value = ls_DwNumber[i] +string(k,"00") +"-"+ string(j,"00") 
			Insert into nest_peformance2(nest,index1,value1) 
			values(:li_nest,:ls_index,:ls_value);
		next
	next
next

Delete from nest_peformance3;
//µÚÈý²ã
li_nest = 3
for i = 1 to 5 //datawindowÊý
	for k = 1 to 5
		
		for l = 1 to 5
			ls_index = ls_DwNumber[i] +string(k,"00") +"-"+ string(l,"00") 
			for j = 1 to li_record[l] //Ã¿Ò»¸ödatawindowµÄÊý¾Ý
				ls_value = ls_DwNumber[i] +string(k,"00") +"-"+string(l,"00") +"-"+ string(j,"00") 
				Insert into nest_peformance3(nest,index1,value1) 
				values(:li_nest,:ls_index,:ls_value);
			next
		next
	next
next

Delete from nest_peformance4;
//µÚËÄ²ã
li_nest = 4
for i = 1 to 5 //datawindowÊý
	for k = 1 to 5
		for l = 1 to 5
			for m = 1 to 2 //ÕâÀïÓÃ2
				ls_index = ls_DwNumber[i] +string(k,"00") +"-"+ string(l,"00") +"-"+ string(m,"00")
				for j = 1 to li_record[m] //Ã¿Ò»¸ödatawindowµÄÊý¾Ý
					ls_value = ls_DwNumber[i] +string(k,"00") +"-"+string(l,"00") +"-"+ string(m,"00") +"-"+ string(j,"00") 
					Insert into nest_peformance4(nest,index1,value1) 
					values(:li_nest,:ls_index,:ls_value);
				next
			next
		next
	next
next
end subroutine

public subroutine wf_nestreport_print ();//d_f158a13_dwprop06

//print.buttons	no
//print.columns	1
//print.columns.width	0
//print.preview	yes ²»Ö§³Ömodify
//print.preview.buttons	no
//print.preview.zoom	100

dw_1.dataobject = "d_nestreport_print"
dw_1.settransobject(sqlca)
dw_1.retrieve()

any la_value

//zhushaobin 2005-1-28:
//Print.ColumnºÍPrint.Column.WidthÊôÐÔ²»Ö§³Ö(chendawei)

la_value = dw_1.describe("Datawindow.Print.buttons")
wf_Output("no",f_string(la_value),"Datawindow.Print.buttons")
//la_value = dw_1.describe("Datawindow.Print.columns")
//wf_Output("1",f_string(la_value),"Datawindow.Print.columns")
//la_value = dw_1.describe("Datawindow.Print.columns.width")
//wf_Output("0",f_string(la_value),"Datawindow.Print.columns.width")
la_value = dw_1.describe("Datawindow.Print.preview")
wf_Output("yes",f_string(la_value),"Datawindow.Print.preview")
la_value = dw_1.describe("Datawindow.Print.preview.buttons")
wf_Output("no",f_string(la_value),"Datawindow.Print.preview.buttons")
la_value = dw_1.describe("Datawindow.Print.preview.zoom")
wf_Output("100",f_string(la_value),"Datawindow.Print.preview.zoom")


la_value = dw_1.Modify("Datawindow.Print.buttons = 'yes'")
wf_Output("",f_string(la_value),"modify Datawindow.Print.buttons")
//la_value = dw_1.Modify("Datawindow.Print.columns = 100")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns")
//la_value = dw_1.Modify("Datawindow.Print.columns.width = 20")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns.width")
//la_value = dw_1.Modify("Datawindow.Print.preview = 50")
//wf_Output("yes",f_string(la_value),"Datawindow.Print.preview")
la_value = dw_1.Modify("Datawindow.Print.preview.buttons = yes")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.buttons")
la_value = dw_1.Modify("Datawindow.Print.preview.zoom = 50")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.zoom")


la_value = dw_1.describe("Datawindow.Print.buttons")
wf_Output("yes",f_string(la_value),"Datawindow.Print.buttons")
//la_value = dw_1.describe("Datawindow.Print.columns")
//wf_Output("100",f_string(la_value),"Datawindow.Print.columns")
//la_value = dw_1.describe("Datawindow.Print.columns.width")
//wf_Output("20",f_string(la_value),"Datawindow.Print.columns.width")
//la_value = dw_1.describe("Datawindow.Print.preview")
//wf_Output("yes",f_string(la_value),"Datawindow.Print.preview")
la_value = dw_1.describe("Datawindow.Print.preview.buttons")
wf_Output("yes",f_string(la_value),"Datawindow.Print.preview.buttons")
la_value = dw_1.describe("Datawindow.Print.preview.zoom")
wf_Output("50",f_string(la_value),"Datawindow.Print.preview.zoom")

dw_1.dataobject = "d_f158a13_dwprop06"
dw_1.settransobject(sqlca)
dw_1.retrieve()


datawindowchild ldw_child
dw_1.GetChild('dw_1', ldw_child)

la_value = ldw_child.describe("Datawindow.Print.buttons")
wf_Output("no",f_string(la_value),"Child.Print.buttons")
//la_value = ldw_child.describe("Datawindow.Print.columns")
//wf_Output("1",f_string(la_value),"Child.Print.columns")
//la_value = ldw_child.describe("Datawindow.Print.columns.width")
//wf_Output("0",f_string(la_value),"Child.Print.columns.width")
la_value = ldw_child.describe("Datawindow.Print.preview")
wf_Output("yes",f_string(la_value),"Child.Print.preview")
la_value = ldw_child.describe("Datawindow.Print.preview.buttons")
wf_Output("no",f_string(la_value),"Child.Print.preview.buttons")
la_value = ldw_child.describe("Datawindow.Print.preview.zoom")
wf_Output("100",f_string(la_value),"Child.Print.preview.zoom")


la_value = ldw_child.Modify("Datawindow.Print.buttons = 'yes'")
wf_Output("",f_string(la_value),"modify Datawindow.Print.buttons")
//la_value = ldw_child.Modify("Datawindow.Print.columns = 100")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns")
//la_value = ldw_child.Modify("Datawindow.Print.columns.width = 20")
//wf_Output("",f_string(la_value),"modify Datawindow.Print.columns.width")
//la_value = ldw_child.Modify("Datawindow.Print.preview = 50")
//wf_Output("yes",f_string(la_value),"Child.Print.preview")
la_value = ldw_child.Modify("Datawindow.Print.preview.buttons = yes")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.buttons")
la_value = ldw_child.Modify("Datawindow.Print.preview.zoom = 50")
wf_Output("",f_string(la_value),"modify Datawindow.Print.preview.zoom")


la_value = ldw_child.describe("Datawindow.Print.buttons")
wf_Output("yes",f_string(la_value),"Child.Print.buttons")
//la_value = ldw_child.describe("Datawindow.Print.columns")
//wf_Output("100",f_string(la_value),"Child.Print.columns")
//la_value = ldw_child.describe("Datawindow.Print.columns.width")
//wf_Output("20",f_string(la_value),"Child.Print.columns.width")
//la_value = ldw_child.describe("Datawindow.Print.preview")
//wf_Output("yes",f_string(la_value),"Child.Print.preview")
la_value = ldw_child.describe("Datawindow.Print.preview.buttons")
wf_Output("yes",f_string(la_value),"Child.Print.preview.buttons")
la_value = ldw_child.describe("Datawindow.Print.preview.zoom")
wf_Output("50",f_string(la_value),"Child.Print.preview.zoom")

la_value = dw_1.print()
wf_output("1",f_string(la_value),"print")

//la_value = ldw_child.print()
//wf_output("-1",f_string(la_value),"child print")



end subroutine

public subroutine wf_performance_importdw ();string dwsyntax, ErrorBuffer, ls_dataobject

integer i,j,k,m,rtncode
SetPointer(HourGlass!)
//Éú³É×îºóÒ»²ãdatawindow
dw_1.dataobject = "d_performance11_1_1_1"
string ls_pbl = "D:\My Documents\DataWindow Documents\hewubin½»½Ó\CompositeDatawindow\tempdw.pbl"//composite_performance.pbl"
//d_performance11_1_2_1 - d_performance11_1_5_2
string ls_table = "nest_peformance1"
string ls_text = "a01-01-01"
long  ll_pos
string ls_dw,ls_dw1,ls_dw2,ls_dw3,ls_dw4,ls_dw5
string ls_tablename
string ls_newtext// = "EXP2 =~"'a01-01-01'~""
string ls_abcde[] = {"a","b","c","d","e"} 
dwsyntax = dw_1.Describe("DataWindow.Syntax")
for m =1 to 5
	for k = 1 to 5
		for j = 1 to 5 
			for i = 1 to 2
				ls_dataobject = "d_performance1"+string(m)+"_"+string(k)+"_"+string(j)+"_"+string(i)
				if ls_dataobject = "d_performance11_1_1_1" then	CONTINUE
				//text
				ls_newtext = ls_abcde[m]+"0"+string(k)+"-0"+string(j)+"-0"+string(i)
				
				ll_pos = Pos(dwsyntax, ls_text,1)
				DO WHILE ll_pos > 0
					
					dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text) , ls_newtext)
					ll_pos = Pos(dwsyntax, ls_text,ll_pos + len(ls_text))
				LOOP
				rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
				dwsyntax = dw_1.Describe("DataWindow.Syntax")
			next
		next
	next
next 
//Éú³É×îºóÒ»²ãµÄÉÏÒ»²ãdatawindow
//d_performance11_1 - d_performance15_5
ls_dw1 = "d_performance11_1_1_1"
ls_dw2 = "d_performance11_1_1_2"

dw_1.dataobject = "d_performance11_1_1"
ls_text = "a01-01"
dwsyntax = dw_1.Describe("DataWindow.Syntax")
for m =1 to 5
	for i = 1 to 5
		//for j = 2 to 5 
		for j = 1 to 5	
			
			ls_dataobject = "d_performance1"+string(m)+"_"+string(j)+"_"+string(i)
			if ls_dataobject = "d_performance11_1_1" then	CONTINUE
			//report_dw
			ll_pos = Pos(dwsyntax, ls_dw1,1)
			ls_dw = ls_dataobject+"_1"
			DO WHILE ll_pos > 0
				dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw1), ls_dw)
				ll_pos = Pos(dwsyntax, ls_dw1,ll_pos+ len(ls_dw1))
			LOOP
			
			ls_dw = ls_dataobject+"_2"
			ll_pos = Pos(dwsyntax, ls_dw2,1)
			DO WHILE ll_pos > 0
				dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw2), ls_dw)
				ll_pos = Pos(dwsyntax, ls_dw2,ll_pos+ len(ls_dw2))
			LOOP
			
			//text
			ls_newtext = ls_abcde[m]+"0"+string(j)+"-0"+string(i)
			ll_pos = Pos(dwsyntax, ls_text,1)
				DO WHILE ll_pos > 0
	
				dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text), ls_newtext)
				ll_pos = Pos(dwsyntax, ls_text,ll_pos+ len(ls_text))
			LOOP
			rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
			dwsyntax = dw_1.Describe("DataWindow.Syntax")
		next
	next
next
//Éú³ÉµÚÈý²ãdatawindow
//d_performance11_1
ls_dw1 = "d_performance11_1_1"
ls_dw2 = "d_performance11_1_2"
ls_dw3 = "d_performance11_1_3"
ls_dw4 = "d_performance11_1_4"
ls_dw5 = "d_performance11_1_5"

dw_1.dataobject = "d_performance11_1"
ls_text = "a01"
dwsyntax = dw_1.Describe("DataWindow.Syntax")

for i = 1 to 5

	for j = 1 to 5	
		
		ls_dataobject = "d_performance1"+string(i)+"_"+string(j)
		if ls_dataobject = "d_performance11_1" then	CONTINUE
		//report_dw
		ll_pos = Pos(dwsyntax, ls_dw1,1)
		ls_dw = ls_dataobject+"_1"
		DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw1), ls_dw)
			ll_pos = Pos(dwsyntax, ls_dw1,ll_pos+ len(ls_dw1))
		LOOP
		
		ls_dw = ls_dataobject+"_2"
		ll_pos = Pos(dwsyntax, ls_dw2,1)
		DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw2), ls_dw)
			ll_pos = Pos(dwsyntax, ls_dw2,ll_pos+ len(ls_dw2))
		LOOP
		ll_pos = Pos(dwsyntax, ls_dw3,1)
		ls_dw = ls_dataobject+"_3"
		DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw3), ls_dw)
			ll_pos = Pos(dwsyntax, ls_dw3,ll_pos+ len(ls_dw3))
		LOOP
		
		ls_dw = ls_dataobject+"_4"
		ll_pos = Pos(dwsyntax, ls_dw4,1)
		DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw4), ls_dw)
			ll_pos = Pos(dwsyntax, ls_dw4,ll_pos+ len(ls_dw4))
		LOOP
		ls_dw = ls_dataobject+"_5"
		ll_pos = Pos(dwsyntax, ls_dw5,1)
		DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw5), ls_dw)
			ll_pos = Pos(dwsyntax, ls_dw5,ll_pos+ len(ls_dw5))
		LOOP
		
		//text
		ls_newtext = ls_abcde[i]+"0"+string(j)
		ll_pos = Pos(dwsyntax, ls_text,1)
			DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text), ls_newtext)
			ll_pos = Pos(dwsyntax, ls_text,ll_pos+ len(ls_text))
		LOOP
		rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
		dwsyntax = dw_1.Describe("DataWindow.Syntax")
	next
next
//Éú³ÉµÚ¶þ²ãdatawindow
//d_performance11
ls_dw1 = "d_performance11_1"
ls_dw2 = "d_performance11_2"
ls_dw3 = "d_performance11_3"
ls_dw4 = "d_performance11_4"
ls_dw5 = "d_performance11_5"

dw_1.dataobject = "d_performance11"
ls_text = "01"
dwsyntax = dw_1.Describe("DataWindow.Syntax")

for i = 1 to 5

	
	ls_dataobject = "d_performance1"+string(i)
	if ls_dataobject = "d_performance11" then	CONTINUE
	//report_dw
	ll_pos = Pos(dwsyntax, ls_dw1,1)
	ls_dw = ls_dataobject+"_1"
	DO WHILE ll_pos > 0
		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw1), ls_dw)
		ll_pos = Pos(dwsyntax, ls_dw1,ll_pos+ len(ls_dw1))
	LOOP
	
	ls_dw = ls_dataobject+"_2"
	ll_pos = Pos(dwsyntax, ls_dw2,1)
	DO WHILE ll_pos > 0
		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw2), ls_dw)
		ll_pos = Pos(dwsyntax, ls_dw2,ll_pos+ len(ls_dw2))
	LOOP
	ll_pos = Pos(dwsyntax, ls_dw3,1)
	ls_dw = ls_dataobject+"_3"
	DO WHILE ll_pos > 0
		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw3), ls_dw)
		ll_pos = Pos(dwsyntax, ls_dw3,ll_pos+ len(ls_dw3))
	LOOP
	
	ls_dw = ls_dataobject+"_4"
	ll_pos = Pos(dwsyntax, ls_dw4,1)
	DO WHILE ll_pos > 0
		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw4), ls_dw)
		ll_pos = Pos(dwsyntax, ls_dw4,ll_pos+ len(ls_dw4))
	LOOP
	ls_dw = ls_dataobject+"_5"
	ll_pos = Pos(dwsyntax, ls_dw5,1)
	DO WHILE ll_pos > 0
		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw5), ls_dw)
		ll_pos = Pos(dwsyntax, ls_dw5,ll_pos+ len(ls_dw5))
	LOOP
	
	//text
	ls_newtext = "0"+string(i)
	ll_pos = Pos(dwsyntax, ls_text,1)
		DO WHILE ll_pos > 0
		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text), ls_newtext)
		ll_pos = Pos(dwsyntax, ls_text,ll_pos+ len(ls_text))
	LOOP
	rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
	dwsyntax = dw_1.Describe("DataWindow.Syntax")
next


end subroutine

public subroutine wf_peformance_importdw_bak ();string dwsyntax, ErrorBuffer, ls_dataobject

integer i,j,k,rtncode
//d_performance11_1_1_1
dw_1.dataobject = "d_performance11_1_1_1"
/*
  SELECT "nest_peformance4"."nest",   
         "nest_peformance4"."index1",   
         "nest_peformance4"."value1"  
    FROM "nest_peformance4"  
   WHERE ( "nest_peformance4"."index1" = :index1 ) AND  
         ( "nest_peformance4"."index1" = 'a01-01-01' )  
			
			
	SELECT "nest_peformance4"."nest",   
         "nest_peformance4"."index1",   
         "nest_peformance4"."value1"  
    FROM "nest_peformance4"  
   WHERE ( "nest_peformance4"."index1" = :index1 ) AND  
         ( "nest_peformance4"."index1" = 'a01-02-01' )    
*/

string ls_pbl = "D:\My Documents\DataWindow Documents\hewubin½»½Ó\CompositeDatawindow\tempdw.pbl"//composite_performance.pbl"
//d_performance11_1_2_1 - d_performance11_1_5_2
string ls_table = "nest_peformance1"
string ls_text = "a01-01-01"
long  ll_pos
string ls_tablename
string ls_newtext// = "EXP2 =~"'a01-01-01'~""
string ls_abcde[] = {"a","b","c","d","e"} 
dwsyntax = dw_1.Describe("DataWindow.Syntax")
//for k = 2 to 5
for k = 1 to 5
	for i = 1 to 2
		for j = 1 to 5 
			ls_dataobject = "d_performance11_"+string(k)+"_"+string(j)+"_"+string(i)
			if ls_dataobject = "d_performance11_1_1_1" then	CONTINUE
	//		//table
	//		DO WHILE Pos(dwsyntax, ls_table) > 0
	//			ll_pos = Pos(dwsyntax, ls_table)
	//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_table) + 1, ls_tablename)
	//		LOOP
	//'b01-01' 
			//text
			ls_newtext = ls_abcde[k]+"01-0"+string(j)+"-0"+string(i)
			
			ll_pos = Pos(dwsyntax, ls_text,1)
			DO WHILE ll_pos > 0
				
				dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text) , ls_newtext)
				ll_pos = Pos(dwsyntax, ls_text,ll_pos + len(ls_text))
			LOOP
			rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
			dwsyntax = dw_1.Describe("DataWindow.Syntax")
		next
	next
next

/*
  SELECT "nest_peformance3"."nest",   
         "nest_peformance3"."index1",   
         "nest_peformance3"."value1"  
    FROM "nest_peformance3"  
   WHERE ( "nest_peformance3"."index1" = :index1 ) AND  
         ( "nest_peformance3"."index1" = 'a01-01' )   
			
  SELECT "nest_peformance3"."nest",   
         "nest_peformance3"."index1",   
         "nest_peformance3"."value1"  
    FROM "nest_peformance3"  
   WHERE ( "nest_peformance3"."index1" = :index1 ) AND  
         ( "nest_peformance3"."index1" = 'a01-02' )  
*/
//d_performance11_1 - d_performance15_5
string ls_dw1 = "d_performance11_1_1_1"
string ls_dw2 = "d_performance11_1_1_2"
string ls_dw
dw_1.dataobject = "d_performance11_1_1"
ls_text = "a01-01"
dwsyntax = dw_1.Describe("DataWindow.Syntax")
for i = 1 to 5
	//for j = 2 to 5 
	for j = 1 to 5	
		
		ls_dataobject = "d_performance11_"+string(j)+"_"+string(i)
		if ls_dataobject = "d_performance11_1_1" then	CONTINUE
		//report_dw
		ll_pos = Pos(dwsyntax, ls_dw1,1)
		ls_dw = ls_dataobject+"_1"
		DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw1), ls_dw)
			ll_pos = Pos(dwsyntax, ls_dw1,ll_pos+ len(ls_dw1))
		LOOP
		
		ls_dw = ls_dataobject+"_2"
		ll_pos = Pos(dwsyntax, ls_dw2,1)
		DO WHILE ll_pos > 0
			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw2), ls_dw)
			ll_pos = Pos(dwsyntax, ls_dw2,ll_pos+ len(ls_dw2))
		LOOP
		
		//= 'b11_2_1' )    b01_01
		//text
		ls_newtext = ls_abcde[j]+"01-0"+string(i)
		ll_pos = Pos(dwsyntax, ls_text,1)
			DO WHILE ll_pos > 0

			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text), ls_newtext)
			ll_pos = Pos(dwsyntax, ls_text,ll_pos+ len(ls_text))
		LOOP
		rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
		dwsyntax = dw_1.Describe("DataWindow.Syntax")
	next
next


///////////////////////////////////////////////////////
//string dwsyntax, ErrorBuffer, ls_dataobject
//
//integer i,j,k,m,rtncode
////d_performance11_1_1_1
//dw_1.dataobject = "d_performance11_1_1_1"
///*
//  SELECT "nest_peformance4"."nest",   
//         "nest_peformance4"."index1",   
//         "nest_peformance4"."value1"  
//    FROM "nest_peformance4"  
//   WHERE ( "nest_peformance4"."index1" = :index1 ) AND  
//         ( "nest_peformance4"."index1" = 'a01-01-01' )  
//			
//			
//	SELECT "nest_peformance4"."nest",   
//         "nest_peformance4"."index1",   
//         "nest_peformance4"."value1"  
//    FROM "nest_peformance4"  
//   WHERE ( "nest_peformance4"."index1" = :index1 ) AND  
//         ( "nest_peformance4"."index1" = 'a01-02-01' )    
//*/
//
//string ls_pbl = "D:\My Documents\DataWindow Documents\hewubin½»½Ó\CompositeDatawindow\tempdw.pbl"//composite_performance.pbl"
////d_performance11_1_2_1 - d_performance11_1_5_2
//string ls_table = "nest_peformance1"
//string ls_text = "a01-01-01"
//long  ll_pos
//string ls_dw,ls_dw1,ls_dw2,ls_dw3,ls_dw4,ls_dw5
//string ls_tablename
//string ls_newtext// = "EXP2 =~"'a01-01-01'~""
//string ls_abcde[] = {"a","b","c","d","e"} 
//dwsyntax = dw_1.Describe("DataWindow.Syntax")
////for m =1 to 5
////
////
////	//for k = 2 to 5
////	for k = 1 to 5
////		for i = 1 to 2
////			for j = 1 to 5 
////				ls_dataobject = "d_performance1"+string(m)+"_"+string(k)+"_"+string(j)+"_"+string(i)
////				if ls_dataobject = "d_performance11_1_1_1" then	CONTINUE
////		//		//table
////		//		DO WHILE Pos(dwsyntax, ls_table) > 0
////		//			ll_pos = Pos(dwsyntax, ls_table)
////		//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_table) + 1, ls_tablename)
////		//		LOOP
////		//'b01-01' 
////				//text
////				ls_newtext = ls_abcde[k]+"0"+string(m)+"-0"+string(j)+"-0"+string(i)
////				
////				ll_pos = Pos(dwsyntax, ls_text,1)
////				DO WHILE ll_pos > 0
////					
////					dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text) , ls_newtext)
////					ll_pos = Pos(dwsyntax, ls_text,ll_pos + len(ls_text))
////				LOOP
////				rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
////				dwsyntax = dw_1.Describe("DataWindow.Syntax")
////			next
////		next
////	next
////next 
////
/////*
////  SELECT "nest_peformance3"."nest",   
////         "nest_peformance3"."index1",   
////         "nest_peformance3"."value1"  
////    FROM "nest_peformance3"  
////   WHERE ( "nest_peformance3"."index1" = :index1 ) AND  
////         ( "nest_peformance3"."index1" = 'a01-01' )   
////			
////  SELECT "nest_peformance3"."nest",   
////         "nest_peformance3"."index1",   
////         "nest_peformance3"."value1"  
////    FROM "nest_peformance3"  
////   WHERE ( "nest_peformance3"."index1" = :index1 ) AND  
////         ( "nest_peformance3"."index1" = 'a01-02' )  
////*/
//////d_performance11_1 - d_performance15_5
////string ls_dw1 = "d_performance11_1_1_1"
////string ls_dw2 = "d_performance11_1_1_2"
////string ls_dw
////dw_1.dataobject = "d_performance11_1_1"
////ls_text = "a01-01"
////dwsyntax = dw_1.Describe("DataWindow.Syntax")
////for m =1 to 5
////	for i = 1 to 5
////		//for j = 2 to 5 
////		for j = 1 to 5	
////			
////			ls_dataobject = "d_performance1"+string(m)+"_"+string(j)+"_"+string(i)
////			if ls_dataobject = "d_performance11_1_1" then	CONTINUE
////			//report_dw
////			ll_pos = Pos(dwsyntax, ls_dw1,1)
////			ls_dw = ls_dataobject+"_1"
////			DO WHILE ll_pos > 0
////				dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw1), ls_dw)
////				ll_pos = Pos(dwsyntax, ls_dw1,ll_pos+ len(ls_dw1))
////			LOOP
////			
////			ls_dw = ls_dataobject+"_2"
////			ll_pos = Pos(dwsyntax, ls_dw2,1)
////			DO WHILE ll_pos > 0
////				dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw2), ls_dw)
////				ll_pos = Pos(dwsyntax, ls_dw2,ll_pos+ len(ls_dw2))
////			LOOP
////			
////			//= 'b11_2_1' )    b01_01
////			//text
////			ls_newtext = ls_abcde[j]+"0"+string(m)+"-0"+string(i)
////			ll_pos = Pos(dwsyntax, ls_text,1)
////				DO WHILE ll_pos > 0
////	
////				dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text), ls_newtext)
////				ll_pos = Pos(dwsyntax, ls_text,ll_pos+ len(ls_text))
////			LOOP
////			rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
////			dwsyntax = dw_1.Describe("DataWindow.Syntax")
////		next
////	next
////next
//
///*
//  SELECT "nest_peformance2"."nest",   
//         "nest_peformance2"."index1",   
//         "nest_peformance2"."value1"  
//    FROM "nest_peformance2"  
//   WHERE ( "nest_peformance2"."index1" = :index1 ) AND  
//         ( "nest_peformance2"."index1" = 'a01' )    
//
//*/
////d_performance11_1
//ls_dw1 = "d_performance11_1_1"
//ls_dw2 = "d_performance11_1_2"
//ls_dw3 = "d_performance11_1_3"
//ls_dw4 = "d_performance11_1_4"
//ls_dw5 = "d_performance11_1_5"
//
//dw_1.dataobject = "d_performance11_1"
//ls_text = "a01"
//dwsyntax = dw_1.Describe("DataWindow.Syntax")
//
//for i = 1 to 5
//
//	for j = 1 to 5	
//		
//		ls_dataobject = "d_performance1"+string(i)+"_"+string(j)
//		if ls_dataobject = "d_performance11_1" then	CONTINUE
//		//report_dw
//		ll_pos = Pos(dwsyntax, ls_dw1,1)
//		ls_dw = ls_dataobject+"_1"
//		DO WHILE ll_pos > 0
//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw1), ls_dw)
//			ll_pos = Pos(dwsyntax, ls_dw1,ll_pos+ len(ls_dw1))
//		LOOP
//		
//		ls_dw = ls_dataobject+"_2"
//		ll_pos = Pos(dwsyntax, ls_dw2,1)
//		DO WHILE ll_pos > 0
//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw2), ls_dw)
//			ll_pos = Pos(dwsyntax, ls_dw2,ll_pos+ len(ls_dw2))
//		LOOP
//		ll_pos = Pos(dwsyntax, ls_dw3,1)
//		ls_dw = ls_dataobject+"_3"
//		DO WHILE ll_pos > 0
//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw3), ls_dw)
//			ll_pos = Pos(dwsyntax, ls_dw3,ll_pos+ len(ls_dw3))
//		LOOP
//		
//		ls_dw = ls_dataobject+"_4"
//		ll_pos = Pos(dwsyntax, ls_dw4,1)
//		DO WHILE ll_pos > 0
//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw4), ls_dw)
//			ll_pos = Pos(dwsyntax, ls_dw4,ll_pos+ len(ls_dw4))
//		LOOP
//		ls_dw = ls_dataobject+"_5"
//		ll_pos = Pos(dwsyntax, ls_dw5,1)
//		DO WHILE ll_pos > 0
//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw5), ls_dw)
//			ll_pos = Pos(dwsyntax, ls_dw5,ll_pos+ len(ls_dw5))
//		LOOP
//		
//		//text
//		ls_newtext = ls_abcde[i]+"0"+string(j)
//		ll_pos = Pos(dwsyntax, ls_text,1)
//			DO WHILE ll_pos > 0
//			dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text), ls_newtext)
//			ll_pos = Pos(dwsyntax, ls_text,ll_pos+ len(ls_text))
//		LOOP
//		rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
//		dwsyntax = dw_1.Describe("DataWindow.Syntax")
//	next
//next
//
////d_performance11
//ls_dw1 = "d_performance11_1"
//ls_dw2 = "d_performance11_2"
//ls_dw3 = "d_performance11_3"
//ls_dw4 = "d_performance11_4"
//ls_dw5 = "d_performance11_5"
//
//dw_1.dataobject = "d_performance11"
//ls_text = "01"
//dwsyntax = dw_1.Describe("DataWindow.Syntax")
//
//for i = 1 to 5
//
//	
//	ls_dataobject = "d_performance1"+string(i)
//	if ls_dataobject = "d_performance11" then	CONTINUE
//	//report_dw
//	ll_pos = Pos(dwsyntax, ls_dw1,1)
//	ls_dw = ls_dataobject+"_1"
//	DO WHILE ll_pos > 0
//		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw1), ls_dw)
//		ll_pos = Pos(dwsyntax, ls_dw1,ll_pos+ len(ls_dw1))
//	LOOP
//	
//	ls_dw = ls_dataobject+"_2"
//	ll_pos = Pos(dwsyntax, ls_dw2,1)
//	DO WHILE ll_pos > 0
//		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw2), ls_dw)
//		ll_pos = Pos(dwsyntax, ls_dw2,ll_pos+ len(ls_dw2))
//	LOOP
//	ll_pos = Pos(dwsyntax, ls_dw3,1)
//	ls_dw = ls_dataobject+"_3"
//	DO WHILE ll_pos > 0
//		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw3), ls_dw)
//		ll_pos = Pos(dwsyntax, ls_dw3,ll_pos+ len(ls_dw3))
//	LOOP
//	
//	ls_dw = ls_dataobject+"_4"
//	ll_pos = Pos(dwsyntax, ls_dw4,1)
//	DO WHILE ll_pos > 0
//		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw4), ls_dw)
//		ll_pos = Pos(dwsyntax, ls_dw4,ll_pos+ len(ls_dw4))
//	LOOP
//	ls_dw = ls_dataobject+"_5"
//	ll_pos = Pos(dwsyntax, ls_dw5,1)
//	DO WHILE ll_pos > 0
//		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_dw5), ls_dw)
//		ll_pos = Pos(dwsyntax, ls_dw5,ll_pos+ len(ls_dw5))
//	LOOP
//	
//	//text
//	ls_newtext = "0"+string(i)
//	ll_pos = Pos(dwsyntax, ls_text,1)
//		DO WHILE ll_pos > 0
//		dwsyntax = Replace(dwsyntax, ll_pos, len(ls_text), ls_newtext)
//		ll_pos = Pos(dwsyntax, ls_text,ll_pos+ len(ls_text))
//	LOOP
//	rtncode = LibraryImport(ls_pbl, ls_dataobject, ImportDataWindow!, dwsyntax, ErrorBuffer )
//	dwsyntax = dw_1.Describe("DataWindow.Syntax")
//next
//
//
end subroutine

public function integer wf_returnerror ();return ii_error
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
//string ls_message[]
ls_message[]={'[±àºÅ]','','CompositeDw '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"CompositeDw"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

on w_composite.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_autorun=create cb_autorun
this.dw_event=create dw_event
this.st_message=create st_message
this.lb_testitems=create lb_testitems
this.cb_run=create cb_run
this.cb_saveas=create cb_saveas
this.cb_error=create cb_error
this.cbx_right=create cbx_right
this.cb_max=create cb_max
this.cb_1=create cb_1
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_output=create dw_output
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.gb_4=create gb_4
this.dw_1=create dw_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_autorun,&
this.dw_event,&
this.st_message,&
this.lb_testitems,&
this.cb_run,&
this.cb_saveas,&
this.cb_error,&
this.cbx_right,&
this.cb_max,&
this.cb_1,&
this.cb_sort,&
this.cb_reset,&
this.dw_output,&
this.gb_1,&
this.gb_2,&
this.gb_3,&
this.gb_4,&
this.dw_1}
end on

on w_composite.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_autorun)
destroy(this.dw_event)
destroy(this.st_message)
destroy(this.lb_testitems)
destroy(this.cb_run)
destroy(this.cb_saveas)
destroy(this.cb_error)
destroy(this.cbx_right)
destroy(this.cb_max)
destroy(this.cb_1)
destroy(this.cb_sort)
destroy(this.cb_reset)
destroy(this.dw_output)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
destroy(this.gb_4)
destroy(this.dw_1)
end on

event timer;string ls_string[] ={	"Save PDF File As",&
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

type cb_3 from commandbutton within w_composite
integer x = 594
integer y = 356
integer width = 457
integer height = 128
integer taborder = 150
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "retrieve"
end type

event clicked;dw_1.dataobject = "d_computefield"
dw_1.settransobject(sqlca)
dw_1.retrieve()
end event

type cb_2 from commandbutton within w_composite
integer x = 1189
integer y = 352
integer width = 535
integer height = 128
integer taborder = 140
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Scrollnextpage"
end type

event clicked;
dw_1.Scrollnextpage()

end event

type cb_autorun from commandbutton within w_composite
integer x = 2277
integer y = 56
integer width = 297
integer height = 88
integer taborder = 20
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
cb_reset.triggerevent(clicked!)
ii_number = 1

lb_testitems.ExtendedSelect = false
lb_testitems.MultiSelect = false
timer(1)
For li_itemCount = 1 to li_ItemTotal
	ls_Item = lb_testitems.text(li_ItemCount)	
	lb_testitems.selectitem(li_itemcount)
	wf_testitem(false,false)
Next
timer(0)

lb_testitems.ExtendedSelect = true
lb_testitems.MultiSelect = true
end event

type dw_event from datawindow within w_composite
event ue_lbuttonup pbm_dwnlbuttonup
event ue_rbuttondown pbm_dwnrbuttondown
event ue_rbuttonup pbm_dwnrbuttonup
event ue_key pbm_dwnkey
event ue_lbuttondown pbm_lbuttondown
boolean visible = false
integer x = 73
integer y = 484
integer width = 2560
integer height = 1708
integer taborder = 30
string title = "none"
string dataobject = "d_computefield"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_lbuttonup;string ls_event
ls_event = "lbuttonup"
is_event += ls_event+","

end event

event ue_rbuttondown;string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","

end event

event ue_rbuttonup;string ls_event
ls_event = "rbuttonup"
is_event += ls_event+","

end event

event ue_key;string ls_event
ls_event = "pbm_dwnkey"
is_event += ls_event+","

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

event buttonclicked;string ls_event
ls_event = "buttonclicked"
is_event += ls_event+","

end event

event buttonclicking;string ls_event
ls_event = "buttonclicking"
is_event += ls_event+","

end event

event clicked;
string ls_event
ls_event = "clicked"
is_event += ls_event+","

end event

event constructor;string ls_event
ls_event = "contructor"
is_event += ls_event+","

end event

event dberror;string ls_event
ls_event = "dberror"
is_event += ls_event+","

end event

event destructor;string ls_event
ls_event = "destructor"
is_event += ls_event+","

end event

event doubleclicked;string ls_event
ls_event = "doubleclicked"
is_event += ls_event+","

end event

event editchanged;string ls_event
ls_event = "editchanged"
is_event += ls_event+","

end event

event getfocus;string ls_event
ls_event = "getfocus"
is_event += ls_event+","

end event

event itemchanged;string ls_event
ls_event = "itemchanged"
is_event += ls_event+","

end event

event itemerror;string ls_event
ls_event = "itemerror"
is_event += ls_event+","

end event

event itemfocuschanged;string ls_event
ls_event = "itemfocuschanged"
is_event += ls_event+","

end event

event losefocus;string ls_event
ls_event = "losefocus"
is_event += ls_event+","

end event

event rbuttondown;string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","

end event

event resize;string ls_event
ls_event = "resize"
is_event += ls_event+","

end event

event retrieveend;string ls_event
ls_event = "retrieveend"
is_event += ls_event+","

end event

event retrievestart;string ls_event
ls_event = "retrievestart"
is_event += ls_event+","

end event

event rowfocuschanged;string ls_event
ls_event = "rowfocuschanged"
is_event += ls_event+","

end event

event rowfocuschanging;string ls_event
ls_event = "rowfocuschanging"
is_event += ls_event+","

end event

event scrollhorizontal;string ls_event
ls_event = "scrollhorizontal"
is_event += ls_event+","

end event

event scrollvertical;//string ls_event
//ls_event = "scrollvertical"
//is_event += ls_event+","

end event

event sqlpreview;

string ls_event
ls_event = "sqlpreview"
is_event += ls_event+","

end event

event updateend;string ls_event
ls_event = "updateend"
is_event += ls_event+","

end event

event updatestart;string ls_event
ls_event = "updatestart"
is_event += ls_event+","

end event

type st_message from statictext within w_composite
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

type lb_testitems from listbox within w_composite
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

event constructor;
wf_testitem(true,false)

end event

event doubleclicked;cb_run.TriggerEvent(Clicked!)
end event

type cb_run from commandbutton within w_composite
integer x = 2277
integer y = 180
integer width = 297
integer height = 88
integer taborder = 100
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Run"
end type

event clicked;wf_testitem(false,false)
end event

type cb_saveas from commandbutton within w_composite
integer x = 4073
integer y = 172
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

event clicked;timer(1)
if dw_output.SaveAs("c:\output.txt", Text!	, FALSE)=1 then
	messagebox("Alert","save to output.text,OK!")
end if
timer(0)



end event

type cb_error from commandbutton within w_composite
integer x = 3803
integer y = 172
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
	//dw_output.setfilter("#1='Error'")
	//dw_output.filter()
	dw_output.setfilter("result <> 'Right'")
	dw_output.filter()
	this.text="All"
	
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_composite
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

type cb_max from commandbutton within w_composite
integer x = 3534
integer y = 172
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

event clicked;if cb_max.text="Max" then
	dw_output.x=dw_1.x

	dw_output.width+=145+dw_1.width

	cb_max.text="Min"
	gb_1.visible=false
	gb_2.visible=false
	dw_1.visible=false
	
else
	
	dw_output.x=dw_1.x+dw_1.width +145
	dw_output.width=dw_output.width -dw_1.width -145

	cb_max.text="Max"
	gb_1.visible=false
	gb_2.visible=false
	dw_1.visible=true
	dw_output.visible=true
end if
end event

type cb_1 from commandbutton within w_composite
integer x = 2277
integer y = 296
integer width = 297
integer height = 88
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Save"
end type

event clicked;wf_testitem(false,true)

end event

type cb_sort from commandbutton within w_composite
integer x = 3264
integer y = 172
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

type cb_reset from commandbutton within w_composite
integer x = 2994
integer y = 172
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

type dw_output from datawindow within w_composite
integer x = 2706
integer y = 476
integer width = 1792
integer height = 1716
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

type gb_1 from groupbox within w_composite
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

type gb_2 from groupbox within w_composite
integer x = 37
integer y = 416
integer width = 2629
integer height = 1832
integer taborder = 70
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = " datawindow "
end type

type gb_3 from groupbox within w_composite
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

type gb_4 from groupbox within w_composite
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

type dw_1 from datawindow within w_composite
integer x = 73
integer y = 476
integer width = 2560
integer height = 1708
integer taborder = 20
boolean bringtotop = true
string title = "none"
string dataobject = "d_f158a45_dwprop01"
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

event retrieverow;return ii_retrieverow
end event

