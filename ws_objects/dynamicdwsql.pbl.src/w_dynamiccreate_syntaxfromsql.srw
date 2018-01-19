$PBExportHeader$w_dynamiccreate_syntaxfromsql.srw
forward
global type w_dynamiccreate_syntaxfromsql from window
end type
type cbx_save from checkbox within w_dynamiccreate_syntaxfromsql
end type
type cb_all from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type dw_event from datawindow within w_dynamiccreate_syntaxfromsql
end type
type lb_testitems from listbox within w_dynamiccreate_syntaxfromsql
end type
type cb_run from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type cb_save from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type cb_3 from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type cbx_right from checkbox within w_dynamiccreate_syntaxfromsql
end type
type cb_max from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type cb_1 from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type cb_sort from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type cb_reset from commandbutton within w_dynamiccreate_syntaxfromsql
end type
type dw_output from datawindow within w_dynamiccreate_syntaxfromsql
end type
type gb_1 from groupbox within w_dynamiccreate_syntaxfromsql
end type
type gb_2 from groupbox within w_dynamiccreate_syntaxfromsql
end type
type gb_3 from groupbox within w_dynamiccreate_syntaxfromsql
end type
type gb_4 from groupbox within w_dynamiccreate_syntaxfromsql
end type
type dw_1 from datawindow within w_dynamiccreate_syntaxfromsql
end type
type st_message from statictext within w_dynamiccreate_syntaxfromsql
end type
end forward

global type w_dynamiccreate_syntaxfromsql from window
integer width = 4658
integer height = 2388
boolean titlebar = true
string title = "SyntaxFromSql Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cbx_save cbx_save
cb_all cb_all
dw_event dw_event
lb_testitems lb_testitems
cb_run cb_run
cb_save cb_save
cb_3 cb_3
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
st_message st_message
end type
global w_dynamiccreate_syntaxfromsql w_dynamiccreate_syntaxfromsql

type variables
int ii_retrievestart = 0,ii_error = 0,ii_retrieverow = 0 ,ii_errornumber = 0,ii_rightnumber = 0 ,ii_number = 1
string is_event
end variables

forward prototypes
public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type)
public subroutine wf_otherfun ()
public subroutine wf_runorsave (boolean ab_save, string as_value, string as_result, string as_flag)
public subroutine wf_testitem (boolean ab_init, boolean ab_save)
public subroutine wf_sharedata (boolean ab_save)
public subroutine wf_message (string as_operate, string as_problem)
public subroutine wf_synselect (boolean as_save)
public subroutine wf_presentationdwo (boolean as_save)
public subroutine wf_presentationtext (boolean as_save)
public subroutine wf_presentationcol (boolean as_save)
public subroutine wf_presentatiostyle (boolean as_save)
public subroutine wf_complaxsyntax (boolean as_save)
public subroutine wf_syntaxerr (boolean as_save)
public subroutine wf_syntaxspeceil (boolean as_save)
public subroutine wf_getsyntax (string as_arg_type, string as_sql, string as_pres)
public subroutine wf_dealsyntax (string as_arg_type, string as_syntax, integer as_result, string as_error)
public subroutine wf_presentationdwo_2 (boolean as_save)
public subroutine wf_presentationcol_2 (boolean as_save)
public subroutine wf_presentationgroup (boolean as_save)
public subroutine wf_dealparmnull (string as_arg_type, string as_syntax)
public function integer wf_returnerror ()
end prototypes

event ue_autorun();cbx_right.checked = false
cb_all.TriggerEvent(clicked!)
//cb_error.TriggerEvent(clicked!)
cb_save.TriggerEvent(clicked!)
cbx_right.checked = true
end event

public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type);string ls_message[]
//¸ÄsaveasË³Ðò
ls_message[]= {"Right","IE",as_type,as_OriValue}
if as_orivalue = "POP" then ls_message[1] = 'MessageBox'
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
	ls_message[2] = 'IE'
	ls_message[3] = as_CurValue
	f_outputtext(dw_output,ls_message)
end if

st_message.text = "Error:"+string(ii_error)
//ÔÚµ±Ò³¿´µ½POPÐÅÏ¢
if as_orivalue = "POP" and  as_orivalue = as_curvalue then
	dw_output.scrolltorow(dw_output.rowcount())
end if
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

public subroutine wf_runorsave (boolean ab_save, string as_value, string as_result, string as_flag);string ls_oldresult
//wf_runorsave(false,"","","")


//±£´æÊý¾Ý
if ab_save then
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

public subroutine wf_testitem (boolean ab_init, boolean ab_save);int i
string ls_item[]
integer li_ItemTotal, li_ItemCount,li_rowcount
	
if ab_init then
	//²âÊÔµã
	ls_item[1]		=	"synselect"
	ls_item[2]		=	"presentationdwo"
	ls_item[3]		=	"presentationtext"
	ls_item[4]		=	"presentationcol"
	ls_item[5]		=	"presentatiostyle"
	ls_item[6]		=	"complaxsyntax"
	ls_item[7]		=	"syntaxerr"
	ls_item[8]		=	"syntaxspeceil"
	ls_item[9]		=	"presentationgroup"
	
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
				li_rowcount = dw_output.rowcount()
				ii_errornumber = 0
				ii_rightnumber = 0
				wf_message(lb_testitems.text(li_ItemCount),"SyntaxFromSQL")
				
				choose case li_ItemCount
					case 1						
						wf_synselect(ab_save)
					case 2						
						wf_presentationdwo(ab_save)
					case 3
						wf_presentationtext(ab_save)
					case 4
						wf_presentationcol(ab_save)
					case 5
						wf_presentatiostyle(ab_save)
					case 6
						wf_complaxsyntax(ab_save)
					case 7
						wf_syntaxerr(ab_save)
					case 8
						wf_syntaxspeceil(ab_save)
					case 9
						wf_presentationgroup(ab_save)
				end choose
				//add for ue_autorun
				if ii_errornumber = 0 and not(cbx_right.checked) then
					dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
				end if
			else//save
				choose case li_ItemCount
					case 11
						wf_sharedata(ab_save)

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
wf_runorsave(ab_save,"insertrow sharedata report1 rowcount",f_string(la_value),"sharedata1")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"insertrow sharedata report2 rowcount",f_string(la_value),"sharedata2")
//
dw_1.Reset()

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"reset share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"reset sharedata report1 rowcount",f_string(la_value),"sharedata3")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"reset sharedata report2 rowcount",f_string(la_value),"sharedata4")
//
dw_1.Retrieve()

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"retrieve share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"retrieve sharedata report1 rowcount",f_string(la_value),"sharedata5")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"retrieve sharedata report2 rowcount",f_string(la_value),"sharedata6")
//
dw_1.deleterow(0)

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"deleterow share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report1 rowcount",f_string(la_value),"sharedata7")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report2 rowcount",f_string(la_value),"sharedata8")
//
dw_event.sharedataoff()

la_value = dw_event.rowcount()
wf_output("0",f_string(la_value),"deleterow share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report1 rowcount",f_string(la_value),"sharedata9")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report2 rowcount",f_string(la_value),"sharedata10")
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
ls_message[]={'[±àºÅ]','','SyntaxFromSql '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"SyntaxFromSql"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public subroutine wf_synselect (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

//sql
ls_arg_type = 'sql'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
ls_presentation = 'style(type=grid)'

wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//sql_where
ls_arg_type = 'sql_where'				
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = 'style(type=grid)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)		

//sql_order
ls_arg_type = 'sql_order'				
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  ' + & 
							'	Order By	employee.salary Desc'
ls_presentation = 'style(type=tabular)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//sql_union
ls_arg_type = 'sql_union'				
ls_sql = ' SELECT emp_sp.emp_id, ' + & 
         				'			emp_sp.emp_name,' + & 
							'			emp_sp.emp_dep ' + & 
							'	 FROM emp_sp   ' + & 
							'	Union '+ & 
							' Select emp_Trigger.v_id,' + & 
							'        emp_Trigger.v_name,'+&
							'        emp_Trigger.v_deptid'+&
							'   From emp_Trigger'
ls_presentation = 'style(type=tabular)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//sql_sum
ls_arg_type = 'sql_sum'				
ls_sql = ' SELECT sum(employee.salary) as salarySum ,' + &
							'        Count(employee.emp_id) as HumanCount'+&
							'	 FROM employee   ' 
ls_presentation = 'style(type=tabular)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//sql_case
ls_arg_type = 'sql_case'				
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			Case employee.sex  ' + & 
							'			WHEN ~'M~' THEN ~'ÄÐ~'  ' + &
							'			WHEN ~'F~' THEN ~'Å®~'  ' + &
							'			END as ~'ÐÔ±ð~'' + &
							'	 FROM employee   '
ls_presentation = 'style(type=Form)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//sql_groupby
ls_arg_type = 'sql_groupby'				
ls_sql = ' SELECT employee.dept_id ,' + & 
         				'			sum(employee.salary) as dep_M_salary' + & 
							'	 FROM employee   ' + & 
							' Where employee.sex = ~'M~'' + & 
							' Group By  employee.dept_id'
ls_presentation = 'style(type=Form)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//sql_having
ls_arg_type = 'sql_having'				
ls_sql = ' SELECT employee.dept_id ,' + & 
         				'			sum(employee.salary) as dep_M_salary' + & 
							'	 FROM employee   ' + & 
							' Where employee.sex = ~'M~'' + & 
							' Group By  employee.dept_id' + & 
							' having dept_id<>100'
ls_presentation = 'style(type=Form)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//sql_~r
ls_arg_type = 'sql_~r'				
ls_sql = ' SELECT employee.dept_id ,' + & 
         				'			employee.salary,'+ & 
							'        ~'Describe~~r~~nA~' = ~'Deptid~~r~~nis int~','+&
							'         DescribeB = ~'salary~~tis decimal~''+&
							'	 FROM employee   '
ls_presentation = 'style(type=grid)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)
end subroutine

public subroutine wf_presentationdwo (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

//DW_color
ls_arg_type = 'DW_color'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
ls_presentation = 'DataWindow(Color=67108864)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Columns
ls_arg_type = 'DW_label.Columns'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = 'DataWindow(Label.Columns=4)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Columns.Spacing
ls_arg_type = 'DW_label.Columns.Spacing'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = 'DataWindow(Label.Columns.Spacing=2)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Ellipse_Height
ls_arg_type = 'DW_label.Ellipse_Height'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = 'DataWindow(label.Ellipse_Height=50)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Ellipse_Width
ls_arg_type = 'DW_label.Ellipse_Width'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = 'DataWindow(label.Ellipse_Width=50)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Height
ls_arg_type = 'DW_label.Height'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = 'DataWindow(label.Height=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Name
ls_arg_type = 'DW_label.Name'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = ' DataWindow(label.Name=~'Address1~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Rows
ls_arg_type = 'DW_label.Rows'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = ' DataWindow(label.Rows=30)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Rows.Spacing
ls_arg_type = 'DW_label.Rows.Spacing'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = ' DataWindow(label.Rows.Spacing=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Shape
ls_arg_type = 'DW_label.Shape'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = 'DataWindow(label.Shape=~'Oval~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.Sheet
ls_arg_type = 'DW_label.Sheet'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = ' DataWindow(label.Sheet=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_label.TopDown
ls_arg_type = 'DW_label.TopDown'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = ' DataWindow(label.TopDown=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)
//DW_label.Width
ls_arg_type = 'DW_label.Width'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  '
ls_presentation = ' DataWindow(label.Width=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)
//DW_Message.Title
ls_arg_type = 'DW_Message.Title'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   ' + & 
							'	Where employee.Sex = ~'M~' And ' + & 
							'  		employee.salary > 50000  ' + & 
							'	Order By	employee.salary Desc'
				
ls_presentation = ' DataWindow(Message.Title=~'Êý¾ÝÐÅÏ¢~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Rows_Per_Detail
ls_arg_type = 'DW_Rows_Per_Detail'
ls_sql = ' SELECT emp_sp.emp_id, ' + & 
         				'			emp_sp.emp_name,' + & 
							'			emp_sp.emp_dep ' + & 
							'	 FROM emp_sp   ' + & 
							'	Union '+ & 
							' Select emp_Trigger.v_id,' + & 
							'        emp_Trigger.v_name,'+&
							'        emp_Trigger.v_deptid'+&
							'   From emp_Trigger'
ls_presentation = ' DataWindow(Rows_Per_Detail=2)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Timer_Interval
ls_arg_type = 'DW_Timer_Interval'
ls_sql = ' SELECT sum(employee.salary) as salarySum ,' + &
							'        Count(employee.emp_id) as HumanCount'+&
							'	 FROM employee   '
ls_presentation = ' DataWindow(Timer_Interval =10000)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Units
ls_arg_type = 'DW_Units'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			Case employee.sex  ' + & 
							'			WHEN ~'M~' THEN ~'ÄÐ~'  ' + &
							'			WHEN ~'F~' THEN ~'Å®~'  ' + &
							'			END as ~'ÐÔ±ð~'' + &
							'	 FROM employee   '
ls_presentation = ' DataWindow(Units=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_~R
ls_arg_type = 'DW_~R'
ls_sql = ' SELECT employee.dept_id ,' + & 
         				'			sum(employee.salary) as dep_M_salary' + & 
							'	 FROM employee   ' + & 
							' Where employee.sex = ~'M~'' + & 
							' Group By  employee.dept_id' + & 
							' having dept_id<>100'
ls_presentation = ' DataWindow(label.name=~'app~r~npath~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

wf_presentationdwo_2(as_save)
end subroutine

public subroutine wf_presentationtext (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
							
//Text_Alignment
ls_arg_type = 'Text_Alignment'
ls_presentation = 'style(type=grid) Text(Alignment=1)'//Alignment is right
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Background.Color
ls_arg_type = 'Text_Background.Color'
ls_presentation = 'style(type=grid) Text(Background.Color=67108864)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Background.Mode
ls_arg_type = 'Text_Background.Mode'
ls_presentation = 'style(type=grid) Text(Background.Mode=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Border
ls_arg_type = 'Text_Border'
ls_presentation = 'style(type=grid) Text(border=6)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Color
ls_arg_type = 'Text_Color'
ls_presentation = 'style(type=grid) Text(Color=134217856)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.CharSet
ls_arg_type = 'Text_Font.CharSet'
ls_presentation = 'style(type=grid) Text(Font.charset=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Escapement
ls_arg_type = 'Text_Font.Escapement'
ls_presentation = 'style(type=grid) Text(Font.Escapement=450)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Face
ls_arg_type = 'Text_Font.Face'
ls_presentation = 'style(type=grid) Text(Font.face=~'Courier~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Family
ls_arg_type = 'Text_Font.Family'
ls_presentation = 'style(type=grid) Text(Font.Family=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Height
ls_arg_type = 'Text_Font.Height'
ls_presentation = 'style(type=grid) Text(Font.Height=10)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Italic
ls_arg_type = 'Text_Font.Italic'
ls_presentation = 'style(type=grid) Text(Font.italic=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Pitch
ls_arg_type = 'Text_Font.Pitch'
ls_presentation = 'style(type=grid) Text(Font.Pitch=2)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Strikethrough
ls_arg_type = 'Text_Font.Strikethrough'
ls_presentation = 'style(type=grid) Text(Font.Strikethrough=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Underline
ls_arg_type = 'Text_Font.Underline'
ls_presentation = 'style(type=grid) Text(Font.Underline=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.Weight
ls_arg_type = 'Text_Font.Weight'
ls_presentation = 'style(type=grid) Text(Font.Weight=700)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Font.width
ls_arg_type = 'Text_Font.width'
ls_presentation = 'style(type=grid) Text(Font.width=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_All
ls_arg_type = 'Text_All'
ls_presentation = 'style(type=grid) Text(Alignment=1	Background.Color=67108864	Background.Mode=0	border=6	Color=134217856	Font.charset=1	Font.Escapement=450	Font.face=~'Courier~'	Font.Family=1	Font.Height=10	Font.italic=1	Font.Pitch=2	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.width=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_Two
ls_arg_type = 'Text_Two'
ls_presentation = 'style(type=grid) Text(Background.Color=67108864) Text(Background.Mode=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_more
ls_arg_type = 'Text_more'
ls_presentation = 'style(type=grid) Text(Background.Color=67108864) Text(Background.Mode=0) Text(Color=134217856) '
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Text_
ls_arg_type = 'Text_~R'
ls_presentation = 'style(type=grid) Text(Font.face=~'Modern~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

end subroutine

public subroutine wf_presentationcol (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
							
//Col_Background.Mode
ls_arg_type = 'Col_Background.Color'
ls_presentation = 'style(type=grid) Column(Background.Color=67108864)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Background.Mode
ls_arg_type = 'Col_Background.Mode'
ls_presentation = 'style(type=grid) Column(Background.Mode=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Border
ls_arg_type = 'Col_Border'
ls_presentation = 'style(type=grid) Column(border=6)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Color
ls_arg_type = 'Col_Color'
ls_presentation = 'style(type=grid) Column(Color=134217856)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.AutoHScroll
ls_arg_type = 'Col_Edit.AutoHScroll'
ls_presentation = 'style(type=grid) Column(Edit.AutoHScroll=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.AutoSelect
ls_arg_type = 'Col_Edit.AutoSelect'
ls_presentation = 'style(type=grid) Column(Edit.AutoSelect=no)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.AutoVScroll
ls_arg_type = 'Col_Edit.AutoVScroll'
ls_presentation = 'style(type=grid) Column(Edit.AutoVScroll=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.Case
ls_arg_type = 'Col_Edit.Case'
ls_presentation = 'style(type=grid) Column(Edit.Case=upper)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.CodeTable
ls_arg_type = 'Col_Edit.CodeTable'
ls_presentation = 'style(type=grid) column(Edit.CodeTable=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.DisplayOnly
ls_arg_type = 'Col_Edit.DisplayOnly'
ls_presentation = 'style(type=grid) column(Edit.DisplayOnly=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.FocusRectangle
ls_arg_type = 'Col_Edit.FocusRectangle'
ls_presentation = 'style(type=grid) column(Edit.FocusRectangle=no)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.Format
ls_arg_type = 'Col_Edit.Format'
ls_presentation = 'style(type=grid) column(Edit.Format=@@@@)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.HScrollBar
ls_arg_type = 'Col_Edit.HScrollBar'
ls_presentation = 'style(type=grid) column(Edit.HScrollBar=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.Limit
ls_arg_type = 'Col_Edit.Limit'
ls_presentation = 'style(type=grid) column(Edit.Limit=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.Name
ls_arg_type = 'Col_Edit.Name'
ls_presentation = 'style(type=grid) column(Edit.Name=~'#####~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.NilIsNull
ls_arg_type = 'Col_Edit.NilIsNull'
ls_presentation = 'style(type=grid) column(Edit.NilIsNull=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.Password
ls_arg_type = 'Col_Edit.Password'
ls_presentation = 'style(type=grid) column(Edit.Password=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.Required
ls_arg_type = 'Col_Edit.Required'
ls_presentation = 'style(type=grid) column(Edit.Required=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.Style
ls_arg_type = 'Col_Edit.Style'
ls_presentation = 'style(type=grid) column(Edit.Style=Editmask)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.ValidateCode
ls_arg_type = 'Col_Edit.ValidateCode'
ls_presentation = 'style(type=grid) column(Edit.ValidateCode=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Edit.VScrollBar
ls_arg_type = 'Col_Edit.VScrollBar'
ls_presentation = 'style(type=grid) column(Edit.VScrollBar=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

wf_presentationcol_2(as_save)
end subroutine

public subroutine wf_presentatiostyle (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
							
//PresentationStyle_Detail_Bottom_Margin
ls_arg_type = 'PresentationStyle_Detail_Bottom_Margin'
ls_presentation = 'Style(Detail_Bottom_Margin=40)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_Detail_Top_Margin
ls_arg_type = 'PresentationStyle_Detail_Top_Margin'
ls_presentation = 'Style(Detail_Top_Margin=40)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_Header_Bottom_Margin
ls_arg_type = 'PresentationStyle_Header_Bottom_Margin'
ls_presentation = 'Style(Header_Bottom_Margin=40)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_Header_Top_Margin
ls_arg_type = 'PresentationStyle_Header_Top_Margin'
ls_presentation = 'Style(Header_Top_Margin=40)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_Horizontal_Spread
ls_arg_type = 'PresentationStyle_Horizontal_Spread'
ls_presentation = 'Style(Horizontal_Spread=40)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_Left_Margin
ls_arg_type = 'PresentationStyle_Left_Margin'
ls_presentation = 'Style(Left_Margin=200)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_report
ls_arg_type = 'PresentationStyle_report'
ls_presentation = 'style(report=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_type
ls_arg_type = 'PresentationStyle_type'
ls_presentation = 'style(type=grid)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_Vertical_Size
ls_arg_type = 'PresentationStyle_Vertical_Size'
ls_presentation = 'style(Vertical_Size=1000)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_Vertical_Spread
ls_arg_type = 'PresentationStyle_Vertical_Spread'
ls_presentation = 'style(Vertical_Spread=40)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_All
ls_arg_type = 'PresentationStyle_All'
ls_presentation = 'style(Detail_Bottom_Margin=40	Detail_Top_Margin=40	Header_Bottom_Margin=40	Header_Top_Margin=40	Horizontal_Spread=40	Left_Margin=200	report=yes	type=grid	Vertical_Size=1000	Vertical_Spread=40)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationStyle_
ls_arg_type = 'PresentationStyle_~R'
ls_presentation = 'style(type=grid~r~n)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationTitle_
ls_arg_type = 'PresentationTitle_'
ls_presentation = 'Title(~'employee information~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationTitle_~R
ls_arg_type = 'PresentationTitle_~R'
ls_presentation = 'Title(~'employee~r~ninformation~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//PresentationTitle_Two
ls_arg_type = 'PresentationTitle_Two'
ls_presentation = 'title ("title1" ) title ("title2")'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


end subroutine

public subroutine wf_complaxsyntax (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
							
//presentation_grid
ls_arg_type = 'presentation_grid'
ls_presentation =	'style(type=grid	Detail_Bottom_Margin=40	Detail_Top_Margin=40	Header_Bottom_Margin=40	Header_Top_Margin=40	Horizontal_Spread=40	Left_Margin=200	report=yes	Vertical_Size=1000	Vertical_Spread=40) '+&
										'DataWindow(Color=67108864	Label.Columns=4	Label.Columns.Spacing=50	label.Ellipse_Height=50	 label.Ellipse_Width=50	 label.Height=100	label.Name=~'Address1~'	label.Rows=30	label.Rows.Spacing=100	label.Shape=~'rectangle~' label.Sheet=yes	label.TopDown=yes	label.Width=100	Message.Title=~'Êý¾ÝÐÅÏ¢~' 	Rows_Per_Detail=2	Timer_Interval =10000	Units=0	label.name=~'app~r~npath~'	Print.Collate=yes	Print.Color=1	Print.Columns=2	Print.Columns.Width=1000	Print.Copies=2	Print.DocumentName=~'datawindow print~'	Print.Duplex=2	Print.Filename=~'dwprint~'	Print.Margin.Bottom=100	Print.Margin.Left=50	Print.Margin.Right=50	Print.Margin.Top=100	Print.Orientation=2	Print.Page.Range=~'1,2,5-10~'	Print.Page.RangeInclude=1	Print.Paper.Size=10	Print.Paper.Source=0	Print.Preview=yes	Print.Preview.Rulers=yes	Print.Preview.Zoom=1	Print.Prompt=yes	Print.Quality=0	Print.Scale=1) '+&
					  					'column(Background.Color=67108864	Background.Mode=0	border=6	Color=134217856	Edit.AutoHScroll=yes	Edit.AutoSelect=no	Edit.AutoVScroll=yes	Edit.Case=upper	Edit.CodeTable=yes	Edit.DisplayOnly=yes	Edit.FocusRectangle=no	Edit.Format=@@@@	Edit.HScrollBar=yes	Edit.Limit=0	Edit.Name=~'#####~'	Edit.NilIsNull=yes	Edit.Password=yes	Edit.Required=yes	Edit.Style=Editmask	Edit.ValidateCode=yes	Edit.VScrollBar=yes	Font.CharSet=1	Font.Escapement=100	Font.Face=~'Courier~'	Font.Family=0	Font.Height=14	Font.Italic=1	Font.Pitch=1	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.Width=20) '+&
										'Text(Alignment=1	Background.Color=67108864	Background.Mode=0	border=6	Color=134217856	Font.charset=1	Font.Escapement=450	Font.face=~'Courier~'	Font.Family=1	Font.Height=10	Font.italic=1	Font.Pitch=2	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.width=100) '+&
									  	'Title(~'employee information~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//presentation_tabular
ls_arg_type = 'presentation_tabular'
ls_presentation =	'style(type=tabular	Detail_Bottom_Margin=40	Detail_Top_Margin=40	Header_Bottom_Margin=40	Header_Top_Margin=40	Horizontal_Spread=40	Left_Margin=200	report=yes	Vertical_Size=1000	Vertical_Spread=40) '+&
										'DataWindow(Color=67108864	Label.Columns=4	Label.Columns.Spacing=50	label.Ellipse_Height=50	 label.Ellipse_Width=50	 label.Height=100	label.Name=~'Address1~'	label.Rows=30	label.Rows.Spacing=100	label.Shape=~'rectangle~' label.Sheet=yes	label.TopDown=yes	label.Width=100	Message.Title=~'Êý¾ÝÐÅÏ¢~' 	Rows_Per_Detail=2	Timer_Interval =10000	Units=0	label.name=~'app~r~npath~'	Print.Collate=yes	Print.Color=1	Print.Columns=2	Print.Columns.Width=1000	Print.Copies=2	Print.DocumentName=~'datawindow print~'	Print.Duplex=2	Print.Filename=~'dwprint~'	Print.Margin.Bottom=100	Print.Margin.Left=50	Print.Margin.Right=50	Print.Margin.Top=100	Print.Orientation=2	Print.Page.Range=~'1,2,5-10~'	Print.Page.RangeInclude=1	Print.Paper.Size=10	Print.Paper.Source=0	Print.Preview=yes	Print.Preview.Rulers=yes	Print.Preview.Zoom=1	Print.Prompt=yes	Print.Quality=0	Print.Scale=1) '+&
					  					'column(Background.Color=67108864	Background.Mode=0	border=6	Color=134217856	Edit.AutoHScroll=yes	Edit.AutoSelect=no	Edit.AutoVScroll=yes	Edit.Case=upper	Edit.CodeTable=yes	Edit.DisplayOnly=yes	Edit.FocusRectangle=no	Edit.Format=@@@@	Edit.HScrollBar=yes	Edit.Limit=0	Edit.Name=~'#####~'	Edit.NilIsNull=yes	Edit.Password=yes	Edit.Required=yes	Edit.Style=Editmask	Edit.ValidateCode=yes	Edit.VScrollBar=yes	Font.CharSet=1	Font.Escapement=100	Font.Face=~'Courier~'	Font.Family=0	Font.Height=14	Font.Italic=1	Font.Pitch=1	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.Width=20) '+&
										'Text(Alignment=1	Background.Color=67108864	Background.Mode=0	border=6	Color=134217856	Font.charset=1	Font.Escapement=450	Font.face=~'Courier~'	Font.Family=1	Font.Height=10	Font.italic=1	Font.Pitch=2	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.width=100) '+&
									  	'Title(~'employee information~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//presentation_Freeform
ls_arg_type = 'presentation_Freeform'
ls_presentation =	'style(type=form	Detail_Bottom_Margin=40	Detail_Top_Margin=40	Header_Bottom_Margin=40	Header_Top_Margin=40	Horizontal_Spread=40	Left_Margin=200	report=yes	Vertical_Size=1000	Vertical_Spread=40) '+&
										'DataWindow(Color=67108864	Label.Columns=4	Label.Columns.Spacing=50	label.Ellipse_Height=50	 label.Ellipse_Width=50	 label.Height=100	label.Name=~'Address1~'	label.Rows=30	label.Rows.Spacing=100	label.Shape=~'rectangle~' label.Sheet=yes	label.TopDown=yes	label.Width=100	Message.Title=~'Êý¾ÝÐÅÏ¢~' 	Rows_Per_Detail=2	Timer_Interval =10000	Units=0	label.name=~'app~r~npath~'	Print.Collate=yes	Print.Color=1	Print.Columns=2	Print.Columns.Width=1000	Print.Copies=2	Print.DocumentName=~'datawindow print~'	Print.Duplex=2	Print.Filename=~'dwprint~'	Print.Margin.Bottom=100	Print.Margin.Left=50	Print.Margin.Right=50	Print.Margin.Top=100	Print.Orientation=2	Print.Page.Range=~'1,2,5-10~'	Print.Page.RangeInclude=1	Print.Paper.Size=10	Print.Paper.Source=0	Print.Preview=yes	Print.Preview.Rulers=yes	Print.Preview.Zoom=1	Print.Prompt=yes	Print.Quality=0	Print.Scale=1) '+&
					  					'column(Background.Color=67108864	Background.Mode=0	border=2	Color=134217856	Edit.AutoHScroll=yes	Edit.AutoSelect=no	Edit.AutoVScroll=yes	Edit.Case=upper	Edit.CodeTable=yes	Edit.DisplayOnly=yes	Edit.FocusRectangle=no	Edit.Format=@@@@	Edit.HScrollBar=yes	Edit.Limit=0	Edit.Name=~'#####~'	Edit.NilIsNull=yes	Edit.Password=yes	Edit.Required=yes	Edit.Style=Editmask	Edit.ValidateCode=yes	Edit.VScrollBar=yes	Font.CharSet=1	Font.Escapement=100	Font.Face=~'Courier~'	Font.Family=0	Font.Height=14	Font.Italic=1	Font.Pitch=1	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.Width=20) '+&
										'Text(Alignment=1	Background.Color=67108864	Background.Mode=0	border=6	Color=134217856	Font.charset=1	Font.Escapement=450	Font.face=~'Courier~'	Font.Family=1	Font.Height=10	Font.italic=1	Font.Pitch=2	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.width=100) '+&
									  	'Title(~'employee information~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

end subroutine

public subroutine wf_syntaxerr (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

//ERROR_SQL_""
ls_arg_type = 'ERROR_SQL_""'
ls_sql = ''
ls_presentation = 'Style(type=grid)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

////ERROR_SQl_InValid
//ls_arg_type = 'ERROR_SQl_InValid'
//ls_sql = ' SELECT employee.emp_id, ' + & 
//         				'			employee.emp_fname,' + & 
//							'			employee.emp_lname, ' + & 
//							'			employee.dept_id,   ' + & 
//							'			employee.salary,   ' + & 
//							'			employee.birth_date, ' + & 
//							'			employee.sex  ' + & 
//							'	 FROM employ   '
//ls_presentation = 'Style(type=grid)'							
//wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//ERROR_presentation_""
ls_arg_type = 'ERROR_presentation_""'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
ls_presentation = ''	
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//ERROR_presentation_ERROR
ls_arg_type = 'ERROR_presentation_ERROR'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
ls_presentation = 'style(type=form'			
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//ERROR_presentation_Invalid
ls_arg_type = 'ERROR_presentation_Invalid'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
ls_presentation='style(type=gridReport=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//ERROR_ERR_NULL
ls_arg_type = 'ERROR_ERR_NULL'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
ls_presentation='style(type=grid  Report=yes)'							
SetNUll(ls_ErrFsql)
ls_syntax = SqlCa.syntaxfromsql(ls_sql, ls_presentation, ls_ErrFsql)
if ls_syntax <> "" then
	li_result = dw_1.create( ls_syntax, ls_ErrCreate)
	dw_1.show()
end if
wf_dealsyntax(ls_arg_type,ls_syntax,li_result,ls_ErrFsql)

//ERROR_SQL_NULL
ls_arg_type = 'ERROR_SQL_NULL'
SetNull(ls_sql)
ls_presentation = 'Style(type=grid)'		
ls_syntax = SqlCa.syntaxfromsql(ls_sql, ls_presentation, ls_ErrFsql)
wf_dealparmnull(ls_arg_type,ls_syntax)


//ERROR_presentation_NULL
ls_arg_type = 'ERROR_presentation_NULL'
ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
SetNull(ls_presentation)
ls_syntax = SqlCa.syntaxfromsql(ls_sql, ls_presentation, ls_ErrFsql)
wf_dealparmnull(ls_arg_type,ls_syntax)

//ERROR_1-2_NULL
ls_arg_type = 'ERROR_1-2_NULL'
SetNUll(ls_sql)
SetNUll(ls_presentation)						

ls_syntax = SqlCa.syntaxfromsql(ls_sql, ls_presentation, ls_ErrFsql)
wf_dealparmnull(ls_arg_type,ls_syntax)

//ERROR_1-3_NULL
ls_arg_type = 'ERROR_1-3_NULL'
SetNUll(ls_sql)
ls_presentation='style(type=grid  Report=yes)'							
SetNUll(ls_ErrFsql)
ls_syntax = SqlCa.syntaxfromsql(ls_sql, ls_presentation, ls_ErrFsql)
wf_dealparmnull(ls_arg_type,ls_syntax)

//ERROR_All_NULL
ls_arg_type = 'ERROR_ALL_NULL'
SetNUll(ls_sql)
SetNUll(ls_presentation)
SetNUll(ls_ErrFsql)
ls_syntax = SqlCa.syntaxfromsql(ls_sql, ls_presentation, ls_ErrFsql)
wf_dealparmnull(ls_arg_type,ls_syntax)



end subroutine

public subroutine wf_syntaxspeceil (boolean as_save);string ls_sql
string ls_pres
string ls_ERROR
end subroutine

public subroutine wf_getsyntax (string as_arg_type, string as_sql, string as_pres);string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

ls_syntax = SqlCa.syntaxfromsql(as_sql, as_pres, ls_ErrFsql)
if ls_syntax <> "" then
	li_result = dw_1.create( ls_syntax, ls_ErrCreate)
	dw_1.show()
end if
wf_dealsyntax(as_arg_type,ls_syntax,li_result,ls_ErrFsql)

end subroutine

public subroutine wf_dealsyntax (string as_arg_type, string as_syntax, integer as_result, string as_error);string ls_syntax
integer li_result
string ls_error
string ls_message[]
string ls_output
string ls_right_error

if(cbx_save.checked = true) then
	INSERT INTO v30_syntaxfromsql
   VALUES (:as_arg_type,:as_syntax,:as_result,:as_error);
	
	if SQLCA.SQLCode <> 0 then
		messagebox(" INSERT ERROR ",SQLCA.SQLErrText)
	end if	
else
	select dw_syntax , create_result ,error
	into 	:ls_syntax , :li_result, :ls_error
	from v30_syntaxfromsql 
	where arg_type=:as_arg_type;
	
	ls_right_error = "Right"
	if as_syntax = "" then
		
		if as_error <> ls_error then
			ii_error ++
			//add for autorun
			ii_errornumber++
			ls_message[1] = ls_right_error
			ls_message[2] = "PB"
			ls_message[3] = as_arg_type
			ls_message[4] = ls_error
			f_outputtext(dw_output,ls_message)
			ls_right_error = "Error"
		end if		
		ls_output = as_error	
		
	else
		
		if as_result <> li_result then
			ii_error ++
			//add for autorun
			ii_errornumber++
			ls_message[1] = "Right"
			ls_message[2] = "PB"
			ls_message[3] = as_arg_type
			ls_message[4] = ls_syntax
			f_outputtext(dw_output,ls_message)	
			ls_right_error = "Error"
		end if		
		ls_output = as_syntax	
		
	end if
	
	if(ls_right_error = "Error" or cbx_right.checked = true) then
		ls_message[1] = ls_right_error
		ls_message[2] = "IE"
		ls_message[3] = as_arg_type
		ls_message[4] = ls_output
		f_outputtext(dw_output,ls_message)
	end if 
end if
st_message.text = "Error:"+string(ii_error)
end subroutine

public subroutine wf_presentationdwo_2 (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '

//DW_Print.Collate
ls_arg_type = 'DW_Print.Collate'
ls_presentation = 'DataWindow(Print.Collate=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Color
ls_arg_type = 'DW_Print.Color'
ls_presentation = 'DataWindow(Print.Color=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Columns
ls_arg_type = 'DW_Print.Columns'
ls_presentation = 'DataWindow(Print.Columns=2)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Columns.Width
ls_arg_type = 'DW_Print.Columns.Width'
ls_presentation = 'DataWindow(Print.Columns.Width=1000)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Copies
ls_arg_type = 'DW_Print.Copies'
ls_presentation = 'DataWindow(Print.Copies=2)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.DocumentName
ls_arg_type = 'DW_Print.DocumentName'
ls_presentation = 'DataWindow(Print.DocumentName=~'datawindow print~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Duplex
ls_arg_type = 'DW_Print.Duplex'
ls_presentation = 'DataWindow(Print.Duplex=2)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Filename
ls_arg_type = 'DW_Print.Filename'
ls_presentation = 'DataWindow(Print.Filename=~'dwprint~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Margin.Bottom
ls_arg_type = 'DW_Print.Margin.Bottom'
ls_presentation = ' DataWindow(Print.Margin.Bottom=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Margin.Left
ls_arg_type = 'DW_Print.Margin.Left'
ls_presentation = ' DataWindow(Print.Margin.Left=50)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Margin.Right
ls_arg_type = 'DW_Print.Margin.Right'
ls_presentation = ' DataWindow(Print.Margin.Right=50)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Margin.Top
ls_arg_type = 'DW_Print.Margin.Top'
ls_presentation = ' DataWindow(Print.Margin.Top=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Orientation
ls_arg_type = 'DW_Print.Orientation'
ls_presentation = ' DataWindow(Print.Orientation=2)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Page.Range
ls_arg_type = 'DW_Print.Page.Range'
ls_presentation = ' DataWindow(Print.Page.Range=~'1,2,5-10~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Page.RangeInclude
ls_arg_type = 'DW_Print.Page.RangeInclude'
ls_presentation = ' DataWindow(Print.Page.RangeInclude=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Paper.Size
ls_arg_type = 'DW_Print.Paper.Size'
ls_presentation = ' DataWindow(Print.Paper.Size=10)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Paper.Source
ls_arg_type = 'DW_Print.Paper.Source'
ls_presentation = ' DataWindow(Print.Paper.Source=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Preview
ls_arg_type = 'DW_Print.Preview'
ls_presentation = ' DataWindow(Print.Preview=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Preview.Rulers
ls_arg_type = 'DW_Print.Preview.Rulers'
ls_presentation = ' DataWindow(Print.Preview.Rulers=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


//DW_Print.Preview.Zoom
ls_arg_type = 'DW_Print.Preview.Zoom'
ls_presentation = ' DataWindow(Print.Preview.Zoom=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Prompt
ls_arg_type = 'DW_Print.Prompt'
ls_presentation = ' DataWindow(Print.Prompt=yes)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Quality
ls_arg_type = 'DW_Print.Quality'
ls_presentation = ' DataWindow(Print.Quality=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Print.Scale
ls_arg_type = 'DW_Print.Scale'
ls_presentation = ' DataWindow(Print.Scale=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_.All
ls_arg_type = 'DW_.All'
ls_presentation = ' DataWindow(Color=67108864	Label.Columns=4	Label.Columns.Spacing=50	label.Ellipse_Height=50	 label.Ellipse_Width=50	 label.Height=100	label.Name=~'Address1~'	label.Rows=30	label.Rows.Spacing=100	label.Shape=~'rectangle~' label.Sheet=yes	label.TopDown=yes	label.Width=100	Message.Title=~'Êý¾ÝÐÅÏ¢~' 	Rows_Per_Detail=2	Timer_Interval =10000	Units=0	label.name=~'app~r~npath~'	Print.Collate=yes	Print.Color=1	Print.Columns=2	Print.Columns.Width=1000	Print.Copies=2	Print.DocumentName=~'datawindow print~'	Print.Duplex=2	Print.Filename=~'dwprint~'	Print.Margin.Bottom=100	Print.Margin.Left=50	Print.Margin.Right=50	Print.Margin.Top=100	Print.Orientation=2	Print.Page.Range=~'1,2,5-10~'	Print.Page.RangeInclude=1	Print.Paper.Size=10	Print.Paper.Source=0	Print.Preview=yes	Print.Preview.Rulers=yes	Print.Preview.Zoom=1	Print.Prompt=yes	Print.Quality=0	Print.Scale=1)	'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_Processing
ls_arg_type = 'DW_Processing'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "datawindow(Processing=0 )"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_group_Processing
ls_arg_type = 'DW_group_Processing'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type=group) datawindow(Processing=0 )Group(3)"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//DW_tabular_Processing
ls_arg_type = 'DW_tabular_Processing'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type= tabular) datawindow(Processing=0 )"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


end subroutine

public subroutine wf_presentationcol_2 (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result

ls_sql = ' SELECT employee.emp_id, ' + & 
         				'			employee.emp_fname,' + & 
							'			employee.emp_lname, ' + & 
							'			employee.dept_id,   ' + & 
							'			employee.salary,   ' + & 
							'			employee.birth_date, ' + & 
							'			employee.sex  ' + & 
							'	 FROM employee   '
							
//Col_Font.CharSet
ls_arg_type = 'Col_Font.CharSet'
ls_presentation = 'style(type=grid) Column(Font.CharSet=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Escapement
ls_arg_type = 'Col_Font.Escapement'
ls_presentation = 'style(type=grid) Column(Font.Escapement=100)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Face
ls_arg_type = 'Col_Font.Face'
ls_presentation = 'style(type=grid) Column(Font.Face=~'Courier~')'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Family
ls_arg_type = 'Col_Font.Family'
ls_presentation = 'style(type=grid) Column(Font.Family=0)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Height
ls_arg_type = 'Col_Font.Height'
ls_presentation = 'style(type=grid) Column(Font.Height=14)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Italic
ls_arg_type = 'Col_Font.Italic'
ls_presentation = 'style(type=grid) Column(Font.Italic=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Pitch
ls_arg_type = 'Col_Font.Pitch'
ls_presentation = 'style(type=grid) Column(Font.Pitch=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Strikethrough
ls_arg_type = 'Col_Font.Strikethrough'
ls_presentation = 'style(type=grid) Column(Font.Strikethrough=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Underline
ls_arg_type = 'Col_Font.Underline'
ls_presentation = 'style(type=grid) column(Font.Underline=1)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Weight
ls_arg_type = 'Col_Font.Weight'
ls_presentation = 'style(type=grid) column(Font.Weight=700)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_Font.Width
ls_arg_type = 'Col_Font.Width'
ls_presentation = 'style(type=grid) column(Font.Width=20)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Col_All
ls_arg_type = 'Col_All'
ls_presentation = 'style(type=grid) column(Background.Color=67108864	Background.Mode=0	border=6	Color=134217856	Edit.AutoHScroll=yes	Edit.AutoSelect=no	Edit.AutoVScroll=yes	Edit.Case=upper	Edit.CodeTable=yes	Edit.DisplayOnly=yes	Edit.FocusRectangle=no	Edit.Format=@@@@	Edit.HScrollBar=yes	Edit.Limit=0	Edit.Name=#####	Edit.NilIsNull=yes	Edit.Password=yes	Edit.Required=yes	Edit.Style=Editmask	Edit.ValidateCode=yes	Edit.VScrollBar=yes	Font.CharSet=1	Font.Escapement=100	Font.Face=~'Courier~'	Font.Family=0	Font.Height=14	Font.Italic=1	Font.Pitch=1	Font.Strikethrough=1	Font.Underline=1	Font.Weight=700	Font.Width=20)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)


end subroutine

public subroutine wf_presentationgroup (boolean as_save);string ls_arg_type
string ls_sql
string ls_presentation

string ls_ErrFsql
string ls_ErrCreate
string ls_syntax
integer li_result


//Group_
ls_arg_type = 'Group_3'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=group) Group(3)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Group_NewPage
ls_arg_type = 'Group_NewPage3'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type=group) Group(3 NewPage)"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Group_3Resetpagecount
ls_arg_type = 'Group_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type=group) Group(3 Resetpagecount)"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Group_3NewPage_Resetpagecount
ls_arg_type = 'Group_3NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=group) Group(3 Resetpagecount Newpage)'			
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Group_NewPage_Resetpagecount
ls_arg_type = 'Group_NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=group) Group(Resetpagecount Newpage)'			
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//tabular_3NewPage_Resetpagecount
ls_arg_type = 'tabular_3NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=tabular) Group(3 Resetpagecount Newpage)'			
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//form_3NewPage_Resetpagecount
ls_arg_type = 'form_3NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=form) Group(3 Resetpagecount Newpage)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//grid_3NewPage_Resetpagecount
ls_arg_type = 'grid_3NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type=Grid) Group(3 Resetpagecount Newpage)"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//spreadsheet_3NewPage_Resetpagecount
ls_arg_type = 'spreadsheet_3NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type= spreadsheet) Group(3 Resetpagecount Newpage)"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//query_3NewPage_Resetpagecount
ls_arg_type = 'query_3NewPage_Resetpagecount'
ls_sql= "SELECT * FROM v30_common "
ls_presentation = 'style(type= query) Group(3 Resetpagecount Newpage)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//group_NewPage_3Resetpagecount
ls_arg_type = 'group_NewPage_3Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=group) Group(Resetpagecount 3 Newpage)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//group_1_3_NewPage_Resetpagecount
ls_arg_type = 'group_1_3_NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type=group) Group(1,3 Resetpagecount Newpage)"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//group_1#3_NewPage_Resetpagecount
ls_arg_type = 'group_1#3_NewPage_Resetpagecount'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=group) Group(1#3  Resetpagecount#Newpage)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Group_()&((&^%
ls_arg_type = 'Group_()&((&^%'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = "style(type=group) Group(^;$;*1^;;$;*3^$ Resetpagecount^+;;Newpage/;-\)"
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

//Group_Two
ls_arg_type = 'Group_Two'
ls_sql = "SELECT * FROM v30_common "
ls_presentation = 'style(type=group) Group(Resetpagecount 5 Newpage)Group(Resetpagecount 2 Newpage)'
wf_getsyntax(ls_arg_type,ls_sql,ls_presentation)

end subroutine

public subroutine wf_dealparmnull (string as_arg_type, string as_syntax);string ls_syntax
integer li_result
string ls_error
string ls_message[]
string ls_output
string ls_right_error
string ls_null

setnull(ls_null)

ls_right_error = "Right"
if as_syntax <> ls_null then
	ii_error ++
	ls_message[1] = "Right"
	ls_message[2] = "PB"
	ls_message[3] = as_arg_type
	ls_message[4] = ""
	f_outputtext(dw_output,ls_message)	
	ls_right_error = "Error"
end if		
	
if(ls_right_error = "Error" or cbx_right.checked = true) then
	ls_message[1] = ls_right_error
	ls_message[2] = "IE"
	ls_message[3] = as_arg_type
	ls_message[4] = ""
	f_outputtext(dw_output,ls_message)
end if 

end subroutine

public function integer wf_returnerror ();return ii_error
end function

on w_dynamiccreate_syntaxfromsql.create
this.cbx_save=create cbx_save
this.cb_all=create cb_all
this.dw_event=create dw_event
this.lb_testitems=create lb_testitems
this.cb_run=create cb_run
this.cb_save=create cb_save
this.cb_3=create cb_3
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
this.st_message=create st_message
this.Control[]={this.cbx_save,&
this.cb_all,&
this.dw_event,&
this.lb_testitems,&
this.cb_run,&
this.cb_save,&
this.cb_3,&
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
this.dw_1,&
this.st_message}
end on

on w_dynamiccreate_syntaxfromsql.destroy
destroy(this.cbx_save)
destroy(this.cb_all)
destroy(this.dw_event)
destroy(this.lb_testitems)
destroy(this.cb_run)
destroy(this.cb_save)
destroy(this.cb_3)
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
destroy(this.st_message)
end on

type cbx_save from checkbox within w_dynamiccreate_syntaxfromsql
integer x = 2747
integer y = 296
integer width = 421
integer height = 76
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Save To DB"
end type

type cb_all from commandbutton within w_dynamiccreate_syntaxfromsql
integer x = 2286
integer y = 168
integer width = 297
integer height = 88
integer taborder = 160
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "All"
end type

event clicked;Long i
long li_ItemTotal,li_rowcount
li_ItemTotal = lb_testitems.TotalItems()
			FOR i = 1 to li_ItemTotal
					li_rowcount = dw_output.rowcount()
					ii_errornumber = 0
					ii_rightnumber = 0					
					wf_message(lb_testitems.text(i),"SyntaxFromSql")
					
					choose case i
						case 1							
							wf_synselect(false)
						case 2						
							wf_presentationdwo(false)
						case 3
							wf_presentationtext(false)
						case 4
							wf_presentationcol(false)
						case 5
							wf_presentatiostyle(false)
						case 6
							wf_complaxsyntax(false)
						case 7
							wf_syntaxerr(false)
						case 8
							wf_syntaxspeceil(false)
						case 9
							wf_presentationgroup(false)
					end choose
					//add for ue_autorun
					if ii_errornumber = 0 and not(cbx_right.checked) then
						dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + ii_rightnumber + 10,Primary!)
					end if
			
			NEXT
end event

type dw_event from datawindow within w_dynamiccreate_syntaxfromsql
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

event scrollvertical;string ls_event
ls_event = "scrollvertical"
is_event += ls_event+","

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

type lb_testitems from listbox within w_dynamiccreate_syntaxfromsql
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

type cb_run from commandbutton within w_dynamiccreate_syntaxfromsql
integer x = 2281
integer y = 48
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

type cb_save from commandbutton within w_dynamiccreate_syntaxfromsql
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

event clicked;
if dw_output.SaveAs("c:\output.txt", Text!	, false)=1 then
	messagebox("Alert","save to c:\output.text,OK!")
end if



end event

type cb_3 from commandbutton within w_dynamiccreate_syntaxfromsql
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
	dw_output.setfilter("#1<>'Right'")
	dw_output.filter()
	this.text="All"
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_dynamiccreate_syntaxfromsql
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

type cb_max from commandbutton within w_dynamiccreate_syntaxfromsql
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

type cb_1 from commandbutton within w_dynamiccreate_syntaxfromsql
integer x = 2281
integer y = 284
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

type cb_sort from commandbutton within w_dynamiccreate_syntaxfromsql
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

type cb_reset from commandbutton within w_dynamiccreate_syntaxfromsql
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

type dw_output from datawindow within w_dynamiccreate_syntaxfromsql
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

type gb_1 from groupbox within w_dynamiccreate_syntaxfromsql
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

type gb_2 from groupbox within w_dynamiccreate_syntaxfromsql
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

type gb_3 from groupbox within w_dynamiccreate_syntaxfromsql
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

type gb_4 from groupbox within w_dynamiccreate_syntaxfromsql
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

type dw_1 from datawindow within w_dynamiccreate_syntaxfromsql
integer x = 73
integer y = 476
integer width = 2560
integer height = 1708
integer taborder = 20
boolean bringtotop = true
string title = "none"
string dataobject = "d_grid"
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

type st_message from statictext within w_dynamiccreate_syntaxfromsql
integer x = 4192
integer y = 332
integer width = 320
integer height = 64
boolean bringtotop = true
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

