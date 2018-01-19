$PBExportHeader$w_expressionfun.srw
$PBExportComments$datawindow data±í´ïÊ½²Ù×÷
forward
global type w_expressionfun from window
end type
type cbx_showright from checkbox within w_expressionfun
end type
type st_error from statictext within w_expressionfun
end type
type cb_autorun from commandbutton within w_expressionfun
end type
type dw_2 from datawindow within w_expressionfun
end type
type cbx_8 from checkbox within w_expressionfun
end type
type lb_testitems from listbox within w_expressionfun
end type
type cb_run from commandbutton within w_expressionfun
end type
type cb_saveas from commandbutton within w_expressionfun
end type
type cb_error from commandbutton within w_expressionfun
end type
type cbx_right from checkbox within w_expressionfun
end type
type cb_max from commandbutton within w_expressionfun
end type
type cb_1 from commandbutton within w_expressionfun
end type
type cb_sort from commandbutton within w_expressionfun
end type
type cb_reset from commandbutton within w_expressionfun
end type
type dw_1 from datawindow within w_expressionfun
end type
type dw_output from datawindow within w_expressionfun
end type
type gb_1 from groupbox within w_expressionfun
end type
type gb_2 from groupbox within w_expressionfun
end type
type gb_3 from groupbox within w_expressionfun
end type
type gb_4 from groupbox within w_expressionfun
end type
type gb_5 from groupbox within w_expressionfun
end type
end forward

global type w_expressionfun from window
integer width = 4658
integer height = 2724
boolean titlebar = true
string title = "DataWindow_Expression"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cbx_showright cbx_showright
st_error st_error
cb_autorun cb_autorun
dw_2 dw_2
cbx_8 cbx_8
lb_testitems lb_testitems
cb_run cb_run
cb_saveas cb_saveas
cb_error cb_error
cbx_right cbx_right
cb_max cb_max
cb_1 cb_1
cb_sort cb_sort
cb_reset cb_reset
dw_1 dw_1
dw_output dw_output
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
gb_4 gb_4
gb_5 gb_5
end type
global w_expressionfun w_expressionfun

type variables
int ii_error_no = 0,ii_errornumber = 0,ii_rightnumber = 0,ii_number = 1
end variables

forward prototypes
public subroutine wf_expfun (boolean ab_output)
public subroutine wf_limit ()
public subroutine wf_save_date ()
public subroutine wf_expfun_save ()
public subroutine wf_testitems (integer ai_runonly)
public subroutine wf_fourbands (string as_testname, boolean ab_save)
public subroutine wf_sfv_check ()
public subroutine wf_general_function ()
public function long wf_parsetoarray (string as_source, string as_delimiter, ref string as_array[])
public subroutine wf_save_function (boolean ib_flag, integer ai_flag)
public function string wf_fourbands_getvalue (long ai_row, dwbuffer adw_buffer, boolean ab_ori_value)
public subroutine wf_savevalue (string as_testname, string as_data, boolean ab_save)
public function string wf_fourbands_dotvalue (long ai_row, dwbuffer adw_buffer, boolean ab_ori_value)
public subroutine wf_fourbandsrow (long al_row, string as_testname, boolean ab_save)
public subroutine wf_operate (boolean ab_flag)
public subroutine wf_operator_other (boolean ab_flag)
public subroutine wf_save_function (boolean ib_flag, string as_prefix, dwbuffer adw_buffer, integer ai_flag)
public subroutine wf_message (string as_operate, string as_problem)
public function integer wf_returnerror ()
end prototypes

event ue_autorun();cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
cb_error.TriggerEvent(clicked!)
cb_saveas.TriggerEvent(clicked!)
cbx_right.checked = true
end event

public subroutine wf_expfun (boolean ab_output);string ls_coltype,ls_col[],ls_compute[],ls_message[],ls_expression,ls_testname="expfun"
long ll_colcount,i,ll_row
//dw_1.dataobject="d_expression_fun"
//dw_1.settransobject(sqlca)

dw_1.setitemstatus(3,0,primary!,newmodified!)
dw_1.SelectRow(3, TRUE)


ll_colcount = long(dw_1.Object.DataWindow.Column.Count)
for ll_row=1 to dw_1.rowcount()
	for i=1 to 9//ll_colcount 
		
		ls_coltype = dw_1.Describe("cpt_js_"+string(i)+".ColType")
		ls_expression=dw_1.Describe("cpt_js_"+string(i)+".Expression")

		choose case lower(left(ls_coltype,5))//È¡¼ÆËãÁÐµÄÖµ
			case "char"

					ls_compute[i] =  dw_1.getitemstring(ll_row,"cpt_js_"+string(i),primary!,false)

			case "date"

					ls_compute[i] = string(dw_1.getitemdate(ll_row,"cpt_js_"+string(i),primary!,false),'yyyy-mm-dd')

			case "datet"

					ls_compute[i] = string(dw_1.getitemdatetime(ll_row,"cpt_js_"+string(i),primary!,false),'yyyy-mm-dd hh:mm:ss')

			case "time"

					ls_compute[i] = string(dw_1.getitemtime(ll_row,"cpt_js_"+string(i),primary!,false),'hh:mm:ss')

			case else

					ls_compute[i] = f_string(dw_1.getitemnumber(ll_row,"cpt_js_"+string(i),primary!,false))

		end choose

		select result into :ls_col[i] from exp_fun where row=:ll_row and column=:i and value=:ls_testname; 

		
		ls_message[]= {"Right","JS","CurrentRow:"+string(ll_row)+"Exp:"+ls_expression,"expression return:"+ls_col[i]}
		if ls_compute[i]=ls_col[i] then
			if ab_output=true then
				f_outputtext(dw_output,ls_message)
			end if
		else
			ls_message[1]= "Error"
			ls_message[2]= "PB"
			f_outputtext(dw_output,ls_message)
			ls_message[2]= "JS"
			ls_message[4]= "expression return:"+ls_compute[i]
			f_outputtext(dw_output,ls_message)
		end if

	next	
next



end subroutine

public subroutine wf_limit ();dw_1.dataobject="d_expression_utmost"
dw_1.settransobject(sqlca)
dw_1.retrieve()
end subroutine

public subroutine wf_save_date ();string ls_compute
long i

dw_1.dataobject="d_date_format"
dw_1.settransobject(sqlca)
dw_1.retrieve()

for i=1 to dw_1.rowcount()
		//get date() and set date()
		ls_compute =  dw_1.getitemstring(i,"compute_isdate",primary!,false)
		dw_1.setitem(i,"fun_isdate",ls_compute)
		
		ls_compute = f_string(date(dw_1.object.compute_date[i]))//f_string(dw_1.getitemDatetime(i,"compute_date",primary!,false))
		dw_1.setitem(i,"fun_date",ls_compute)
		
		//get time() and set time()
		ls_compute =  dw_1.getitemstring(i,"compute_istime",primary!,false)
		dw_1.setitem(i,"fun_istime",ls_compute)
		
		ls_compute = f_string(time(dw_1.object.compute_time[i]))//f_string(dw_1.getitemDatetime(i,"compute_date",primary!,false))
		dw_1.setitem(i,"fun_time",ls_compute)
next

if dw_1.update()=1 then 
	commit;
else
	rollback;
	messagebox("alert","save false!")
end if
end subroutine

public subroutine wf_expfun_save ();string ls_coltype,ls_compute[],ls_testname="expfun"
long ll_colcount,i,ll_row

dw_1.dataobject="d_expression_fun"
dw_1.settransobject(sqlca)
delete from exp_fun where value =:ls_testname; //truncate table exp_fun;
commit;

dw_1.setitemstatus(3,0,primary!,newmodified!)
dw_1.SelectRow(3, TRUE)

ll_colcount = long(dw_1.Object.DataWindow.Column.Count)
for ll_row=1 to dw_1.rowcount()
	for i=1 to 9//ll_colcount 
		
		ls_coltype = dw_1.Describe("cpt_js_"+string(i)+".ColType")
		choose case lower(left(ls_coltype,5))//È¡¼ÆËãÁÐµÄÖµ
			case "char"
					ls_compute[i] =  dw_1.getitemstring(ll_row,"cpt_js_"+string(i),primary!,false)
			case "date"
					ls_compute[i] = string(dw_1.getitemdate(ll_row,"cpt_js_"+string(i),primary!,false),'yyyy-mm-dd')
			case "datet"

					ls_compute[i] = string(dw_1.getitemdatetime(ll_row,"cpt_js_"+string(i),primary!,false),'yyyy-mm-dd hh:mm:ss')
			case "time"
					ls_compute[i] = string(dw_1.getitemtime(ll_row,"cpt_js_"+string(i),primary!,false),'hh:mm:ss')
			case else
					//½ØÈ¡Ð¡ÊýÎ»£¬Ê¹PBÓëJSÒ»ÖÂ
					ls_compute[i] = f_string(dw_1.getitemnumber(ll_row,"cpt_js_"+string(i),primary!,false))
		end choose
		insert into exp_fun(row,column,result,value) values(:ll_row,:i,:ls_compute[i],:ls_testname);
	next
	
next
end subroutine

public subroutine wf_testitems (integer ai_runonly);int i,li_rowcount,li_newrowcount
string ls_item[]
integer li_ItemTotal

choose case ai_runonly
	case 0 //listbox add items
			ls_item[1]="All Computedfield Expression Function"
			ls_item[2]="Expression Limit View"
			ls_item[3]="Computed Field"
			ls_item[4]="Date Format"
			ls_item[5]="All Function View"			
			ls_item[6]="Four Bands View"
			ls_item[7]="Header Band View"
			ls_item[8]="Detail Band View"
			ls_item[9]="Summary Band View"
			ls_item[10]="Footer Band View"
			ls_item[11]="Expression Color"
			ls_item[12]="Computed Field Opreate"
			ls_item[13] = 'Other opreate'
			ls_item[14] = 'Expression include comment'
			
			//ls_item[10]="button click"
			
			for i=1 to UpperBound(ls_item)
				lb_testitems.additem(string(i,"00")+" "+ls_Item[i])
			next
	
	case 1// set dataobject selected in listbox's items


			li_ItemTotal = lb_testitems.TotalItems( )
//			il_pos=long(sle_position.text)
//			il_counter=0
			FOR i = 1 to li_ItemTotal
				
				if lb_testitems.State(i)=1 then
						choose case i
							case 1
								dw_1.dataobject="d_expression_fun"
								dw_1.settransobject(sqlca)
								//wf_expfun(cbx_right.checked)
							case 2
								dw_1.dataobject="d_expression_utmost"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 3
								dw_1.dataobject="d_computedfield"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 4
								dw_1.dataobject="d_date_format"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 5
								dw_1.dataobject="d_function"
								dw_1.settransobject(sqlca)
							CASE 6
								dw_1.dataobject="d_fourbands"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 7
								dw_1.dataobject="d_headerband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								
							CASE 8
								dw_1.dataobject="d_detailband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								
							CASE 9
								dw_1.dataobject="d_summaryband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								
							CASE 10
								dw_1.dataobject="d_footerband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 11
								dw_1.dataobject="d_color"
								dw_1.settransobject(sqlca)	
							case 12
								dw_1.dataobject="d_computedoperate"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							case 13
								dw_1.DataObject = "d_expression_other"
								dw_1.SetTransObject(sqlca)
								dw_1.Retrieve()
							case 14
								dw_1.DataObject = 'd_expcomment'
								dw_1.SetTransobject(sqlca)
								dw_1.Retrieve()
						end choose
				end if
			
			NEXT			

	case 2 //run


			li_ItemTotal = lb_testitems.TotalItems( )
//			il_pos=long(sle_position.text)
//			il_counter=0
			FOR i = 1 to li_ItemTotal
				
				if lb_testitems.State(i)=1 then
					li_rowcount = dw_output.rowcount()
					ii_errornumber = 0
					ii_rightnumber = 0
						wf_message(lb_testitems.text(i),"")
						choose case i
							case 1
								dw_1.dataobject="d_expression_fun"
								dw_1.settransobject(sqlca)
//								wf_expfun(cbx_right.checked)
							case 2
								dw_1.dataobject="d_expression_utmost"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 3
								dw_1.dataobject="d_computedfield"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								wf_SFV_check()
								
								
							CASE 4
								dw_1.dataobject="d_date_format"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 5
								dw_1.dataobject="d_function"
								dw_1.settransobject(sqlca)
								wf_save_function(false,5)
							CASE 6
								dw_1.dataobject="d_fourbands"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
							CASE 7
								dw_1.dataobject="d_headerband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								wf_fourbands(lb_testitems.text(i),false)
							CASE 8
								dw_1.dataobject="d_detailband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								wf_fourbands(lb_testitems.text(i),false)
							CASE 9
								dw_1.dataobject="d_summaryband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								wf_fourbands(lb_testitems.text(i),false)
							CASE 10
								dw_1.dataobject="d_footerband"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								wf_fourbands(lb_testitems.text(i),false)
							CASE 11
								dw_1.dataobject="d_color"
								dw_1.settransobject(sqlca)
							case 12
								dw_1.dataobject="d_computedoperate"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								wf_operate(false)
							case 13
								dw_1.dataobject="d_expression_other"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
								wf_operator_other(false)
							case 14
								dw_1.dataobject="d_expcomment"
								dw_1.settransobject(sqlca)
								dw_1.retrieve()
						end choose
						//add for autorun
						if ii_errornumber = 0 and not(cbx_right.checked) then
							//dw_output.rowsdiscard(li_rowcount + 1, li_rowcount + ii_rightnumber + 10, primary!)
							li_newrowcount = dw_output.rowcount()
							dw_output.rowsdiscard(li_rowcount + 1,li_newrowcount,Primary!)
						end if
				end if
			
			NEXT			

			st_error.text="Error : " + string(ii_error_no)

end choose
end subroutine

public subroutine wf_fourbands (string as_testname, boolean ab_save);string ls_data,ls_message[],ls_pbdata

dw_1.Retrieve()
dw_1.SetFilter("emp_id < 400")
dw_1.Filter()
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)

choose case mid(as_testname,4)
	case "Header Band View"
		//dw_1 get row 3 computefield value 
		wf_fourbandsrow(3,as_testname,ab_save)
		
		//dw_1 get row 1 computefield value 
		wf_fourbandsrow(1,as_testname,ab_save)
		
		
		dw_1.insertrow(3)
		dw_1.setitem(3,1,888)
		//dw_1 get row 3 computefield value
		wf_fourbandsrow(3,as_testname+'(insertrow)',ab_save)
case "Footer Band View"
		//dw_1 get row 3 computefield value 
		wf_fourbandsrow(3,as_testname,ab_save)
		
		//dw_1 get row 1 computefield value 
		wf_fourbandsrow(1,as_testname,ab_save)
		
		
		dw_1.insertrow(3)
		dw_1.setitem(3,1,888)
		//dw_1 get row 3 computefield value
		wf_fourbandsrow(3,as_testname+'(insertrow)',ab_save)
	case "Summary Band View"
		//dw_1 get row 3 computefield value 
		wf_fourbandsrow(3,as_testname,ab_save)
		
		//dw_1 get row 1 computefield value 
		wf_fourbandsrow(1,as_testname,ab_save)
		
		
		dw_1.insertrow(3)
		dw_1.setitem(3,1,888)
		//dw_1 get row 3 computefield value
		wf_fourbandsrow(3,as_testname+'(insertrow)',ab_save)
	case "Detail Band View"
		//dw_1 get row 3 computefield value 
		wf_fourbandsrow(3,as_testname,ab_save)
		
		//dw_1 get row 1 computefield value 
		wf_fourbandsrow(1,as_testname,ab_save)
		
		
		dw_1.insertrow(3)
		dw_1.setitem(3,1,888)
		//dw_1 get row 3 computefield value
		wf_fourbandsrow(3,as_testname+'(insertrow)',ab_save)
		
end choose
end subroutine

public subroutine wf_sfv_check ();//sort filter validation
string ls_message[]
long ll_count

ll_count=dw_1.rowcount()
ls_message[]= {"Right","JS","filter sorter validation expression ","rowcount = 19"}
if ll_count=19 then

		ii_rightnumber++
		
		f_outputtext(dw_output,ls_message)

else
	ii_errornumber++
	ii_error_no ++
	ls_message[1]= "Error"
	ls_message[2]= "PB"
	f_outputtext(dw_output,ls_message)
	ls_message[2]= "JS"
	ls_message[4]= "rowcount = "+string(ll_count)
	f_outputtext(dw_output,ls_message)
end if


dw_1.setfilter('#1=888')
dw_1.filter()
ll_count=dw_1.rowcount()
ls_message[]= {"Right","JS","dynamic set filter() ","rowcount = 1"}
		if ll_count=1 then

				ii_rightnumber++
				
				f_outputtext(dw_output,ls_message)

		else
			ii_errornumber++
			ii_error_no ++
			ls_message[1]= "Error"
			ls_message[2]= "PB"
			f_outputtext(dw_output,ls_message)
			ls_message[2]= "JS"
			ls_message[4]= "rowcount = "+string(ll_count)
			f_outputtext(dw_output,ls_message)
		end if

end subroutine

public subroutine wf_general_function ();//operation
end subroutine

public function long wf_parsetoarray (string as_source, string as_delimiter, ref string as_array[]);//////////////////////////////////////////////////////////////////////////////
//
//	Function:  of_ParseToArray
//
//	Access:  public
//
//	Arguments:
//	as_Source   The string to parse.
//	as_Delimiter   The delimeter string.
//	as_Array[]   The array to be filled with the parsed strings, passed by reference.
//
//	Returns:  long
//	The number of elements in the array.
//	If as_Source or as_Delimeter is NULL, function returns NULL.
//
//	Description:  Parse a string into array elements using a delimeter string.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Revision History
//
//	Version
//	5.0   Initial version
//	5.0.02   Fixed problem when delimiter is last character of string.

//	   Ref array and return code gave incorrect results.
//
//////////////////////////////////////////////////////////////////////////////
//
//	Copyright © 1996-1997 Sybase, Inc. and its subsidiaries.  All rights reserved.
//	Any distribution of the PowerBuilder Foundation Classes (PFC)
//	source code by other than Sybase, Inc. and its subsidiaries is prohibited.
//
//////////////////////////////////////////////////////////////////////////////

long		ll_DelLen, ll_Pos, ll_Count, ll_Start, ll_Length
string 	ls_holder

//Check for NULL
IF IsNull(as_source) or IsNull(as_delimiter) Then
	long ll_null
	SetNull(ll_null)
	Return ll_null
End If

//Check for at leat one entry
If Trim (as_source) = '' Then
	Return 0
End If

//Get the length of the delimeter
ll_DelLen = Len(as_Delimiter)

ll_Pos =  Pos(Upper(as_source), Upper(as_Delimiter))

//Only one entry was found
if ll_Pos = 0 then
	as_Array[1] = as_source
	return 1
end if

//More than one entry was found - loop to get all of them
ll_Count = 0
ll_Start = 1
Do While ll_Pos > 0
	
	//Set current entry
	ll_Length = ll_Pos - ll_Start
	ls_holder = Mid (as_source, ll_start, ll_length)

	// Update array and counter
	ll_Count ++
	as_Array[ll_Count] = ls_holder
	
	//Set the new starting position
	ll_Start = ll_Pos + ll_DelLen

	ll_Pos =  Pos(Upper(as_source), Upper(as_Delimiter), ll_Start)
Loop

//Set last entry
ls_holder = Mid (as_source, ll_start, Len (as_source))

// Update array and counter if necessary
if Len (ls_holder) > 0 then
	ll_count++
	as_Array[ll_Count] = ls_holder
end if

//Return the number of entries found
Return ll_Count

end function

public subroutine wf_save_function (boolean ib_flag, integer ai_flag);long ll_i,ll_Count
string ls_objects
string	ls_array[],ls_message[]
string ls_name,ls_result,ls_coltype,ls_oldresult
any la_value
//Gets all object in datawindow
ls_objects = dw_1.Describe("DataWindow.Objects")

//·Ö½â×Ö·û´®µ½Êý×éÖÐ
ll_count = wf_parsetoarray(ls_objects,'~t',ls_array)

//Ö»¶Ô¼ÇËãÓò
for ll_i = 1 to ll_count
	if dw_1.Describe(ls_array[ll_i]+".type") = 'compute' then
		ls_name = dw_1.Describe(ls_array[ll_i]+".Expression")
		ls_coltype = dw_1.Describe(ls_array[ll_i]+".coltype")
		//È¡¼ÆËãÁÐµÄÖµ
		choose case lower(left(ls_coltype,5))
			case "char",'strin'	//strinÊÇÓÉÓÚÏÖÔÚJSÖÐ´æÔÚÎÊÌâ£¬ÎªÁËÈ¡µÃJSÖÐÖµÉèÖÃ£¬ÕâÊÇJSµÄÒ»¸öBUG£¬µ«ÔÝÊ±ÎÞ·¨½â¾ö¡£
				la_value =  dw_1.getitemstring(1,ls_array[ll_i])
			case "date"
				la_value =dw_1.getitemdate(1,ls_array[ll_i])
			case "datet"
				la_value = dw_1.getitemdatetime(1,ls_array[ll_i])
			case "time"
				la_value = dw_1.getitemtime(1,ls_array[ll_i])
			case else
				//½ØÈ¡Ð¡ÊýÎ»£¬±£³ÖPBÓëJSÒ»ÖÂ
				//la_value = round(dw_1.getitemnumber(1,ls_array[ll_i]),5)
				la_value = dw_1.getitemnumber(1,ls_array[ll_i])
		end choose
		ls_result = f_string(la_value)
		if ls_name = 'Date("1999 July 4")' or ls_name = 'Date("01-01-01")' then 
			if ib_Flag then
				ls_result = mid(ls_result,1,pos(ls_result,' '))
			end if
		end if
		//±£´æÖ´ÐÐ½á¹û
		if ib_Flag then
			delete exp_fun where flag = :ls_array[ll_i] and row = :ai_flag;
			Insert into exp_Fun(value,result,row,flag) values(:ls_name,:ls_result,:ai_flag,:ls_array[ll_i]);
		
			
		//±È½ÏÖ´ÐÐ½á¹û
		else
			
			select result into :ls_oldresult from exp_fun where flag = :ls_array[ll_i] and row = :ai_flag;
			if (sqlca.sqlcode = 100 or sqlca.sqlcode < 0 ) then ls_oldresult = 'error'
			ls_message[]= {"Right","JS",ls_name,ls_oldresult}
			//======================================================================
			//zhushaobin 2005-01-28 ²»Ò»ÖÂ¼°²»Ö§³ÖµÄ´¦Àí
			/*
			Error	PB	ACos(-1)	3.141592653589793
			Error	JS	ACos(-1)	3.14159265358979
			Error	PB	ASin(.84147)	0.9999981773046534
			Error	JS	ASin(.84147)	0.99999817730465
			Error	PB	DayNumber( Today() )	4
			Error	JS	DayNumber( Today() )	6
			Error	PB	DaysAfter(2000-01-01, Today())	1845
			Error	JS	DaysAfter(2000-01-01, Today())	1854
			Error	PB	DayName(Today())	Wednesday
			Error	JS	DayName(Today())	Friday
			Error	PB	Day(Today())	19
			Error	JS	Day(Today())	28
			Error	PB	Date("1999 July 4")	4/7/1999 00:00:00
			Error	JS	Date("1999 July 4")	7/4/1999
			Error	PB	Date("01-01-01")	1/1/2001 00:00:00
			Error	JS	Date("01-01-01")	1/1/2001
			Error	PB	IsTime("23. am")	true
			Error	JS	IsTime("23. am")	false
			Error	PB	Log(10)	2.302585092994046
			Error	JS	Log(10)	2.30258509299405
			Error	PB	Minute(today())	35
			Error	JS	Minute(today())	34
			Error	PB	Pi(3)	9.424777960769379
			Error	JS	Pi(3)	9.42477796076938
			Error	PB	RelativeDate(Today(), -10)	9/1/2005 14:35:22
			Error	JS	RelativeDate(Today(), -10)	1/18/2005 09:34:05
			Error	PB	RelativeTime(19:01:51, 10)	00:00:00
			Error	JS	RelativeTime(19:01:51, 10)	19:02:01
			Error	PB	Sin(1)	0.8414709848078965
			Error	JS	Sin(1)	0.8414709848079
			Error	PB	String(-1/.3)	-3.333333333333334
			Error	JS	String(-1/.3)	-3.33333333333333
			Error	PB	Tan(1)	1.557407724654902
			Error	JS	Tan(1)	1.5574077246549
			*/
			
			boolean lb_error = false
			choose case ls_name
			case 'Sin(1)'
				case 'ACos(-1)','ASin(.84147)','Log(10)','Pi(3)','Sin(1)','String(-1/.3)','Tan(1)'
					if ls_result <> mid(ls_oldresult,1,len(ls_result)) then lb_error = true
					
				case 'DayNumber( Today() )'
					if long(ls_result) < 1 or long(ls_result) > 7 then lb_error = true
					
				case 'DaysAfter(2000-01-01, Today())'
					if long(ls_oldresult) - long(ls_result) > 0 then lb_error = true
					
				case 'DayName(Today())'
					if not (ls_result = "Sunday" or &
						ls_result = "Monday" or &
						ls_result = "Tuesday" or &
						ls_result = "Wednesday" or &
						ls_result = "Thursday" or &
						ls_result = "Friday" or &
						ls_result = "Saturday") then lb_error = true
						
				case 'Day(Today())'
					if long(ls_result) < 1 or long(ls_result) > 31 then lb_error = true
				
				case 'Date("1999 July 4")','Date("01-01-01")'
					if len(ls_result) <> 8 and  len(ls_result) <> 17 then lb_error = true					
					
				case 'IsTime("23. am")'
					//²»Ö§³Ö
					return 
				case 'Minute(today())'
					if long(ls_result) < 0 or long(ls_result) > 60 then lb_error = true

				case 'RelativeDate(Today(), -10)'
					if len(ls_result) < 17 or len(ls_result) < 19 then  lb_error = true
				case 'RelativeTime(19:01:51, 10)'
					//Ô­Òò£ºÊÇpbµÄÓÐÎÊÌâ£¬È¡³öµÄÖµÓÐÊ±ÕýÈ·ÓÐÊ±²»ÕýÈ·¡£zhouxiang
					return
			end choose
			
			if trim(ls_result) = trim(ls_oldresult) or not lb_error then
				if cbx_right.checked then
					ii_rightnumber++
					f_outputtext(dw_output,ls_message)
				end if
			else
				ii_error_no++
				ii_errornumber++
				ls_message[1] = "Error"
				ls_message[2] = "PB"
				f_outputtext(dw_output,ls_message)
				ls_message[2]= "JS"
				ls_message[4]= ls_result
				f_outputtext(dw_output,ls_message)
			end if
			//======================================================================
		end if
	end if
next

commit;


end subroutine

public function string wf_fourbands_getvalue (long ai_row, dwbuffer adw_buffer, boolean ab_ori_value);string ls_data
ls_data += string(round(dw_1.getitemnumber(ai_row,"compute_avg",adw_buffer,ab_ori_value),5))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_count",adw_buffer,ab_ori_value))+","
ls_data += string(round(dw_1.getitemnumber(ai_row,"compute_avgs",adw_buffer,ab_ori_value),5))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_getrow",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemstring(ai_row,"compute_isrownew",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemstring(ai_row,"compute_isrowmodify",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemstring(ai_row,"compute_isselected",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_max",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_min",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_maxs",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_page",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_pagecount",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_rowcount",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_sum",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_sums",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_sumif",adw_buffer,ab_ori_value))+","
ls_data += string(dw_1.getitemnumber(ai_row,"compute_if",adw_buffer,ab_ori_value))
return ls_data
end function

public subroutine wf_savevalue (string as_testname, string as_data, boolean ab_save);string ls_Message[]
string ls_flag = 'bands'
string ls_OriData

ls_message[]= {"Right","JS",as_testname,"Values:"+as_data}
if ab_save then
	delete  from exp_fun where value =:as_testname and flag = :ls_flag;
	insert into exp_fun (value,result,flag) values(:as_testname,:as_data,:ls_flag);
	commit;
else
	select result into :ls_OriData from exp_fun where value = :as_testname and flag = :ls_flag;
	if as_data = ls_OriData then
		ii_rightnumber++
		f_outputtext(dw_output,ls_message)
	else
		ii_errornumber++
		ii_error_no ++
		ls_Message[1] = 'Error'
		ls_message[2] = 'JS'
		f_outputtext(dw_output,ls_message)
		ls_message[2] = 'PB'
		ls_message[4] = "Values:"+ls_OriData
		f_outputtext(dw_output,ls_message)
	end if
end if



end subroutine

public function string wf_fourbands_dotvalue (long ai_row, dwbuffer adw_buffer, boolean ab_ori_value);string ls_data

choose case ab_ori_value
	case true
		choose case adw_buffer
			case primary!
					ls_data += string(round(dw_1.object.compute_avg.primary[ai_row],5))
					ls_data += ','+ string(dw_1.object.compute_count.primary[ai_row])
					ls_data += ','+ string(round(dw_1.object.compute_avgs.primary[ai_row],5))
					ls_data += ','+ string(dw_1.object.compute_getrow.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isrownew.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isrowmodify.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isselected.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_max.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_min.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_maxs.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_page.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_pagecount.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_rowcount.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sum.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sums.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sumif.primary[ai_row])
					ls_data += ','+ string(dw_1.object.compute_if.primary[ai_row])
					
				case delete!
					ls_data += string(round(dw_1.object.compute_avg.delete.original[ai_row],5))
					ls_data += ','+ string(dw_1.object.compute_count.delete.original[ai_row])
					ls_data += ','+ string(round(dw_1.object.compute_avgs.delete.original[ai_row],5))
					ls_data += ','+ string(dw_1.object.compute_getrow.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isrownew.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isrowmodify.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isselected.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_max.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_min.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_maxs.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_page.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_pagecount.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_rowcount.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sum.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sums.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sumif.delete.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_if.delete.original[ai_row])
				case filter!
					ls_data += string(round(dw_1.object.compute_avg.filter.original[ai_row],5))
					ls_data += ','+ string(dw_1.object.compute_count.filter.original[ai_row])
					ls_data += ','+ string(round(dw_1.object.compute_avgs.filter.original[ai_row],5))
					ls_data += ','+ string(dw_1.object.compute_getrow.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isrownew.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isrowmodify.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_isselected.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_max.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_min.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_maxs.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_page.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_pagecount.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_rowcount.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sum.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sums.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_sumif.filter.original[ai_row])
					ls_data += ','+ string(dw_1.object.compute_if.filter.original[ai_row])
		end choose
	case false
		//¼ÆËãÓò²»ÔÊÐíÕâÑù·ÃÎÊ£¬Ã»ÓÐµ±Ç°Öµ
		choose case adw_buffer
				
			case primary!
				ls_data += string(dw_1.object.compute_avg.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_count.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_avgs.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_getrow.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isrownew.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isrowmodify.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isselected.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_max.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_min.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_maxs.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_page.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_pagecount.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_rowcount.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_sum.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_sums.primary.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_if.primary.current[ai_row])
			case delete!
				ls_data += string(dw_1.object.compute_avg.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_count.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_avgs.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_getrow.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isrownew.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isrowmodify.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isselected.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_max.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_min.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_maxs.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_page.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_pagecount.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_rowcount.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_sum.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_sums.delete.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_if.delete.current[ai_row])
			case filter!
				ls_data += string(dw_1.object.compute_avg.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_count.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_avgs.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_getrow.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isrownew.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isrowmodify.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_isselected.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_max.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_min.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_maxs.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_page.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_pagecount.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_rowcount.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_sum.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_sums.filter.current[ai_row])
				ls_data += ','+ string(dw_1.object.compute_if.filter.current[ai_row])
		end choose
end choose

return ls_data
end function

public subroutine wf_fourbandsrow (long al_row, string as_testname, boolean ab_save);	string ls_data
	
//	//dw_1 get al_row computefield value for primary
//	ls_data=wf_fourbands_getvalue(al_row,primary!,false)
//	wf_savevalue(as_testname+" dw_1.GetItem(Row("+string(al_row)+"),primary!,current)",ls_data,ab_save)
//	//dw_1 get al_row computefield value for delete
//	ls_data=wf_fourbands_getvalue(al_row,delete!,false)
//	wf_savevalue(as_testname+" dw_1.GetItem(Row("+string(al_row)+"),delete!,current)",ls_data,ab_save)
//	//dw_1 get al_row computefield value for filter
//	ls_data=wf_fourbands_getvalue(al_row,filter!,false)
//	wf_savevalue(as_testname+" dw_1.GetItem(Row("+string(al_row)+"),filter!,current)",ls_data,ab_save)
	
	
	//dw_1 get al_row computefield value for primary
	ls_data=wf_fourbands_getvalue(al_row,primary!,true)
	wf_savevalue(as_testname+" dw_1.GetItem(Row("+string(al_row)+"),primary!,original)",ls_data,ab_save)
	//dw_1 get al_row computefield value for delete
	ls_data=wf_fourbands_getvalue(al_row,delete!,true)
	wf_savevalue(as_testname+" dw_1.GetItem(Row("+string(al_row)+"),delete!,original)",ls_data,ab_save)
	//dw_1 get al_row computefield value for filter
	ls_data=wf_fourbands_getvalue(al_row,filter!,true)
	wf_savevalue(as_testname+" dw_1.GetItem(Row("+string(al_row)+"),filter!,original)",ls_data,ab_save)
	
	
	//dw_1 dot al_row computefield value for primary
	ls_data = wf_fourbands_dotvalue(al_row,primary!,true)
	wf_savevalue(as_testname+" dw_1.DotData(Row("+string(al_row)+"),primary!,original)",ls_data,ab_save)
	//dw_1 dot al_row computefield value for delete
	ls_data = wf_fourbands_dotvalue(al_row,delete!,true)
	wf_savevalue(as_testname+" dw_1.DotData(Row("+string(al_row)+"),delete!,original)",ls_data,ab_save)
	//dw_1 dot al_row computefield value for filter
	ls_data = wf_fourbands_dotvalue(al_row,filter!,true)
	wf_savevalue(as_testname+" dw_1.DotData(Row("+string(al_row)+"),filter!,original)",ls_data,ab_save)
end subroutine

public subroutine wf_operate (boolean ab_flag);//²âÊÔ¶Ô¼ÆËãÓòµÄÊý¾Ý´°¿Ú½øÐÐ¸÷ÖÖ²Ù×÷
long ll_row

dw_2.dataObject = 'd_computedoperate'
dw_2.SetTransobject(sqlca)
dw_2.Retrieve()

//1£­Ö´ÐÐSetTransObjectÇ°
//insert
ll_row = dw_1.Insertrow(0)
dw_1.SetItem(ll_row,'salary',20000.0)
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'salary',40000.0)
wf_save_function(ab_flag,"Primary:Before SetTransObject and Insert row",primary!,1201)

//Delete(part or all)
dw_1.DeleteRow(1)
wf_save_function(ab_flag,"Primary:Before SetTransObject and Delete row",primary!,1202)

//Modify
dw_1.SetItem(1,'salary',30000.0)
wf_save_function(ab_flag,"Primary:Before SetTransObject and Modify row",primary!,1203)

//RowsCopy
dw_2.RowsCopy(1,5,primary!,dw_1,1,primary!)
dw_2.RowsCopy(6,6,primary!,dw_1,1,Filter!)
dw_2.RowsCopy(7,7,primary!,dw_1,1,Delete!)
dw_1.RowsCopy(1,1,primary!,dw_1,1,Filter!)
dw_1.RowsCopy(2,2,primary!,dw_1,1,Delete!)
wf_save_function(ab_flag,"Primary:Before SetTransObject and RowsCopy",primary!,120401)
wf_save_function(ab_flag,"Filter:Before SetTransObject and RowsCopy",Filter!,120402)
wf_save_function(ab_flag,"delete:Before SetTransObject and RowsCopy",Delete!,120403)
//RowsMove
dw_2.RowsMove(1,2,primary!,dw_1,1,primary!)
dw_2.RowsMove(3,3,primary!,dw_1,1,Filter!)
dw_2.RowsMove(4,4,primary!,dw_1,1,Delete!)
dw_1.RowsMove(1,1,primary!,dw_1,1,Filter!)
dw_1.RowsMove(2,2,primary!,dw_1,1,Delete!)
wf_save_function(ab_flag,"Primary:Before SetTransObject and RowsMove",primary!,120501)
wf_save_function(ab_flag,"Filter:Before SetTransObject and RowsMove",filter!,120502)
wf_save_function(ab_flag,"delete:Before SetTransObject and RowsMove",delete!,120503)

//RowsDiscard
dw_1.RowsDiscard(1,1,primary!)
dw_1.RowsDiscard(1,1,filter!)
dw_1.RowsDiscard(1,1,delete!)
wf_save_function(ab_flag,"Primary:Before SetTransObject and RowsDiscard",primary!,120601)
wf_save_function(ab_flag,"Filter:Before SetTransObject and RowsDiscard",filter!,120602)
wf_save_function(ab_flag,"delete:Before SetTransObject and RowsDiscard",delete!,120603)

//Filter(part or all)
dw_1.SetFilter("emp_id > 300")
dw_1.Filter()
wf_save_function(ab_flag,"Primary:Before SetTransObject and Filter",primary!,120701)
wf_save_function(ab_flag,"Filter:Before SetTransObject and Filter",filter!,120702)
wf_save_function(ab_flag,"delete:Before SetTransObject and Filter",delete!,120703)


//2£­Ö´ÐÐSetTransObjectºó
dw_1.dataObject = 'd_computedoperate'
dw_1.SetTransobject(sqlca)
//insert
ll_row = dw_1.Insertrow(0)
dw_1.SetItem(ll_row,'salary',20000.0)
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'salary',40000.0)
wf_save_function(ab_flag,"Primary:After SetTransObject and Insert row",primary!,1208)

//Delete(part or all)
dw_1.DeleteRow(1)
wf_save_function(ab_flag,"Primary:After SetTransObject and Delete row",primary!,1209)

//Modify
dw_1.SetItem(1,'salary',30000.0)
wf_save_function(ab_flag,"Primary:After SetTransObject and Modify row",primary!,1210)

//RowsCopy
dw_2.RowsCopy(1,5,primary!,dw_1,1,primary!)
dw_2.RowsCopy(6,6,primary!,dw_1,1,Filter!)
dw_2.RowsCopy(7,7,primary!,dw_1,1,Delete!)
dw_1.RowsCopy(1,1,primary!,dw_1,1,Filter!)
dw_1.RowsCopy(2,2,primary!,dw_1,1,Delete!)
wf_save_function(ab_flag,"Primary:After SetTransObject and RowsCopy",primary!,121101)
wf_save_function(ab_flag,"Filter:After SetTransObject and RowsCopy",Filter!,121102)
wf_save_function(ab_flag,"delete:After SetTransObject and RowsCopy",Delete!,121103)
//RowsMove
dw_2.RowsMove(1,2,primary!,dw_1,1,primary!)
dw_2.RowsMove(3,3,primary!,dw_1,1,Filter!)
dw_2.RowsMove(4,4,primary!,dw_1,1,Delete!)
dw_1.RowsMove(1,1,primary!,dw_1,1,Filter!)
dw_1.RowsMove(2,2,primary!,dw_1,1,Delete!)
wf_save_function(ab_flag,"Primary:After SetTransObject and RowsMove",primary!,121201)
wf_save_function(ab_flag,"Filter:After SetTransObject and RowsMove",filter!,121202)
wf_save_function(ab_flag,"delete:After SetTransObject and RowsMove",delete!,121203)

//RowsDiscard
dw_1.RowsDiscard(1,1,primary!)
dw_1.RowsDiscard(1,1,filter!)
dw_1.RowsDiscard(1,1,delete!)
wf_save_function(ab_flag,"Primary:After SetTransObject and RowsDiscard",primary!,121301)
wf_save_function(ab_flag,"Filter:After SetTransObject and RowsDiscard",filter!,121302)
wf_save_function(ab_flag,"delete:After SetTransObject and RowsDiscard",delete!,121303)

//Filter(part or all)
dw_1.SetFilter("emp_id > 300")
dw_1.Filter()
wf_save_function(ab_flag,"Primary:After SetTransObject and Filter",primary!,121401)
wf_save_function(ab_flag,"Filter:After SetTransObject and Filter",filter!,121402)
wf_save_function(ab_flag,"delete:After SetTransObject and Filter",delete!,121403)

//3£­Ö´ÐÐRetrieveºó
dw_1.Retrieve()


dw_1.SetFilter("emp_id > 500")
dw_1.Filter()

//insert
ll_row = dw_1.Insertrow(0)
dw_1.SetItem(ll_row,'salary',20000.0)
ll_row = dw_1.InsertRow(0)
dw_1.SetItem(ll_row,'salary',40000.0)
wf_save_function(ab_flag,"Primary:After Retrieve and Insert row",primary!,1215)

//Delete(part or all)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
dw_1.DeleteRow(1)
wf_save_function(ab_flag,"Primary:After Retrieve and Delete row",primary!,1216)

//Modify
dw_1.SetItem(1,'salary',30000.0)
wf_save_function(ab_flag,"Primary:After Retrieve and Modify row",primary!,1217)

//RowsCopy
dw_2.RowsCopy(1,5,primary!,dw_1,1,primary!)
dw_2.RowsCopy(6,6,primary!,dw_1,1,Filter!)
dw_2.RowsCopy(7,7,primary!,dw_1,1,Delete!)
dw_1.RowsCopy(1,1,primary!,dw_1,1,Filter!)
dw_1.RowsCopy(2,2,primary!,dw_1,1,Delete!)
//Ôö¼Ó´ÓFilter,deleteµ½Primary
dw_1.RowsCopy(1,1,filter!,dw_1,1,primary!)
dw_1.RowsCopy(1,1,delete!,dw_1,1,primary!)
dw_1.rowsCopy(1,1,filter!,dw_1,2,delete!)
dw_1.RowsCopy(1,1,delete!,dw_1,1,filter!)
wf_save_function(ab_flag,"Primary:After Retrieve and RowsCopy",primary!,121801)
wf_save_function(ab_flag,"Filter:After Retrieve and RowsCopy",Filter!,121802)
wf_save_function(ab_flag,"delete:After Retrieve and RowsCopy",Delete!,121803)
//RowsMove
dw_2.RowsMove(1,2,primary!,dw_1,1,primary!)
dw_2.RowsMove(3,3,primary!,dw_1,1,Filter!)
dw_2.RowsMove(4,4,primary!,dw_1,1,Delete!)
dw_1.RowsMove(1,1,primary!,dw_1,1,Filter!)
dw_1.RowsMove(2,2,primary!,dw_1,1,Delete!)
//Ôö¼Ó´ÓFilter,deleteµ½Primary
dw_1.RowsMove(1,1,filter!,dw_1,1,primary!)
dw_1.RowsMove(1,1,delete!,dw_1,1,primary!)
dw_1.RowsMove(1,1,filter!,dw_1,2,delete!)
dw_1.RowsMove(1,1,delete!,dw_1,1,filter!)
wf_save_function(ab_flag,"Primary:After Retrieve and RowsMove",primary!,121901)
wf_save_function(ab_flag,"Filter:After Retrieve and RowsMove",filter!,121902)
wf_save_function(ab_flag,"delete:After Retrieve and RowsMove",delete!,121903)

//RowsDiscard
dw_1.RowsDiscard(1,1,primary!)
dw_1.RowsDiscard(1,1,filter!)
dw_1.RowsDiscard(1,1,delete!)
wf_save_function(ab_flag,"Primary:After Retrieve and RowsDiscard",primary!,122001)
wf_save_function(ab_flag,"Filter:After Retrieve and RowsDiscard",filter!,122002)
wf_save_function(ab_flag,"delete:After Retrieve and RowsDiscard",delete!,122003)

//Filter(all)
dw_1.SetFilter(" emp_id < 0")
dw_1.Filter()
dw_1.insertrow(0)
wf_save_function(ab_flag,"Primary:After Retrieve and Filter all",primary!,122101)
wf_save_function(ab_flag,"Filter:After Retrieve and Filter all",filter!,122102)
wf_save_function(ab_flag,"delete:After Retrieve and Filter all",delete!,122103)





end subroutine

public subroutine wf_operator_other (boolean ab_flag);//²âÊÔ¶Ô¼ÆËãÓòµÄÊý¾Ý´°¿Ú½øÐÐ¸÷ÖÖ²Ù×÷
long ll_row,ll_null
String ls_null
SetNull(ls_null)
SetNull(ll_null)

//retrieve
wf_save_function(ab_flag,13)


//InsertRow
dw_1.Insertrow(0)
wf_save_function(ab_flag,131)

//SetRow
dw_1.SetRow(1)
wf_save_function(ab_flag,132)

//deleteRow
dw_1.DeleteRow(0)
wf_save_function(ab_flag,133)

//SetRow
dw_1.SetRow(dw_1.RowCount())
wf_save_function(ab_flag,134)

//SetNull
dw_1.setitem(1,"fcustno",ls_null)
dw_1.setitem(2,"fcustno",ls_null)
dw_1.setitem(1,"famount",ll_null)
dw_1.setitem(2,"famount",ll_null)
wf_save_function(ab_flag,135)





end subroutine

public subroutine wf_save_function (boolean ib_flag, string as_prefix, dwbuffer adw_buffer, integer ai_flag);long ll_i,ll_Count
string ls_objects
string	ls_array[],ls_message[]
string ls_name,ls_result,ls_coltype,ls_oldresult
string ls_bands
any la_value
//Gets all object in datawindow
ls_objects = dw_1.Describe("DataWindow.Objects")

//·Ö½â×Ö·û´®µ½Êý×éÖÐ
ll_count = wf_parsetoarray(ls_objects,'~t',ls_array)

//Ö»¶Ô¼ÇËãÓò
for ll_i = 1 to ll_count
	if dw_1.Describe(ls_array[ll_i]+".type") = 'compute' then
		ls_name = dw_1.Describe(ls_array[ll_i]+".Expression")
		ls_coltype = dw_1.Describe(ls_array[ll_i]+".coltype")
		ls_bands = dw_1.Describe(ls_array[ll_i]+".band")
		//È¡¼ÆËãÁÐµÄÖµ
		choose case lower(left(ls_coltype,5))
			case "char",'strin'	//strinÊÇÓÉÓÚÏÖÔÚJSÖÐ´æÔÚÎÊÌâ£¬ÎªÁËÈ¡µÃJSÖÐÖµÉèÖÃ£¬ÕâÊÇJSµÄÒ»¸öBUG£¬µ«ÔÝÊ±ÎÞ·¨½â¾ö¡£
				la_value =  dw_1.getitemstring(1,ls_array[ll_i],adw_buffer,true)
			case "date"
				la_value =dw_1.getitemdate(1,ls_array[ll_i],adw_buffer,true)
			case "datet"
				la_value = dw_1.getitemdatetime(1,ls_array[ll_i],adw_buffer,true)
			case "time"
				la_value = dw_1.getitemtime(1,ls_array[ll_i],adw_buffer,true)
			case else
				//½ØÈ¡Ð¡ÊýÎ»£¬±£³ÖPBÓëJSÒ»ÖÂ
				//la_value = round(dw_1.getitemnumber(1,ls_array[ll_i]),5)
				la_value = dw_1.getitemnumber(1,ls_array[ll_i],adw_buffer,true)
		end choose
		ls_result = f_string(la_value)
		//±£´æÖ´ÐÐ½á¹û
		if ib_Flag then
			delete exp_fun where flag = :ls_array[ll_i] and row = :ai_flag;
			Insert into exp_Fun(value,result,row,flag) values(:ls_name,:ls_result,:ai_flag,:ls_array[ll_i]);
		
			
		//±È½ÏÖ´ÐÐ½á¹û
		else
			
			select result into :ls_oldresult from exp_fun where flag = :ls_array[ll_i] and row = :ai_flag;
			if (sqlca.sqlcode = 100 or sqlca.sqlcode < 0 ) then ls_oldresult = 'error'
			ls_message[]= {"Right","JS","("+ls_bands+")"+as_prefix+"{"+ls_name+"}",ls_oldresult}
			
			
			boolean lb_right = false
			choose case ls_name
				case "'Page ' + page() + ' of ' + pageCount()"
					// zhushaobin 2005-2-17 
					// pagecount() ÎÒÃÇµÄ±ÈPBÉÙ1,ÊÇÕýÈ·µÄ¡£
					if long(mid(ls_result,lastpos(ls_result,"f") + 1,len(ls_result))) = (long(mid(ls_oldresult,lastpos(ls_oldresult,"f") + 1,len(ls_oldresult))) - 1) then 
						lb_right = true
					end if
			end choose
			
			if ls_result = ls_oldresult or lb_right then
				if cbx_right.checked then
					ii_rightnumber++
					f_outputtext(dw_output,ls_message)
				end if
			else
				ii_error_no ++
				ii_errornumber++
				ls_message[1] = "Error"
				ls_message[2] = "PB"
				f_outputtext(dw_output,ls_message)
				ls_message[2]= "JS"
				ls_message[4]= ls_result
				f_outputtext(dw_output,ls_message)
			end if
		end if
	end if
next

commit;


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
ls_message[]={'[±àºÅ]','','DwExpressionFunction '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"DwExpressionFunction"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public function integer wf_returnerror ();return ii_error_no
end function

on w_expressionfun.create
this.cbx_showright=create cbx_showright
this.st_error=create st_error
this.cb_autorun=create cb_autorun
this.dw_2=create dw_2
this.cbx_8=create cbx_8
this.lb_testitems=create lb_testitems
this.cb_run=create cb_run
this.cb_saveas=create cb_saveas
this.cb_error=create cb_error
this.cbx_right=create cbx_right
this.cb_max=create cb_max
this.cb_1=create cb_1
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_1=create dw_1
this.dw_output=create dw_output
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.gb_4=create gb_4
this.gb_5=create gb_5
this.Control[]={this.cbx_showright,&
this.st_error,&
this.cb_autorun,&
this.dw_2,&
this.cbx_8,&
this.lb_testitems,&
this.cb_run,&
this.cb_saveas,&
this.cb_error,&
this.cbx_right,&
this.cb_max,&
this.cb_1,&
this.cb_sort,&
this.cb_reset,&
this.dw_1,&
this.dw_output,&
this.gb_1,&
this.gb_2,&
this.gb_3,&
this.gb_4,&
this.gb_5}
end on

on w_expressionfun.destroy
destroy(this.cbx_showright)
destroy(this.st_error)
destroy(this.cb_autorun)
destroy(this.dw_2)
destroy(this.cbx_8)
destroy(this.lb_testitems)
destroy(this.cb_run)
destroy(this.cb_saveas)
destroy(this.cb_error)
destroy(this.cbx_right)
destroy(this.cb_max)
destroy(this.cb_1)
destroy(this.cb_sort)
destroy(this.cb_reset)
destroy(this.dw_1)
destroy(this.dw_output)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
destroy(this.gb_4)
destroy(this.gb_5)
end on

event timer;string ls_string[] ={	"Save PDF File As",&
								"Specify Filter",&
								"Specify Sort Columns",&
								"DataWindow",&
								"Appeon Web Library",&
								"DataWindow Error",&
								"Alert"}
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

type cbx_showright from checkbox within w_expressionfun
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
string text = "showright"
boolean checked = true
end type

type st_error from statictext within w_expressionfun
integer x = 4082
integer y = 316
integer width = 457
integer height = 84
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 255
long backcolor = 67108864
long bordercolor = 255
boolean focusrectangle = false
end type

type cb_autorun from commandbutton within w_expressionfun
integer x = 1545
integer y = 144
integer width = 302
integer height = 84
integer taborder = 160
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "AutoRun"
end type

event clicked;int li_itemcount
lb_testitems.extendedselect = false
lb_testitems.multiselect = false
cb_reset.triggerevent(clicked!)
For li_itemCount = 1 to lb_testitems.TotalItems()
	lb_testitems.selectitem(li_itemcount)
	cb_run.Triggerevent(clicked!)
Next
lb_testitems.extendedselect = true
lb_testitems.multiselect = true
end event

type dw_2 from datawindow within w_expressionfun
boolean visible = false
integer x = 1518
integer y = 888
integer width = 791
integer height = 528
integer taborder = 30
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cbx_8 from checkbox within w_expressionfun
integer x = 1536
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

type lb_testitems from listbox within w_expressionfun
event ue_buttondown pbm_lbuttondown
integer x = 91
integer y = 64
integer width = 1390
integer height = 320
integer taborder = 10
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

event constructor;
wf_testitems(0)
end event

event doubleclicked;wf_testitems(1)
end event

type cb_run from commandbutton within w_expressionfun
integer x = 1545
integer y = 264
integer width = 302
integer height = 84
integer taborder = 100
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Run"
end type

event clicked;
wf_testitems(2)
end event

type cb_saveas from commandbutton within w_expressionfun
integer x = 4073
integer y = 220
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
if dw_output.SaveAs("c:\output.txt", Text!	, false)=1 then
	messagebox("Alert","save to c:\output.text,OK!")
end if
timer(0)
end event

type cb_error from commandbutton within w_expressionfun
integer x = 3803
integer y = 220
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

type cbx_right from checkbox within w_expressionfun
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

type cb_max from commandbutton within w_expressionfun
integer x = 3534
integer y = 220
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

type cb_1 from commandbutton within w_expressionfun
integer x = 2075
integer y = 172
integer width = 430
integer height = 88
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "SaveValues"
end type

event clicked;



integer li_ItemTotal, i

li_ItemTotal = lb_testitems.TotalItems( )

FOR i = 1 to li_ItemTotal
	
	if lb_testitems.State(i)=1 then
		
		choose case i
			case 1
				wf_expfun_save()
			case 2
				
			CASE 3
				
			CASE 4
				wf_save_date()
			case 5
				dw_1.dataobject="d_function"
				dw_1.settransobject(sqlca)
				wf_save_function(true,5)
			CASE 7
				dw_1.dataobject="d_headerband"
				dw_1.settransobject(sqlca)
				dw_1.retrieve()
				wf_fourbands(lb_testitems.text(i),true)
			CASE 8
				dw_1.dataobject="d_detailband"
				dw_1.settransobject(sqlca)
				dw_1.retrieve()
				wf_fourbands(lb_testitems.text(i),true)
			CASE 9
				dw_1.dataobject="d_summaryband"
				dw_1.settransobject(sqlca)
				dw_1.retrieve()
				wf_fourbands(lb_testitems.text(i),true)
			CASE 10
				dw_1.dataobject="d_footerband"
				dw_1.settransobject(sqlca)
				dw_1.retrieve()
				wf_fourbands(lb_testitems.text(i),true)
			case 12
				dw_1.dataobject="d_computedoperate"
				dw_1.settransobject(sqlca)
				dw_1.retrieve()
				wf_operate(true)
			case 13
				dw_1.dataobject="d_expression_other"
				dw_1.settransobject(sqlca)
				dw_1.retrieve()
				wf_operator_other(true)
		end choose
	end if

NEXT


end event

type cb_sort from commandbutton within w_expressionfun
integer x = 3264
integer y = 220
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

type cb_reset from commandbutton within w_expressionfun
integer x = 2994
integer y = 220
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
ii_error_no = 0
ii_errornumber = 0
st_error.text = ""
end event

type dw_1 from datawindow within w_expressionfun
integer x = 73
integer y = 480
integer width = 2523
integer height = 2016
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;//settransobject(sqlca)
//retrieve()
end event

type dw_output from datawindow within w_expressionfun
integer x = 2706
integer y = 480
integer width = 1792
integer height = 2016
integer taborder = 60
string title = "none"
string dataobject = "d_output"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.SetTransObject(sqlca)
end event

type gb_1 from groupbox within w_expressionfun
integer x = 2683
integer y = 416
integer width = 1879
integer height = 2144
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

type gb_2 from groupbox within w_expressionfun
integer x = 37
integer y = 416
integer width = 2597
integer height = 2144
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

type gb_3 from groupbox within w_expressionfun
integer x = 37
integer width = 1865
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

type gb_4 from groupbox within w_expressionfun
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

type gb_5 from groupbox within w_expressionfun
integer x = 1938
integer width = 695
integer height = 416
integer taborder = 140
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "PB"
end type

