$PBExportHeader$w_integration_case_modify_ver2.srw
$PBExportComments$Datawindow Integration Test Case--Modify and Describe
forward
global type w_integration_case_modify_ver2 from window
end type
type cb_dot from commandbutton within w_integration_case_modify_ver2
end type
type dw_2 from datawindow within w_integration_case_modify_ver2
end type
type cb_1 from commandbutton within w_integration_case_modify_ver2
end type
type cb_6 from commandbutton within w_integration_case_modify_ver2
end type
type cbx_1 from checkbox within w_integration_case_modify_ver2
end type
type cb_5 from commandbutton within w_integration_case_modify_ver2
end type
type cb_3 from commandbutton within w_integration_case_modify_ver2
end type
type cb_18 from commandbutton within w_integration_case_modify_ver2
end type
type dw_output from datawindow within w_integration_case_modify_ver2
end type
type st_error from statictext within w_integration_case_modify_ver2
end type
type st_4 from statictext within w_integration_case_modify_ver2
end type
type lb_testitems from listbox within w_integration_case_modify_ver2
end type
type cbx_right from checkbox within w_integration_case_modify_ver2
end type
type cb_rsize from commandbutton within w_integration_case_modify_ver2
end type
type cbx_7 from checkbox within w_integration_case_modify_ver2
end type
type cb_2 from commandbutton within w_integration_case_modify_ver2
end type
type cb_4 from commandbutton within w_integration_case_modify_ver2
end type
type cb_13 from commandbutton within w_integration_case_modify_ver2
end type
type cb_10 from commandbutton within w_integration_case_modify_ver2
end type
type cb_8 from commandbutton within w_integration_case_modify_ver2
end type
type lb_1 from listbox within w_integration_case_modify_ver2
end type
type dw_1 from datawindow within w_integration_case_modify_ver2
end type
type gb_2 from groupbox within w_integration_case_modify_ver2
end type
type gb_3 from groupbox within w_integration_case_modify_ver2
end type
type gb_1 from groupbox within w_integration_case_modify_ver2
end type
type gb_4 from groupbox within w_integration_case_modify_ver2
end type
end forward

global type w_integration_case_modify_ver2 from window
integer width = 4677
integer height = 2700
boolean titlebar = true
string title = "Datawindow Integration Test Case--Modify and Describe"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_dot cb_dot
dw_2 dw_2
cb_1 cb_1
cb_6 cb_6
cbx_1 cbx_1
cb_5 cb_5
cb_3 cb_3
cb_18 cb_18
dw_output dw_output
st_error st_error
st_4 st_4
lb_testitems lb_testitems
cbx_right cbx_right
cb_rsize cb_rsize
cbx_7 cbx_7
cb_2 cb_2
cb_4 cb_4
cb_13 cb_13
cb_10 cb_10
cb_8 cb_8
lb_1 lb_1
dw_1 dw_1
gb_2 gb_2
gb_3 gb_3
gb_1 gb_1
gb_4 gb_4
end type
global w_integration_case_modify_ver2 w_integration_case_modify_ver2

type variables
int il_error_no,ii_number
end variables

forward prototypes
public subroutine wf_check_dwinitial ()
public subroutine wf_additem (string as_message)
public subroutine wf_mutiexpression ()
public subroutine wf_dwretrieve ()
public subroutine wf_multiexpparse ()
public subroutine wf_multiexp (boolean ab_save)
public subroutine wf_datawindow_const ()
public subroutine wf_text_const ()
public subroutine wf_button_const ()
public subroutine wf_computerfield_const ()
public subroutine wf_column_const ()
public subroutine wf_datawindow_multi ()
public subroutine wf_column_multi ()
public subroutine wf_text_multi ()
public subroutine wf_computefield_multi ()
public subroutine wf_button_multi ()
public subroutine wf_mix_multi ()
public subroutine wf_message (string as_operate, string as_problem)
end prototypes

public subroutine wf_check_dwinitial ();//³õÊ¼Öµ²âÊÔ
int 		li_colcount,li_id,i
int		li_column_arr[]={1,3,7,12,13,14}//Êý¾ÝÁÐ¶ÔÓ¦ÀàÐÍint  string  date  time  dec  datetime
string 	ls_fname,ls_lname,ls_message,ls_ret
decimal	l_decimal=1
date	 	ld_date
time		lt_time
datetime	ldt_datetime

dw_1.insertrow(1)
//³õÊ¼ÖµÒÑÉè
li_id=dw_1.getitemnumber(1,"manager_id") //null
ls_fname=dw_1.getitemstring(1,"emp_fname") //empty
ls_lname=dw_1.getitemstring(1,"emp_lname") //spaces
ld_date=dw_1.getitemdate(1,"column_editmask") //date
lt_time=dw_1.getitemtime(1,"mytime") //time
ldt_datetime=dw_1.getitemdatetime(1,"mydatetime") //datetime
l_decimal=dw_1.getitemdecimal(1,"mydecimal") //0


if l_decimal=0 then
	ls_message="Right|check column.initial='0'"
else
	ls_message="Error|initial='null' JS:"+string(l_decimal)
end if
wf_additem(ls_message)

if isnull(li_id) then
	ls_message="Right|check column.initial='null'"
else
	ls_message="Error|initial='null' JS:"+string(li_id)
end if
wf_additem(ls_message)

if ls_fname="" then
	ls_message="Right|check column.initial='empty'"
else
	ls_message="Error|initial='empty' JS:"+string(ls_fname)
end if	
wf_additem(ls_message)
if ls_lname="                    " then
	ls_message="Right|check column.initial='spaces'"
else
	ls_message="Error|initial='spaces' JS:"+string(ls_lname)
end if
wf_additem(ls_message)
if  day(ld_date)=day(today()) then
	ls_message="Right|check date column.initial='today'"
else
	ls_message="Error|check date column.initial='today' JS:"+string(ld_date)
end if
wf_additem(ls_message)
if hour(lt_time)=hour(now()) then
	ls_message="Right|check date column.initial='today'"
else
	ls_message="Error|check date column.initial='today' JS:"+string(lt_time)
end if
wf_additem(ls_message)
if day(date(ldt_datetime))=day(today()) and hour(time(lt_time))=hour(now()) then
	ls_message="Right|check date column.initial='today'"
else
	ls_message="Error|check date column.initial='today' JS:"+string(ldt_datetime)
end if
wf_additem(ls_message)
//describe
ls_ret=dw_1.Describe("manager_id.Initial")//dw_1.describe("manager_id") //null
ls_message="check describe(column.initial='null')"
if lower(ls_ret)="null" then
	ls_message="Right|"+ls_message+" return:"+f_string(ls_ret)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(ls_ret)
end if
wf_additem(ls_message)


ls_ret=dw_1.Describe("emp_fname.Initial")
ls_message="check describe(column.initial='empty')"
if lower(ls_ret)="empty" then
	ls_message="Right|"+ls_message+" return:"+f_string(ls_ret)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(ls_ret)
end if
wf_additem(ls_message)


ls_ret=dw_1.Describe("emp_lname.Initial")
ls_message="check describe(column.initial='spaces')"
if lower(ls_ret)="spaces" then
	ls_message="Right|"+ls_message+" return:"+f_string(ls_ret)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(ls_ret)
end if
wf_additem(ls_message)


ls_ret=dw_1.Describe("column_editmask.Initial")
ls_message="check describe(column.initial='today')"
if lower(ls_ret)="today" then
	ls_message="Right|"+ls_message+" return:"+f_string(ls_ret)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(ls_ret)
end if
wf_additem(ls_message)


ls_ret=dw_1.Describe("mytime.Initial")
ls_message="check describe(column.initial='today')"
if lower(ls_ret)="today" then
	ls_message="Right|"+ls_message+" return:"+f_string(ls_ret)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(ls_ret)
end if
wf_additem(ls_message)


ls_ret=dw_1.Describe("mydatetime.Initial")
ls_message="check describe(column.initial='today')"
if lower(ls_ret)="today" then
	ls_message="Right|"+ls_message+" return:"+f_string(ls_ret)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(ls_ret)
end if
wf_additem(ls_message)


ls_ret=dw_1.Describe("mydecimal.Initial")
ls_message="check describe(column.initial='0')"
if lower(ls_ret)="0" then
	ls_message="Right|"+ls_message+" return:"+f_string(ls_ret)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(ls_ret)
end if
wf_additem(ls_message)



//³õÊ¼ÖµÎª80 .dataÐÞ¸ÄÔ­Ê¼Öµµ±Ç°Öµ 1
dw_1.modify("manager_id.initial='80'")

dw_1.insertrow(1)
dw_1.insertrow(1)
dw_1.insertrow(1)
li_id=dw_1.getitemnumber(1,"manager_id",primary!,true) //null

if li_id=80 then
	ls_message="Right|check column.initial='80'"
else
	ls_message="Error|initial='80' JS:"+f_string(li_id)
end if
wf_additem(ls_message)

//set current 2
dw_1.object.manager_id.primary.current[1]=10
//current
li_id=dw_1.getitemnumber(1,"manager_id",primary!,false)
ls_message="check column.initial='80'( .data[] set current=10 get current data)"
if li_id=10 then
	ls_message="Right|"+ls_message+" return:"+f_string(li_id)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(li_id)
end if
wf_additem(ls_message)

//oringinal
li_id=dw_1.getitemnumber(1,"manager_id",primary!,true)
ls_message="check column.initial='80'( .data[] set current=10  get original data)"
if li_id=10 then
	ls_message="Right|"+ls_message+" return:"+f_string(li_id)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(li_id)
end if
wf_additem(ls_message)

li_id=dw_1.getitemnumber(2,"manager_id",primary!,false)

//set original 3
dw_1.object.manager_id.primary.original[2]=20
//current
li_id=dw_1.getitemnumber(2,"manager_id",primary!,false)
ls_message="check column.initial='80'( .data[] set original=20 get current data)"
if li_id=20 then
	ls_message="Right|"+ls_message+" return:"+f_string(li_id)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(li_id)
end if
wf_additem(ls_message)

//oringinal
li_id=dw_1.getitemnumber(2,"manager_id",primary!,true)
ls_message="check column.initial='80'( .data[] set original=20  get original data)"
if li_id=20 then
	ls_message="Right|"+ls_message+" return:"+f_string(li_id)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(li_id)
end if
wf_additem(ls_message)

//setitem()
dw_1.setitem(2,"manager_id",30)
//current
li_id=dw_1.getitemnumber(3,"manager_id",primary!,false)
ls_message="check column.initial='80'( setitem()=30 get current data)"
if li_id=80 then
	ls_message="Right|"+ls_message+" return:"+f_string(li_id)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(li_id)
end if
wf_additem(ls_message)

//oringinal
li_id=dw_1.getitemnumber(3,"manager_id",primary!,true)
ls_message="check column.initial='80'( setitem()=30  get original data)"
if li_id=80 then
	ls_message="Right|"+ls_message+" return:"+f_string(li_id)
else
	ls_message="Error|"+ls_message+" JS:"+f_string(li_id)
end if
wf_additem(ls_message)


end subroutine

public subroutine wf_additem (string as_message);long ll_index
if pos(lower(as_message),"error") > 0 then
	il_error_no++
	ll_index=lb_1.additem(as_message)
	lb_1.SetState ( ll_index, true)
else
	if cbx_right.checked then 
		ll_index=lb_1.additem(as_message)
	end if

end if
end subroutine

public subroutine wf_mutiexpression ();string ls_objectname,ls_attribute,ls_modifyvalue,ls_describevalue
integer li_ismodify,li_isdescribe,li_valuetype
int i,li_rowcount,li_ret,j,k
string ls_object="DataWindow",ls_ret,ls_message
string ls_mexp,ls_dexp

//muti-expression
string ls_dexp_arr[],ls_describevalue_arr[]
string ls_mexp_arr[],ls_modifyvalue_arr[],ls_modify_checkvalue_arr[]

//dw_1.retrieve()
wf_dwretrieve()


datastore lds

lds=create datastore
lds.dataobject="d_attribute"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
li_rowcount=lds.rowcount()
for i=1 to li_rowcount
	ls_objectname=lds.object.objectname[i]
	ls_attribute=lds.object.attribute[i]
	ls_modifyvalue=lds.object.modifyvalue[i]
	ls_describevalue=lds.object.describevalue[i]
	li_ismodify=lds.object.ismodify[i]
	li_isdescribe=lds.object.isdescribe[i]
	li_valuetype=lds.object.valuetype[i]	
	if (li_ismodify=1) then//support modify
		if (ls_modifyvalue="!" or ls_modifyvalue="?") then continue
		if (li_valuetype =0) then
			ls_mexp=ls_objectname+"."+ls_attribute+"='"+ls_modifyvalue+"'"
		else
			ls_mexp=ls_objectname+"."+ls_attribute+"="+ls_modifyvalue
		end if


		ls_dexp=ls_objectname+"."+ls_attribute
		k++
		ls_mexp_arr[k]+=ls_mexp//±£´æmodify±í´ïÊ½
		ls_modifyvalue_arr[k]+=ls_modifyvalue
		
		ls_modify_checkvalue_arr[k]=ls_dexp //±£´æmodify±È½ÏÖµ

	else
		if (li_isdescribe=1) then//support describe
			ls_dexp=ls_objectname+"."+ls_attribute
			j++
			ls_dexp_arr[j]+=ls_dexp//±£´ædescribe±í´ïÊ½
			ls_describevalue_arr[j]+=ls_describevalue
			
		end if
	end if
next

//		<Interface >describe( "muti-expression" )</Interface>
//Describeº¯ÊýÖ§³Ö¶à±í´ï²âÊÔ
//²ÎÊý"~t"·Ö¸ô
ls_dexp=ls_dexp_arr[1]
ls_describevalue=ls_describevalue_arr[1]
for j=2 to UpperBound(ls_dexp_arr)
//	if j=12 then
//		//table.Argument·Ö¸ô²âÊÔ
//		ls_ret=dw_1.describe(ls_dexp_arr[j])
//		ls_dexp=""
//		ls_dexp=f_get_token(ls_ret,"~r")
//		ls_ret=dw_1.describe(ls_dexp_arr[j])
//		ls_dexp=""
//		ls_dexp=f_get_token(ls_ret,"~n")
//		
//	end if
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_dexp+="~t"+ls_dexp_arr[j]
	ls_describevalue+="~n"+ls_describevalue_arr[j]
next
	
ls_ret=dw_1.describe(ls_dexp)

if (ls_ret = ls_describevalue) then
	ls_message="Right|describe:all propertylist(exp1'+tab+'exp2...return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+tab+'exp2...return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+tab+'exp2...return js:"+ls_ret
end if	

wf_additem(ls_message)
wf_additem("")
wf_additem("")
//²ÎÊý"~n"·Ö¸ô
ls_dexp=ls_dexp_arr[1]
ls_describevalue=ls_describevalue_arr[1]
for j=2 to UpperBound(ls_dexp_arr)
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_dexp+="~n"+ls_dexp_arr[j]
	ls_describevalue+="~n"+ls_describevalue_arr[j]
next

ls_ret=dw_1.describe(ls_dexp)

if (ls_ret = ls_describevalue) then
	ls_message="Right|describe:all propertylist(exp1'+newline+'exp2...return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+newline+'exp2...return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+newline+'exp2...return js:"+ls_ret
end if

wf_additem(ls_message)
wf_additem("")
wf_additem("")
//²ÎÊý" "·Ö¸ô
ls_dexp=ls_dexp_arr[1]
ls_describevalue=ls_describevalue_arr[1]
for j=2 to UpperBound(ls_dexp_arr)
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_dexp+="~n"+ls_dexp_arr[j]
	ls_describevalue+="~n"+ls_describevalue_arr[j]
next
	
ls_ret=dw_1.describe(ls_dexp)


if (ls_ret = ls_describevalue) then
	ls_message="Right|describe:all propertylist(exp1'+space+'exp2...return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+space+'exp2...return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+space+'exp2...return js:"+ls_ret
end if
wf_additem(ls_message)
wf_additem("")
wf_additem("")
//²ÎÊý ÒÔÉÏ·Ö¸ô»ìºÏ
ls_dexp=ls_dexp_arr[1]
ls_describevalue=ls_describevalue_arr[1]

ls_dexp+="~n"+ls_dexp_arr[2]
ls_dexp+="~t"+ls_dexp_arr[3]
ls_dexp+=" "+ls_dexp_arr[4]
for j=2 to 4
	ls_describevalue+="~n"+ls_describevalue_arr[j]
next
	
ls_ret=dw_1.describe(ls_dexp)


if (ls_ret = ls_describevalue) then
	ls_message="Right|describe:all propertylist(exp1'+all+'exp2...return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+all+'exp2...return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+all+'exp2...return js:"+ls_ret
end if
wf_additem(ls_message)

wf_additem("")
wf_additem("")




//		<Interface >modify( "muti-expression" )</Interface>
//²ÎÊý"~t"·Ö¸ô
ls_mexp=ls_mexp_arr[1]
ls_modifyvalue=ls_modifyvalue_arr[1]
ls_dexp=ls_modify_checkvalue_arr[1]
for j=2 to UpperBound(ls_mexp_arr)
	
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_mexp+="~t"+ls_mexp_arr[j]
	ls_modifyvalue+="~n"+ls_modifyvalue_arr[j]
	ls_dexp+="~n"+ls_modify_checkvalue_arr[j]
	
next
	
ls_ret=dw_1.modify(ls_mexp)

//check return value
if (ls_ret <>"") then
	ls_message="Error|modify(exp1'+tab+'exp2...)return:"+ls_ret
	wf_additem(ls_message)
	
end if

ls_ret=dw_1.describe(ls_dexp)
if (ls_ret=ls_modifyvalue) then			
	ls_message="Right|modify and describe(exp1'+tab+'exp2...):"+ls_mexp
else
	ls_message="Error|modify and describe(exp1'+tab+'exp2...):"+ls_mexp
end if
wf_additem(ls_message)

wf_additem("")
wf_additem("")

//²ÎÊý"~n"·Ö¸ô
ls_mexp=ls_mexp_arr[1]
ls_modifyvalue=ls_modifyvalue_arr[1]
ls_dexp=ls_modify_checkvalue_arr[1]
for j=2 to UpperBound(ls_mexp_arr)
	
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_mexp+="~n"+ls_mexp_arr[j]
	ls_modifyvalue+="~n"+ls_modifyvalue_arr[j]
	ls_dexp+="~n"+ls_modify_checkvalue_arr[j]
	
next
	
ls_ret=dw_1.modify(ls_mexp)

//check return value
if (ls_ret <>"") then
	ls_message="Error|modify(exp1'+newline+'exp2...)return:"+ls_ret
	wf_additem(ls_message)
	
end if

ls_ret=dw_1.describe(ls_dexp)
if (ls_ret=ls_modifyvalue) then			
	ls_message="Right|modify and describe(exp1'+newline+'exp2...):"+ls_mexp
else
	ls_message="Error|modify and describe(exp1'+newline+'exp2...):"+ls_mexp
end if
wf_additem(ls_message)

wf_additem("")
wf_additem("")
//²ÎÊý" "·Ö¸ô
ls_mexp=ls_mexp_arr[1]
ls_modifyvalue=ls_modifyvalue_arr[1]
ls_dexp=ls_modify_checkvalue_arr[1]
for j=2 to UpperBound(ls_mexp_arr)
	
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_mexp+=" "+ls_mexp_arr[j]
	ls_modifyvalue+="~n"+ls_modifyvalue_arr[j]
	ls_dexp+="~n"+ls_modify_checkvalue_arr[j]
	
next
	
ls_ret=dw_1.modify(ls_mexp)

//check return value
if (ls_ret <>"") then
	ls_message="Error|modify(exp1'+space+'exp2...)return:"+ls_ret
	wf_additem(ls_message)
	
end if

ls_ret=dw_1.describe(ls_dexp)
if (ls_ret=ls_modifyvalue) then			
	ls_message="Right|modify and describe(exp1'+space+'exp2...):"+ls_mexp
else
	ls_message="Error|modify and describe(exp1'+space+'exp2...):"+ls_mexp
end if
wf_additem(ls_message)

wf_additem("")
wf_additem("")

//²ÎÊý ÒÔÉÏ·Ö¸ô»ìºÏ
ls_dexp=ls_dexp_arr[1]
ls_modifyvalue=ls_modifyvalue_arr[1]
ls_dexp=ls_modify_checkvalue_arr[1]
ls_mexp+="~n"+ls_mexp_arr[2]
ls_mexp+="~t"+ls_mexp_arr[3]
ls_mexp+=" "+ls_mexp_arr[4]
for j=2 to 4
	ls_modifyvalue+="~n"+ls_modifyvalue_arr[j]
	ls_dexp+="~n"+ls_modify_checkvalue_arr[j]
next

ls_ret=dw_1.modify(ls_mexp)	
//check return value
if (ls_ret <>"") then
	ls_message="Error|modify(exp1'+all+'exp2...)return:"+ls_ret
	wf_additem(ls_message)
	
end if

ls_ret=dw_1.describe(ls_dexp)
if (ls_ret=ls_modifyvalue) then			
	ls_message="Right|modify and describe(exp1'+all+'exp2...):"+ls_mexp
else
	ls_message="Error|modify and describe(exp1'+all+'exp2...):"+ls_mexp
end if
wf_additem(ls_message)

wf_additem("")
wf_additem("")
end subroutine

public subroutine wf_dwretrieve ();dw_1.settransobject(sqlca)
//dw_1.retrieve(500,500,"a",1)
long na[]
string sa[]
date da[]
time ta[]
datetime dta[]
//2.7Ôö¼ÓTable.Arguments
dw_1.retrieve(5000,5000,"a",1,"b",2003-03-01,05:05:05,datetime(2003-03-01),na,sa,da,ta,dta)

end subroutine

public subroutine wf_multiexpparse ();
end subroutine

public subroutine wf_multiexp (boolean ab_save);/*2£®	Modify±í´ïÊ½µÄ¼¸ÖÖ»ù±¾ÓÃ·¨
a£®	×î»ù±¾ÓÃ·¨
"Object.Attributes = Value"
b£®	ÖµÓÃµ¥ÒýºÅ£¬ÈçÊý×Ö£¬×Ö·û´®µÈ¡£
"Object.Attributes = 'Value'"
c£®	ÖµÓÃË«ÒýºÅ
'Object.Attributes = "Value"'
3£®	Modify±í´ïÊ½×éºÏ
a£®	»ù±¾×éºÏ
Attributes1 = Value¿Õ¸ñAttributes2 = ValueTAB¼üAttributes3 = Value
b£®	µ¥ÒýºÅÇ¶Ì×
'Att1 = Value	Att2 = \'Value\'	Att3 = \'Value\''
c£®	Ë«ÒýºÅÇ¶Ì×
"Att1 = \"Value\"	Att2 = Value Att3 = \"Value\""
d£®	µ¥ÒýºÅ£¬Ë«ÒýºÅ»ìÓÃÇ¶Ì×
"Att1 = 'Value'	Att2 = \"Value\""
'Att1 = "Value"	Att2 = \'Value\''
e£®	»ù±¾ÓÃ·¨Ç¶Ì×
"DataWindow.Table.Select = ' PBSELECT( VERSION(400) TABLE(NAME=\"dms006_emp\" ) COLUMN(NAME=\"dms006_emp.v_id\")) where  v_id  = 1001' 	Name = \"test\""

'DataWindow.Table.Select = "Select emp_id from Employee where fname = 'connie' and emp_id > 300 and lname = \"test\""	DataWindow.Table.Sort = \'Emp_id A\''
f£®	
4£®	´øÌõ¼þµÄ±í´ïÊ½¡£
"Att1 = '33554432		if( mod( getrow(), 2 ) = 0, 255, 0 )'	Att2 = Value¡­"*/

//
string ls_exp
string ls_message,ls_OldMessage
string ls_sql = 'select emp_id,emp_fname,city from employee where sex = ~'F~''	
dw_1.dataobject = 'd_employee2'
dw_1.SetTransobject(sqlca)
ls_exp = "DataWindow.color = '255'	DataWindow.table.sort = '#1 D'	DataWindow.table.filter = ~"emp_id > 800~"	" + &
			"DataWindow.Table.select = ~"" + ls_sql + "~"	" + &
			'emp_id.color = ~'33554432		if( mod( getrow(), 2 ) = 0, 255, 0 )~''

dw_1.Modify(ls_exp)
dw_1.Retrieve()


ls_message = dw_1.Describe("DataWindow.color") +","+dw_1.describe("DataWindow.table.sort") +"," + &
	dw_1.Describe("DataWindow.table.filter") +","+ dw_1.describe("datawindow.table.select") +"," + &
	dw_1.describe("emp_id.color") 

if ab_save then
	delete exp_fun where value = 'MultiExpText';
	insert into exp_fun(value,result) values('MultiExpText',:ls_message);
else
	select result into :ls_OldMessage from exp_fun where value = 'MultiExpText';
	if sqlca.sqlcode <> 0 then ls_OldMessage = "error"
	if ls_message = ls_oldMessage then
		wf_addItem("Right|MultiExp JS:"+ls_OldMessage)
	else
		wf_addItem("Error|MultiExp PB:"+ls_OldMessage)
		wf_addItem("Error|MultiExp JS:"+ls_Message)
	end if
end if

COMMIT;
end subroutine

public subroutine wf_datawindow_const ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="datawindow"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

for i = 1 to 31
	lb_modify = false
	ls_modret = ""
  choose case i
	  case 1
		ls_property = "column.count"
      ls_ret = dw_1.describe('datawindow.column.count')
	  case 2
		ls_property = "detail.height"
		ls_modret = dw_1.modify('datawindow.detail.height = 104')
	  case 3
		ls_property = "firstrowonpage"
      ls_ret = dw_1.describe('datawindow.firstrowonpage')
	  case 4
		ls_property = "detail.height.autosize"
      ls_ret = dw_1.describe('datawindow.detail.height.autosize')
	  case 5
		ls_property = "header.color"
      ls_modret = dw_1.modify("datawindow.header.color = '536870912'")
	  case 6
		ls_property = "bands"
      ls_ret = dw_1.describe('datawindow.bands')
	  case 7
		//ls_property = "data"
      //ls_ret = dw_1.describe('datawindow.data')
	  case 8
		ls_property = "footer.color"
      ls_modret = dw_1.modify('datawindow.footer.color = 536870912')
	  case 9
		ls_property = "header.height"
      ls_modret = dw_1.modify('datawindow.header.height = 92')
	  case 10
		ls_property = "color"
      ls_modret = dw_1.modify('datawindow.color = 255')
	  case 11
		ls_property = "detail.color"
      ls_modret = dw_1.modify('datawindow.detail.color = 536870912')
	  case 12
		ls_property = "footer.height"
      ls_modret = dw_1.modify('datawindow.footer.height = 16')
	  case 13
		ls_property = "grid.lines"
      ls_modret = dw_1.modify('datawindow.grid.lines = 0')
	  case 14
		//ls_property = "lastrowonpage"
      //ls_ret = dw_1.describe('datawindow.lastrowonpage')
	  case 15
		ls_property = "name"
      ls_ret = dw_1.describe('datawindow.name')
	  case 16
		//ls_property = "objects"
      //ls_ret = dw_1.describe('datawindow.objects')
	  case 17
		ls_property = "processing"
      ls_ret = dw_1.describe('datawindow.processing')
	  case 18
		ls_property = "readonly"
      ls_modret = dw_1.modify('datawindow.readonly = no')
	  case 19
		//ls_property = "selected.mouse"
      //ls_ret = dw_1.describe('datawindow.selected.mouse')
	  case 20
		ls_property = "showdefinition"
      ls_ret = dw_1.describe('datawindow.showdefinition')
	  case 21
		ls_property = "summary.color"
      ls_modret = dw_1.modify('datawindow.summary.color = 536870912')
	  case 22
		ls_property = "summary.height"
      ls_modret = dw_1.modify('datawindow.summary.height = 1')
	  case 23
		ls_property = "table.arguments"
      ls_ret = dw_1.describe('datawindow.table.arguments')
	  case 24
		//ls_property = "table.filter"
     // ls_modret = dw_1.modify("Datawindow.table.filter = ~"emp_id > 800~"	")
	  case 25
		//ls_property = "table.select"
      //ls_modret = dw_1.modify("datawindow.table.select = 'select emp_id,emp_fname,city from employee where sex ='F' ' " )
	  case 26
		ls_property = "table.sort"
      ls_modret = dw_1.modify("datawindow.table.sort = '#1 D'")
	  case 27
		ls_property = "table.updatetable"
      ls_modret = dw_1.modify("datawindow.table.updatetable = 'employee1'")
	  case 28
		ls_property = "table.updatewhere"
      ls_modret = dw_1.modify("datawindow.table.updatewhere = 1")
	  case 29
		ls_property = "zoom"
        ls_modret = dw_1.modify('datawindow.zoom = 100') 
	  case 30
		ls_property = "QueryMode"
        ls_modret = dw_1.modify('datawindow.QueryMode = no')
	  case 31
		//ls_property = "Syntax.Data"
      //ls_ret = dw_1.describe('datawindow.Syntax.Data')

	  case else
		exit
  end choose
  
      ls_dexp = "datawindow." + ls_property
  		if ls_modret<>"" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if
		
  choose case i
				case 2
					ls_ret = dw_1.describe('datawindow.detail.height')
					lb_modify = true
				case 5
					ls_ret = dw_1.describe('datawindow.header.color')
					lb_modify = true
				case 8
					ls_ret = dw_1.describe('datawindow.footer.color')
					lb_modify = true	
				case 9
					ls_ret = dw_1.describe('datawindow.header.height')
					lb_modify = true	
				case 10
					ls_ret = dw_1.describe('datawindow.color')
					lb_modify = true	
				case 11
					ls_ret = dw_1.describe('datawindow.detail.color')
					lb_modify = true	
				case 12
					ls_ret = dw_1.describe('datawindow.footer.height')
					lb_modify = true	
				case 13
					ls_ret = dw_1.describe('datawindow.grid.lines')
					lb_modify = true	
				case 18
					ls_ret = dw_1.describe('datawindow.readonly')
					lb_modify = true	
				case 21
					ls_ret = dw_1.describe('datawindow.summary.color')
					lb_modify = true	
				case 22
					ls_ret = dw_1.describe('datawindow.summary.height')
					lb_modify = true	
				case 24
					//ls_ret = dw_1.describe('datawindow.table.filter')
					lb_modify = true	
				case 25
					//ls_ret = dw_1.describe('datawindow.select')
					lb_modify = true	
				case 26
					ls_ret = dw_1.describe('datawindow.table.sort')
					lb_modify = true	
				case 27
					ls_ret = dw_1.describe('datawindow.table.updatetable')
					lb_modify = true	
				case 28
					//zhushaobin 2005-01-28 ²»Ö§³Ödatawindow.updatewhere±¨´í(zhouxiang)
					ls_ret = dw_1.describe('datawindow.updatewhere')
					ls_ret = dw_1.describe('datawindow.table.updatewhere')
					lb_modify = true	
				case 29
					ls_ret = dw_1.describe('datawindow.zoom')
					lb_modify = true	
				case 30
					ls_ret = dw_1.describe('datawindow.QueryMode')
					lb_modify = true	

end choose
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
	if lb_modify then
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,0,1,:ls_ret,:ls_ret);
	end if
	
else
	
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  
 choose case lb_modify
	case true
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
end if
next
commit;

end subroutine

public subroutine wf_text_const ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Text"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

for i = 1 to 25
	lb_modify = false
	ls_modret = ""
  choose case i
	  case 1
		ls_property = "alignment"
      ls_modret = dw_1.modify("Text_test.alignment = '0'")
	  case 2
		ls_property = "band"
      ls_ret = dw_1.describe('Text_test.band')
	  case 3
		ls_property = "border"
      ls_modret = dw_1.modify('Text_test.border=6')
	  case 4
		ls_property = "color"
      ls_modret = dw_1.modify('Text_test.color=33554432')
	  case 5
		ls_property = "height"
      ls_modret = dw_1.modify('Text_test.height = 60')
	  case 6
		ls_property = "moveable"
      ls_ret = dw_1.describe('Text_test.moveable')
	  case 7
		ls_property = "name"
      ls_ret = dw_1.describe('Text_test.name')
	  case 8
		ls_property = "resizeable"
      ls_ret = dw_1.describe('Text_test.resizeable')
	  case 9
		ls_property = "text"
      ls_modret = dw_1.modify('Text_test.text = "text"')
	  case 10
		ls_property = "visible"
      ls_ret = dw_1.describe('Text_test.visible')
	  case 11
		ls_property = "width"
      ls_modret = dw_1.modify('Text_test.width = 155')
	  case 12
		ls_property = "x"
      ls_modret = dw_1.modify('Text_test.x = 2135')
	  case 13
		ls_property = "y"
      ls_modret = dw_1.modify('Text_test.y = 88')
	  case 14
		ls_property = "background.color"
      ls_modret = dw_1.modify('Text_test.background.color= 536870912')
	  case 15
		ls_property = "font.family"
      ls_ret = dw_1.describe('Text_test.font.family')
	  case 16
		ls_property = "font.height"
      ls_modret = dw_1.modify('Text_test.font.height = -9')
	  case 17
		ls_property = "font.pitch"
      ls_ret = dw_1.describe('Text_test.font.pitch')
	  case 18
		ls_property = "font.weight"
      ls_modret = dw_1.modify('Text_test.font.weight = 400')
	  case 19
		ls_property = "tag"
      ls_modret = dw_1.modify('Text_test.tag = "tag"')
	  case 20
		ls_property = "type"
      ls_ret = dw_1.describe('Text_test.type')
	  case 21
		ls_property = "font.charset"
      ls_ret = dw_1.describe('Text_test.font.charset')
	  case 22
		ls_property = "Font.Face"
      ls_modret = dw_1.modify('Text_test.Font.Face = "face"')
	  case 23
		ls_property = "Font.Italic"
      ls_modret = dw_1.modify('Text_test.Font.Italic = yes')
	  case 24
		ls_property = "Font.Strikethrough"
      ls_modret = dw_1.modify('Text_test.Font.Strikethrough =no')
	  case 25
		ls_property = "Font.Underline"
      ls_modret = dw_1.modify('Text_test.Font.Underline = no')
	  case else
		exit
  end choose
  
      ls_dexp = "Text_test." + ls_property
  		if ls_modret<>"" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if
		
  choose case i
				case 1
					ls_ret = dw_1.describe('Text_test.alignment')
					lb_modify = true
				case 3
					ls_ret = dw_1.describe('Text_test.border')
					lb_modify = true
				case 4
					ls_ret = dw_1.describe('Text_test.color')
					lb_modify = true	
				case 5
					ls_ret = dw_1.describe('Text_test.height')
					lb_modify = true	
				case 9 
					ls_ret = dw_1.describe('Text_test.text')
					lb_modify = true	
				case 11
					ls_ret = dw_1.describe('Text_test.width')
					lb_modify = true	
				case 12
					ls_ret = dw_1.describe('Text_test.x')
					lb_modify = true	
				case 13
					ls_ret = dw_1.describe('Text_test.y')
					lb_modify = true	
				case 14
					ls_ret = dw_1.describe('Text_test.background.color')
					lb_modify = true	
				case 16
					ls_ret = dw_1.describe('Text_test.font.height')
					lb_modify = true	
				case 18
					ls_ret = dw_1.describe('Text_test.font.weight')
					lb_modify = true	
				case 19
					ls_ret = dw_1.describe('Text_test.Text_test.tag')
					lb_modify = true	
				case 22
					ls_ret = dw_1.describe('Text_test.Font.Face')
					lb_modify = true	
				case 23
					ls_ret = dw_1.describe('Text_test.Font.Italic')
					lb_modify = true
				case 24
					ls_ret = dw_1.describe('Text_test.Font.Strikethrough')
					lb_modify = true	
				case 25
					ls_ret = dw_1.describe('Text_test.Font.Underline')
					lb_modify = true	

  end choose
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
	if lb_modify then
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,0,1,:ls_ret,:ls_ret);
	end if
	
else
	
  
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  
 choose case lb_modify
	case true
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
end if
next
commit;

end subroutine

public subroutine wf_button_const ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="button"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify 
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

for i = 1 to 30
	lb_modify = false
	ls_modret = "" 
  choose case i 
	  case 1
		ls_property = "action"
      ls_modret = dw_1.modify("Button_test.action = '4'")
	  case 2
		ls_property = "band"
      ls_ret = dw_1.describe('Button_test.band')
	  case 3
		ls_property = "color"
      ls_modret = dw_1.modify('Button_test.color = 33554432')
	  case 4
		//ls_property = "Pointer"
      //ls_ret = dw_1.describe('Button_test.Pointer')
	  case 5
		ls_property = "height"
      ls_modret = dw_1.modify('Button_test.height = 76')
	  case 6
		ls_property = "htextalign"
      ls_modret = dw_1.modify("Button_test.htextalign = no")
	  case 7
		ls_property = "moveable"
      ls_ret = dw_1.describe('Button_test.moveable')
	  case 8
		ls_property = "name"
      ls_ret = dw_1.describe('Button_test.name')
	  case 9
		ls_property = "resizeable"
      ls_ret = dw_1.describe('Button_test.resizeable')
	  case 10
		ls_property = "text"
      ls_modret = dw_1.modify("Button_test.text='"+"text"+"'")
	  case 11
		ls_property = "type"
      ls_ret = dw_1.describe('Button_test.type')
	  case 12
		ls_property = "visible"
      ls_modret = dw_1.modify('Button_test.visible = yes')
	  case 13
		ls_property = "vtextalign"
      ls_modret = dw_1.modify('Button_test.vtextalign = no')
	  case 14
		ls_property = "width"
      ls_modret = dw_1.modify('Button_test.width= 238')
	  case 15
		ls_property = "x"
      ls_modret = dw_1.modify('Button_test.x = 1879')
	  case 16
		ls_property = "y"
      ls_modret = dw_1.modify('Button_test.y = 84')
	  case 17
		ls_property = "background.color"
      ls_modret = dw_1.modify('Button_test.background.color = 67108864')
	  case 18
		ls_property = "font.charset"
      ls_ret = dw_1.describe('Button_test.font.charset')
	  case 19
		ls_property = "font.face"
      ls_modret = dw_1.modify('Button_test.font.face = "'+'Arial'+'"')
	  case 20
		ls_property = "font.family"
      ls_ret = dw_1.describe('Button_test.font.family')
	  case 21
		ls_property = "font.height"
      ls_modret = dw_1.modify('Button_test.font.height = -9')
	  case 22
		ls_property = "font.pitch"
      ls_ret = dw_1.describe('Button_test.font.pitch')
	  case 23
		ls_property = "font.weight"
        ls_modret = dw_1.modify('Button_test.font.weight = 400')
    case 24
	  ls_property = "DefaultPicture"
      ls_ret = dw_1.describe('Button_test.DefaultPicture')
	  case 25
		ls_property = "Filename"
      ls_ret = dw_1.describe('Button_test.Filename')
	  case 26
		ls_property = "SuppressEventProcessing"
        ls_modret = dw_1.modify('Button_test.SuppressEventProcessing = yes')
      case 27
	  ls_property = "Tag"
        ls_modret = dw_1.modify('Button_test.Tag = "Tag"')
	  case 28
		ls_property = "Font.Italic"
        ls_modret = dw_1.modify('Button_test.Font.Italic = yes')
	  case 29
		ls_property = "Font.Strikethrough"
        ls_modret = dw_1.modify('Button_test.Font.Strikethrough = no')
	  case 30
		ls_property = "Font.Underline"
        ls_modret = dw_1.modify('Button_test.Font.Underline = yes')
	  case else
		exit
  end choose
  
      ls_dexp = "Button_test." + ls_property
  		if ls_modret<>"" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if
		
  choose case i
				case 1
					ls_ret = dw_1.describe('Button_test.action')
					lb_modify = true
				case 3
					ls_ret = dw_1.describe('Button_test.color')
					lb_modify = true	
//				case 4
//					ls_ret = dw_1.describe('Button_test.filename')
//					lb_modify = true	
				case 5
					ls_ret = dw_1.describe('Button_test.height')
					lb_modify = true	
				case 6
					ls_ret = dw_1.describe('Button_test.htextalign')
					lb_modify = true	
				case 10
					ls_ret = dw_1.describe('Button_test.text')
					lb_modify = true	
				case 12
					ls_ret = dw_1.describe('Button_test.visible')
					lb_modify = true	
				case 13
					ls_ret = dw_1.describe('Button_test.vtextalign')
					lb_modify = true	
				case 14
					ls_ret = dw_1.describe('Button_test.width')
					lb_modify = true	
				case 15
					ls_ret = dw_1.describe('Button_test.x')
					lb_modify = true
				case 16
					ls_ret = dw_1.describe('Button_test.y')
					lb_modify = true
				case 17
					ls_ret = dw_1.describe('Button_test.background.color')
					lb_modify = true
				case 19
					ls_ret = dw_1.describe('Button_test.font.face')
					lb_modify = true
				case 21
					ls_ret = dw_1.describe('Button_test.font.height')
					lb_modify = true
				case 23
					ls_ret = dw_1.describe('Button_test.font.weight')
					lb_modify = true
				case 27
					ls_ret = dw_1.describe('Button_test.SuppressEventProcessing')
					lb_modify = true
				case 28
					ls_ret = dw_1.describe('Button_test.Tag')
					lb_modify = true
				case 29
					ls_ret = dw_1.describe('Button_test.Font.Italic')
					lb_modify = true
				case 30
					ls_ret = dw_1.describe('Button_test.Font.Strikethrough')
					lb_modify = true
				case 31
					ls_ret = dw_1.describe('Button_test.Font.Underline')
					lb_modify = true
  end choose
  
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
	if lb_modify then
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,0,1,:ls_ret,:ls_ret);
	end if
	
else
	
	
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  
 choose case lb_modify
	case true
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
  end if 
next
commit;
end subroutine

public subroutine wf_computerfield_const ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Compute"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

for i = 1 to 29
	lb_modify = false
	ls_modret = ""
  choose case i
	  case 1
	  ls_property = "alignment"
      ls_modret = dw_1.modify("Compute_test.alignment = '0'")
	  case 2
		ls_property = "band"
      ls_ret = dw_1.describe('Compute_test.band')
	  case 3
		ls_property = "border"
      ls_modret = dw_1.modify('Compute_test.border = 0')
	  case 4
		ls_property = "color"
      ls_modret = dw_1.modify("Compute_test.color = 33554432")
	  case 5
		ls_property = "coltype"
      ls_ret = dw_1.describe('Compute_test.coltype')
	  case 6
		ls_property = "expression"
      ls_ret = dw_1.describe("Compute_test.expression")
	  case 7
		ls_property = "format"
      ls_ret = dw_1.describe('Compute_test.format')
	  case 8
		ls_property = "height"
      ls_modret = dw_1.modify('Compute_test.height=88')
	  case 9
		ls_property = "moveable"
      ls_ret = dw_1.describe('Compute_test.moveable')
	  case 10
		ls_property = "name"
      ls_ret = dw_1.describe("Compute_test.name")
	  case 11
		ls_property = "resizeable"
      ls_ret = dw_1.describe('Compute_test.resizeable')
	  case 12
		ls_property = "type"
      ls_ret = dw_1.describe('Compute_test.type')
	  case 13
		ls_property = "visible"
      ls_ret = dw_1.describe('Compute_test.visible')
	  case 14
		ls_property = "width"
      ls_modret = dw_1.modify('Compute_test.width= 823')
	  case 15
		ls_property = "x"
      ls_modret = dw_1.modify('Compute_test.x = 18')
	  case 16
		ls_property = "y"
      ls_modret = dw_1.modify('Compute_test.y = 8')
	  case 17
		ls_property = "background.color"
      ls_modret = dw_1.modify('Compute_test.background.color = 134217737')
	  case 18
		ls_property = "font.charset"
      ls_ret = dw_1.describe('Compute_test.font.charset')
	  case 19
		ls_property = "font.face"
      ls_modret = dw_1.modify('Compute_test.font.face = "'+'Arial'+'"')
	  case 20
		ls_property = "font.family"
      ls_ret = dw_1.describe('Compute_test.font.family')
	  case 21
		ls_property = "font.height"
      ls_modret = dw_1.modify('Compute_test.font.height = -9')
	  case 22
		ls_property = "font.pitch"
      ls_ret = dw_1.describe('Compute_test.font.pitch')
	  case 23
		ls_property = "font.weight"
      ls_modret = dw_1.modify('Compute_test.font.weight = 400')
	  //case 24
		//ls_property = "Multiline"
      //ls_ret = dw_1.describe('Compute_test.Multiline')
	  case 25
		ls_property = "tag"
        ls_modret = dw_1.modify('Compute_test.tag = "tag"')
	  case 26
		ls_property = "coltype"
      ls_ret = dw_1.describe('Compute_test.coltype')
	  case 27
		ls_property = "font.italic"
        ls_modret = dw_1.modify('Compute_test.font.italic = yes')
	  case 28
		ls_property = "Font.Strikethrough"
      ls_modret = dw_1.modify('Compute_test.Font.Strikethrough = no')
	  //case 29
		//ls_property = "Font.Underline"
        //ls_ret = dw_1.describe('Compute_test.Font.Underline = no')

		
	  case else
		exit
  end choose
  
      ls_dexp = "Compute_test." + ls_property
  		if ls_modret<>"" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if
		
  choose case i
				case 1
					ls_ret = dw_1.describe('Compute_test.alignment')
					lb_modify = true
				case 3
					ls_ret = dw_1.describe('Compute_test.border')
					lb_modify = true	
				case 4
					ls_ret = dw_1.describe('Compute_test.color')
					lb_modify = true	
				case 8
					ls_ret = dw_1.describe('Compute_test.height')
					lb_modify = true	
				case 14
					ls_ret = dw_1.describe('Compute_test.width')
					lb_modify = true	
				case 15
					ls_ret = dw_1.describe('Compute_test.x')
					lb_modify = true	
				case 16
					ls_ret = dw_1.describe('Compute_test.y')
					lb_modify = true	
				case 17
					ls_ret = dw_1.describe('Compute_test.background.color')
					lb_modify = true	
				case 19
					ls_ret = dw_1.describe('Compute_test.font.face')
					lb_modify = true	
				case 21
					ls_ret = dw_1.describe('Compute_test.font.height')
					lb_modify = true
				case 23
					ls_ret = dw_1.describe('Compute_test.font.weight')
					lb_modify = true
				case 25
				    ls_ret = dw_1.describe('Compute_test.tag')
					lb_modify = true
				case 27
					ls_ret = dw_1.describe('Compute_test.font.italic')
					lb_modify = true
				case 28
				    ls_ret = dw_1.describe('Compute_test.Font.Strikethrough')
					lb_modify = true
				case 29
					ls_ret = dw_1.describe('Compute_test.Font.Underline')
					lb_modify = true

  end choose
  
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
	if lb_modify then
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,0,1,:ls_ret,:ls_ret);
	end if
	
else
	
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  
 choose case lb_modify
	case true
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
end if
next

commit;

end subroutine

public subroutine wf_column_const ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Column"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds   

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

for i = 1 to 106
	lb_modify = false
	ls_modret = ""
  choose case i   
	  case 1
		ls_property = "dddw.name"
      ls_modret = dw_1.modify("#1.dddw.name = 'd_child'")
	  case 2
		ls_property = "ddlb.sorted"
      ls_modret = dw_1.modify('#6.ddlb.sorted = "no"')
	  case 3
		ls_property = "editmask.readonly"
      ls_modret = dw_1.modify('#7.editmask.readonly = no')
	  case 4
		ls_property = "checkbox.on"
      ls_modret = dw_1.modify("#8.checkbox.on = 'Y'")
	  case 5
		ls_property = "radiobuttons.3d"
      ls_ret = dw_1.describe('#9.radiobuttons.3d')
	  case 6
		ls_property = "edit.password"
      ls_modret = dw_1.modify("#2.edit.password = no")
	  case 7
		ls_property = "alignment"
      ls_modret = dw_1.modify('column_test.alignment = 1')
	  case 8
		ls_property = "band"
      ls_ret = dw_1.describe('column_test.band')
	  case 9
		ls_property = "border"
      ls_modret = dw_1.modify('column_test.border = 5')
	  case 10
		ls_property = "checkbox.lefttext"
		ls_dexp = "column_checkbox." + ls_property
      ls_ret = dw_1.describe("column_checkbox.checkbox.lefttext")
	  case 11
		ls_property = "checkbox.on"
		ls_dexp = "column_checkbox." + ls_property
      ls_modret = dw_1.modify('column_checkbox.checkbox.on = "Y"')
	  case 12
		ls_property = "checkbox.threed"
		ls_dexp = "column_checkbox." + ls_property
      ls_ret = dw_1.describe('column_checkbox.checkbox.threed')
	  case 13
		ls_property = "coltype"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.coltype')
	  case 14
		ls_property = "checkbox.3d"
   	ls_dexp = "column_checkbox." + ls_property
      ls_ret = dw_1.describe('column_checkbox.checkbox.3d')
	  case 15
		ls_property = "checkbox.off"
   	ls_dexp = "column_checkbox." + ls_property
      ls_modret = dw_1.modify('column_checkbox.checkbox.off = "N"')
	  case 16
		ls_property = "checkbox.text"
		ls_dexp = "column_checkbox." + ls_property
      ls_modret = dw_1.modify('column_checkbox.checkbox.text = ""')
	  case 17
		ls_property = "color"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('Column_test.color = 33554432')
	  case 18
		ls_property = "dbname"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.dbname')
	  case 19
		ls_property = "dddw.allowedit"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.allowedit = yes')
	  case 20
		ls_property = "dddw.autohscroll"
		ls_dexp = "column_dddw." + ls_property
      ls_ret = dw_1.describe('column_dddw.dddw.autohscroll')
	  case 21
		ls_property = "dddw.autoretrieve"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.autoretrieve = yes')
	  case 22
		//ls_property = "dddw.case"
		//ls_dexp = "column_dddw." + ls_property
      //ls_ret = dw_1.describe('column_dddw.dddw.case')
	  case 23
		ls_property = "dddw.datacolumn"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.datacolumn = "dept_id"')
	  case 24
		ls_property = "dddw.displaycolumn"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.displaycolumn = "dept_name"')
	  case 25
		//ls_property = "dddw.hscrollbar"
		//ls_dexp = "column_dddw." + ls_property
      //ls_ret = dw_1.describe('column_dddw.dddw.hscrollbar = "yes!"')
	  case 26
		ls_property = "dddw.limit"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.limit= 0')
	  case 27
		ls_property = "dddw.lines"
		ls_dexp = "column_dddw." + ls_property
      ls_ret = dw_1.describe('column_dddw.dddw.lines')
	  case 28
		ls_property = "dddw.name"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.name = "d_child"')
	  case 29
		ls_property = "dddw.nilisnull"
		ls_dexp = "column_dddw." + ls_property
      ls_ret = dw_1.describe('column_dddw.dddw.nilisnull')
	  case 30
		ls_property = "dddw.percentwidth"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.percentwidth = 500')
	  case 31
		ls_property = "dddw.required"
		ls_dexp = "column_dddw." + ls_property
      ls_modret = dw_1.modify('column_dddw.dddw.required = yes')
	  case 32
		//ls_property = "dddw.showlist"
		//ls_dexp = "column_dddw." + ls_property
      //ls_ret = dw_1.describe('column_dddw.dddw.showlist')
	  case 33
		ls_property = "dddw.useasborder"
		ls_dexp = "column_dddw." + ls_property
      ls_ret = dw_1.describe('column_dddw.dddw.useasborder')
	  case 34
		ls_property = "dddw.vscrollbar"
		ls_dexp = "column_dddw." + ls_property
      ls_ret = dw_1.describe('column_dddw.dddw.vscrollbar')
	  case 35
		ls_property = "ddlb.allowedit"
		ls_dexp = "column_ddlb." + ls_property
      ls_ret = dw_1.describe('column_ddlb.ddlb.allowedit')
	  case 36
		ls_property = "ddlb.autohscroll"
		ls_dexp = "column_ddlb." + ls_property
      ls_ret = dw_1.describe('column_ddlb.ddlb.autohscroll')
	  case 37
		//ls_property = "ddlb.case"
		//ls_dexp = "column_ddlb." + ls_property
      //ls_ret = dw_1.describe('column_ddlb.ddlb.case')
	  case 38
		ls_property = "ddlb.limit"
		ls_dexp = "column_ddlb." + ls_property
      ls_modret = dw_1.modify('column_ddlb.ddlb.limit = 0')
	  case 39
		ls_property = "ddlb.nilisnull"
		ls_dexp = "column_ddlb." + ls_property
      ls_modret = dw_1.modify('column_ddlb.ddlb.nilisnull = no')
	  case 40
		ls_property = "ddlb.required"
		ls_dexp = "column_ddlb." + ls_property
      ls_modret = dw_1.modify('column_ddlb.ddlb.required = yes')
	  case 41
		ls_property = "ddlb.showlist"
		ls_dexp = "column_ddlb." + ls_property
      ls_ret = dw_1.describe('column_ddlb.ddlb.showlist')
	  case 42
		ls_property = "ddlb.sorted"
		ls_dexp = "column_ddlb." + ls_property
      ls_modret = dw_1.modify('column_ddlb.ddlb.sorted = no')
	  case 43
		//ls_property = "ddlb.useasborder"
		//ls_dexp = "column_ddlb." + ls_property
      //ls_ret = dw_1.describe('column_ddlb.ddlb.useasborder')
	  case 44
		ls_property = "ddlb.vscrollbar"
		ls_dexp = "column_ddlb." + ls_property
      ls_ret = dw_1.describe('column_ddlb.ddlb.vscrollbar')
	  case 45
		ls_property = "edit.autohscroll"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.autohscroll')
	  case 46
		ls_property = "edit.autoselect"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.autoselect')
	  case 47
		ls_property = "edit.autovscroll"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.autovscroll')
//	  case 48
		//ls_property = "edit.case"
		//ls_dexp = "column_test." + ls_property
      //ls_modret = dw_1.modify('column_test.edit.case = any')
	  case 49
		ls_property = "edit.displayonly"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.edit.displayonly = no')
	  case 50
		ls_property = "edit.focusrectangle"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.focusrectangle')
	  case 51
		ls_property = "edit.hscrollbar"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.hscrollbar')
	  case 52
		ls_property = "edit.limit"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.edit.limit = 0')
	  case 53
		ls_property = "edit.nilisnull"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.nilisnull')
	  case 54
		ls_property = "edit.password"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.edit.password = no')
	  case 55
		ls_property = "edit.required"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.edit.required = yes')
	  case 56
		ls_property = "edit.style"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.style')
	  case 57
		ls_property = "edit.vscrollbar"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.vscrollbar')
	  case 58
		ls_property = "edit.autohscroll"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.edit.autohscroll')
//	  case 59
//		ls_property = "editmask.autoskip"
//		ls_dexp = "column_editmask." + ls_property
//      ls_ret = dw_1.describe('column_editmask.editmask.autoskip')
	  case 60
		ls_property = "editmask.mask"
		ls_dexp = "column_editmask." + ls_property
      ls_ret = dw_1.describe('column_editmask.editmask.mask')
	  case 61
		ls_property = "editmask.readonly"
		ls_dexp = "column_editmask." + ls_property
      ls_modret = dw_1.modify('column_editmask.editmask.readonly = no')
	  case 62
		ls_property = "editmask.required"
		ls_dexp = "column_editmask." + ls_property
      ls_modret = dw_1.modify('column_editmask.editmask.required = yes')
	  case 63
		ls_property = "editmask.spin"
		ls_dexp = "column_editmask." + ls_property
      ls_ret = dw_1.describe('column_editmask.editmask.spin')
	  case 64
		ls_property = "editmask.spinincr"
		ls_dexp = "column_editmask." + ls_property
      ls_ret = dw_1.describe('column_editmask.editmask.spinincr')
	  case 65
		ls_property = "editmask.spinrange"
		ls_dexp = "column_editmask." + ls_property
      ls_ret = dw_1.describe('column_editmask.editmask.spinrange')
	  case 66
		ls_property = "editmask.useformat"
		ls_dexp = "column_editmask." + ls_property
      ls_ret = dw_1.describe('column_editmask.editmask.useformat')
	  case 67
		ls_property = "format"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.format')
	  case 68
		ls_property = "height"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.height = 60')
	  case 69
		ls_property = "id"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.id')
	  case 70
		ls_property = "identity"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.identity = no')
	  case 71
		ls_property = "initial"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.initial = "null"')
	  case 72
		ls_property = "key"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.key = yes')
	  case 73
		ls_property = "moveable"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.moveable')
	  case 74
		ls_property = "name"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.name')
	  case 75
		ls_property = "protect"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.protect = 0')
	  case 76
		ls_property = "radiobuttons.3d"
		ls_dexp = "column_radiobuttons." + ls_property
      ls_ret = dw_1.describe('column_radiobuttons.radiobuttons.3d')
	  case 77
		ls_property = "radiobuttons.lefttext"
		ls_dexp = "column_radiobuttons." + ls_property
      ls_ret = dw_1.describe('column_radiobuttons.radiobuttons.lefttext')
	  case 78
		ls_property = "radiobuttons.threed"
		ls_dexp = "column_radiobuttons." + ls_property
      ls_ret = dw_1.describe('column_radiobuttons.radiobuttons.threed')
	  case 79
		ls_property = "resizeable"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.resizeable')
	  case 80
		ls_property = "tabsequence"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.tabsequence = 20')
	  case 81
		ls_property = "type"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.type')
	  case 82
		ls_property = "update"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.update = yes')
	  case 83
		ls_property = "updatewhereclause"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.updatewhereclause= yes')
	  case 84
		ls_property = "visible"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.visible = 1')
	  case 85
		ls_property = "width"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.width = 302')
	  case 86
		ls_property = "x"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.x = 343')
	  case 87
		ls_property = "y"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.y = 12')
	  case 88
		ls_property = "background.color"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.background.color = 134217737')
	  case 89
		ls_property = "font.charset"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.font.charset')
	  case 90
		ls_property = "font.family"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.font.family')
	  case 91
		ls_property = "font.height"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.font.height = -9')
	  case 92
		ls_property = "font.pitch"
		ls_dexp = "column_test." + ls_property
      ls_ret = dw_1.describe('column_test.font.pitch')
	  case 93
		ls_property = "font.weight"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.font.weight = 400')
	  case 94
		ls_property = "font.face"
		ls_dexp = "column_test." + ls_property
      ls_modret = dw_1.modify('column_test.font.face = "Arial"')
	  case 95
		ls_property = "column_checkbox.edit.style"
		ls_dexp = ls_property
      ls_ret = dw_1.describe('column_checkbox.edit.style')
	  case 96
		ls_property = "column_editmask.edit.style"
		ls_dexp = ls_property
      ls_ret = dw_1.describe('column_editmask.edit.style')
	  case 97
		ls_dexp =  ls_property
		ls_property = "column_ddlb.edit.style"
      ls_ret = dw_1.describe('column_ddlb.edit.style')
	  case 98
		ls_property = "column_dddw.edit.style"
		ls_dexp = ls_property
      ls_ret = dw_1.describe('column_dddw.edit.style')
	  case 99
		ls_property = "column_test.Multiline"
		ls_dexp = ls_property
      ls_ret = dw_1.describe('column_test.Multiline')
	  case 100
		ls_property = "column_test.pointer"
		ls_dexp = ls_property
      ls_ret = dw_1.describe('column_test.pointer')
	  case 101
		ls_property = "column_test.Tag"
		ls_dexp = ls_property
      ls_modret = dw_1.modify('column_test.Tag ="tag"')
	  case 102
		ls_property = "column_test.Font.Face"
		ls_dexp = ls_property
      ls_modret = dw_1.modify('column_test.Font.Face = "face"')
	  case 103
		ls_property = "column_test.Font.Italic"
		ls_dexp = ls_property
      ls_modret = dw_1.modify('column_test.Font.Italic = yes')
	  case 104
		ls_property = "column_test.Font.Strikethrough"
		ls_dexp = ls_property
      ls_modret = dw_1.modify('column_test.Font.Strikethrough = no')
	  case 105
		ls_property = "column_test.Font.Underline"
		ls_dexp = ls_property
      ls_modret = dw_1.modify('column_test.Font.Underline= no')
	  case 106
		ls_property = "column_radiobuttons.RadioButtons.Columns"
		ls_dexp = ls_property
      ls_ret = dw_1.describe('column_radiobuttons.RadioButtons.Columns')


	  case else
		exit
  end choose
  

  		if ls_modret<>"" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if
		
  choose case i
				case 1
					ls_ret = dw_1.describe('#1.dddw.name')
					lb_modify = true
				case 2
					ls_ret = dw_1.describe('#6.ddlb.sorted')
					lb_modify = true	
				case 3
					ls_ret = dw_1.describe('#7.editmask.readonly')
					lb_modify = true	
				case 4
					ls_ret = dw_1.describe('#8.checkbox.on')
					lb_modify = true	
				case 6
					ls_ret = dw_1.describe('#2.edit.password')
					lb_modify = true	
				case 7
					ls_ret = dw_1.describe('column_test.alignment')
					lb_modify = true	
				case 9
					ls_ret = dw_1.describe('column_test.border')
					lb_modify = true	
				case 11
					ls_ret = dw_1.describe('column_checkbox.checkbox.on')
					lb_modify = true	
				case 15
					ls_ret = dw_1.describe('column_checkbox.checkbox.off')
					lb_modify = true	
				case 16
					ls_ret = dw_1.describe('column_checkbox.checkbox.text')
					lb_modify = true
				case 17
					ls_ret = dw_1.describe('Column_test.color')
					lb_modify = true
				case 19
					ls_ret = dw_1.describe('column_dddw.dddw.allowedit')
					lb_modify = true
				case 21
				   ls_ret = dw_1.describe('column_dddw.dddw.autoretrieve')
					lb_modify = true
				case 23
					ls_ret = dw_1.describe('column_dddw.dddw.datacolumn')
					lb_modify = true
				case 24
					ls_ret = dw_1.describe('column_dddw.dddw.displaycolumn')
					lb_modify = true
				case 26
					ls_ret = dw_1.describe('column_dddw.dddw.limit')
					lb_modify = true
				case 28
					ls_ret = dw_1.describe('column_dddw.dddw.name')
					lb_modify = true
				case 30
					ls_ret = dw_1.describe('column_dddw.dddw.percentwidth')
					lb_modify = true
				case 31
					ls_ret = dw_1.describe('column_dddw.dddw.required')
					lb_modify = true
				case 38
					ls_ret = dw_1.describe('column_ddlb.ddlb.limit')
					lb_modify = true
				case 39
					ls_ret = dw_1.describe('column_ddlb.ddlb.nilisnull')
					lb_modify = true
				case 40
					ls_ret = dw_1.describe('column_ddlb.ddlb.required')
					lb_modify = true
				case 42
					ls_ret = dw_1.describe('column_ddlb.ddlb.sorted')
					lb_modify = true
				case 48
					ls_ret = dw_1.describe('column_test.edit.case')
					lb_modify = true
				case 49
					ls_ret = dw_1.describe('column_test.edit.displayonly')
					lb_modify = true
				case 52
					ls_ret = dw_1.describe('column_test.edit.limit')
					lb_modify = true
				case 54
					ls_ret = dw_1.describe('column_test.edit.password')
					lb_modify = true
				case 55
					ls_ret = dw_1.describe('column_test.edit.required')
					lb_modify = true
				case 61
					ls_ret = dw_1.describe('column_editmask.editmask.readonly')
					lb_modify = true
				case 62
					ls_ret = dw_1.describe('column_editmask.editmask.required')
					lb_modify = true
				case 68
					ls_ret = dw_1.describe('column_test.height')
					lb_modify = true
				case 70
					ls_ret = dw_1.describe('column_test.identity')
					lb_modify = true
				case 71
					ls_ret = dw_1.describe('column_test.initial')
					lb_modify = true
				case 72
					ls_ret = dw_1.describe('column_test.key')
					lb_modify = true
				case 75
					ls_ret = dw_1.describe('column_test.protect')
					lb_modify = true
				case 80
					ls_ret = dw_1.describe('column_test.tabsequence')
					lb_modify = true
				case 82
					ls_ret = dw_1.describe('column_test.update')
					lb_modify = true
				case 83
					ls_ret = dw_1.describe('column_test.updatewhereclause')
					lb_modify = true
				case 84
					ls_ret = dw_1.describe('column_test.visible')
					lb_modify = true
				case 85
					ls_ret = dw_1.describe('column_test.width')
					lb_modify = true
				case 86
					ls_ret = dw_1.describe('column_test.x')
					lb_modify = true
				case 87
					ls_ret = dw_1.describe('column_test.y')
					lb_modify = true
				case 88
					ls_ret = dw_1.describe('column_test.background.color')
					lb_modify = true
				case 91
					ls_ret = dw_1.describe('column_test.font.height')
					lb_modify = true
				case 93
					ls_ret = dw_1.describe('column_test.font.weight')
					lb_modify = true
				case 94
					ls_ret = dw_1.describe('column_test.font.face')
					lb_modify = true
				case 101
					ls_ret = dw_1.describe('column_test.Tag')
					lb_modify = true
				case 102
					ls_ret = dw_1.describe('column_test.Font.Face')
					lb_modify = true
				case 103
					ls_ret = dw_1.describe('column_test.Font.Italic')
					lb_modify = true
				case 104
					ls_ret = dw_1.describe('column_test.Font.Strikethrough')
					lb_modify = true
				case 105
					ls_ret = dw_1.describe('column_test.Font.Underline')
					lb_modify = true

  end choose
  
  
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
	if lb_modify then
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,0,1,:ls_ret,:ls_ret);
	end if
	
else
	
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")

 choose case lb_modify
	case true
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
end if
next

commit;

end subroutine

public subroutine wf_datawindow_multi ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Multi"
string ls_str1_js,ls_str2_js,ls_str3_js
string ls_str1_pb,ls_str2_pb,ls_str3_pb
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

ls_property = "Datawindow-header.height header.color readonly"
ls_dexp = "Datawindow.header.height = 92 Datawindow.header.color = 536870912 Datawindow.readonly = no"
ls_modret = dw_1.modify("Datawindow.header.height = 92 Datawindow.header.color = 536870912 Datawindow.readonly = no")

if ls_modret<>"" then
ls_message = "Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
wf_additem(ls_message)
return
end if

ls_ret = dw_1.describe("Datawindow.header.height Datawindow.header.color Datawindow.readonly")
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
  ls_str1_js = mid(ls_ret,1,2)

  ls_str2_js = mid(ls_ret,3,9)

  ls_str3_js = mid(ls_ret,12,2)


  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  ls_str1_pb = mid(ls_modifyvalue,1,2)

  ls_str2_pb = mid(ls_modifyvalue,3,9)

  ls_str3_pb = mid(ls_modifyvalue,12,2)
  

//  if ls_str3_js = ls_str3_pb then messagebox("","hello")
  
  if ls_str1_js = ls_str1_pb and ls_str2_js = ls_str2_pb and ls_str3_js = ls_str3_pb then

		ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
end if
end subroutine

public subroutine wf_column_multi ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Multi"
string ls_str1_js,ls_str2_js,ls_str3_js
string ls_str1_pb,ls_str2_pb,ls_str3_pb
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

ls_property = "Column-color dddw.limit ddlb.nilisnull"
ls_dexp = "column_test.color = 33554433 column_dddw.dddw.limit = 0 column_ddlb.ddlb.nilisnull = no"
ls_modret = dw_1.modify("column_test.color = 33554433 column_dddw.dddw.limit = 0 column_ddlb.ddlb.nilisnull = no")

if ls_modret<>"" then
ls_message = "Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
wf_additem(ls_message)
return
end if
		
ls_ret = dw_1.describe("column_test.color column_dddw.dddw.limit column_ddlb.ddlb.nilisnull")
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
else
	
  ls_str1_js = mid(ls_ret,1,8)

  ls_str2_js = mid(ls_ret,9,1)

  ls_str3_js = mid(ls_ret,10,2)


  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  ls_str1_pb = mid(ls_modifyvalue,1,8)

  ls_str2_pb = mid(ls_modifyvalue,9,1)

  ls_str3_pb = mid(ls_modifyvalue,10,2)
  

  
  if ls_str1_js = ls_str1_pb and ls_str2_js = ls_str2_pb and ls_str3_js = ls_str3_pb then

		ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
end if

end subroutine

public subroutine wf_text_multi ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Multi"
string ls_str1_js,ls_str2_js,ls_str3_js
string ls_str1_pb,ls_str2_pb,ls_str3_pb
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

ls_property = "Text-text visible x"
ls_dexp = "Text_test.text = 'text1' Text_test.visible = 1 Text_test.x = 878"
ls_modret = dw_1.modify("Text_test.text = 'text1' Text_test.visible = 1 Text_test.x = 2136")

if ls_modret<>"" then
ls_message = "Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
wf_additem(ls_message)
return
end if
		
//   ls_ret = dw_1.describe("Text_test.text Text_test.visible Text_test.x")
ls_ret = dw_1.describe("Text_test.text Text_test.visible Text_test.x")
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
  ls_str1_js = mid(ls_ret,1,5)

  ls_str2_js = mid(ls_ret,6,1)

  ls_str3_js = mid(ls_ret,7,3)


  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  ls_str1_pb = mid(ls_modifyvalue,1,5)

  ls_str2_pb = mid(ls_modifyvalue,6,1)

  ls_str3_pb = mid(ls_modifyvalue,7,3)

  
  if ls_str1_js = ls_str1_pb and ls_str2_js = ls_str2_pb and ls_str3_js = ls_str3_pb then

		ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
end if
end subroutine

public subroutine wf_computefield_multi ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Multi"
string ls_str1_js,ls_str2_js,ls_str3_js
string ls_str1_pb,ls_str2_pb,ls_str3_pb
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

ls_property = "Compute-color height x"
ls_dexp = "compute_test.color = 33554433 compute_test.height = 99 compute_test.x = 19"
ls_modret = dw_1.modify("compute_test.color = 33554433 compute_test.height = 99 compute_test.x = 19")

if ls_modret<>"" then
ls_message = "Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
wf_additem(ls_message)
return
end if
		
//   ls_ret = dw_1.describe("Text_test.text Text_test.visible Text_test.x")
ls_ret = dw_1.describe("compute_test.color compute_test.height compute_test.x")
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
  ls_str1_js = mid(ls_ret,1,8)

  ls_str2_js = mid(ls_ret,9,2)

  ls_str3_js = mid(ls_ret,11,3)


  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  ls_str1_pb = mid(ls_modifyvalue,1,8)

  ls_str2_pb = mid(ls_modifyvalue,9,2)

  ls_str3_pb = mid(ls_modifyvalue,11,3)

  
  if ls_str1_js = ls_str1_pb and ls_str2_js = ls_str2_pb and ls_str3_js = ls_str3_pb then

		ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
        wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
end if

end subroutine

public subroutine wf_button_multi ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Multi"
string ls_str1_js,ls_str2_js,ls_str3_js
string ls_str1_pb,ls_str2_pb,ls_str3_pb
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()

ls_property = "Button-text visible x"
ls_dexp = "button_test.text = 'text1' button_test.visible = 1 button_test.x = 878"
ls_modret = dw_1.modify("button_test.text = 'text1' button_test.visible = 1 button_test.x = 878")

if ls_modret<>"" then
ls_message = "Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
wf_additem(ls_message)
return
end if
		

  ls_ret = dw_1.describe("button_test.text button_test.visible button_test.x")
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
  ls_str1_js = mid(ls_ret,1,5)

  ls_str2_js = mid(ls_ret,6,1)

  ls_str3_js = mid(ls_ret,7,3)


  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  ls_str1_pb = mid(ls_modifyvalue,1,5)

  ls_str2_pb = mid(ls_modifyvalue,6,1)

  ls_str3_pb = mid(ls_modifyvalue,7,3)
  

  
  if ls_str1_js = ls_str1_pb and ls_str2_js = ls_str2_pb and ls_str3_js = ls_str3_pb then

		ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
end if
commit;
end subroutine

public subroutine wf_mix_multi ();string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Multi"
string ls_str1_js,ls_str2_js,ls_str3_js
string ls_str1_pb,ls_str2_pb,ls_str3_pb
string ls_temp1,ls_temp2,ls_temp3
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds    
  
lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)   
ll_rowcount=lds.rowcount()
for i = 1 to 4
choose case i
	case 1
   ls_property = "Mix1" 
   ls_dexp = "button_test.text = 'text1' column_test.color = 33554433 Text_test.x = 878"
   ls_modret = dw_1.modify("button_test.text = 'text1' column_test.color = 33554433 Text_test.x = 878")
   case 2
   ls_property = "Mix2"
	ls_temp1 = "text"
	ls_temp2 = "color"
	ls_temp3 = "x"
   ls_dexp = "button_test."+ls_temp1+" = 'text1' column_test."+ls_temp2 +"= 33554433 Text_test."+ls_temp3+" = 878"
   ls_modret = dw_1.modify("button_test."+ls_temp1+" = 'text1' column_test."+ls_temp2 +"= 33554433 Text_test."+ls_temp3+" = 878")
   case 3
   ls_property = "Mix3"
	ls_temp1 = "button_test"
	ls_temp2 = "column_test"
	ls_temp3 = "Text_test"
   ls_dexp = ls_temp1 + ".text = 'text1' "+ls_temp2+".color = 33554433 "+ls_temp3 + ".x = 878"
   ls_modret = dw_1.modify(ls_temp1 + ".text = 'text1' "+ls_temp2+".color = 33554433 "+ls_temp3 + ".x = 878")
   case 4
	ls_property = "Mix4"
	ls_temp1 = "text1"
	ls_temp2 = "33554433"
	ls_temp3 = "878"
   ls_dexp = "button_test.text = '"+ls_temp1+"' column_test.color = "+ls_temp2+" Text_test.x = "+ls_temp3
   ls_modret = dw_1.modify("button_test.text = '"+ls_temp1+"' column_test.color = "+ls_temp2+" Text_test.x = "+ls_temp3)
 case else
	exit
end choose

   if ls_modret<>"" then
   ls_message = "Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
   wf_additem(ls_message)
   return
   end if
	
choose case i
	case 1
   ls_ret = dw_1.describe("button_test.text column_test.color Text_test.x")
	case 2
	ls_ret = dw_1.describe("button_test."+ls_temp1+" column_test."+ls_temp2 +" Text_test."+ls_temp3)
	case 3
   ls_ret = dw_1.describe(ls_temp1 + ".text "+ls_temp2+".color "+ls_temp3 + ".x")
	case 4
	ls_ret = dw_1.describe("button_test.text column_test.color Text_test.x")
end choose
if cbx_7.checked then
	delete from dwattribute_const
	where objectname =:ls_object and attribute=:ls_property;
	insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
	values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);

else
  ls_str1_js = mid(ls_ret,1,5)
  ls_str2_js = mid(ls_ret,6,8)
  ls_str3_js = mid(ls_ret,14,3)


  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  ls_str1_pb = mid(ls_modifyvalue,1,5)
  ls_str2_pb = mid(ls_modifyvalue,6,8)
  ls_str3_pb = mid(ls_modifyvalue,14,3)
    
  if ls_str1_js = ls_str1_pb and ls_str2_js = ls_str2_pb and ls_str3_js = ls_str3_pb then

		ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
end if
next

  commit;

end subroutine

public subroutine wf_message (string as_operate, string as_problem);
string ls_message[]


lb_1.additem("[±àºÅ]  Modify and Describe Test ver2 " + string(ii_number,"000"))
ii_number++
 
lb_1.additem("[ÈÕÆÚ]" + string(today(),"yyyyÄêmmÔÂddÈÕ"))


lb_1.additem("[Á´½Ó]"+gs_link)

lb_1.additem("[ÎÊÌâ]"+''+as_problem+'')

lb_1.additem("[Ó°Ïì³Ì¶È]"+"¡ï¡ï¡ï¡ï¡ï")

lb_1.additem("[²Ù×÷]"+'click "Integration Test"->"Modify and Describe Test ver2"')

lb_1.additem("[²Ù×÷]"+'"'+as_operate+'"')

lb_1.additem("[Êä³ö]"+"")

//lb_1.additem("½á¹û"+"¶Ô±È"+"²Ù×÷"+"·µ»ØÖµ»ò½á¹û")
//f_outputtext(dw_output+ls_message)
end subroutine

on w_integration_case_modify_ver2.create
this.cb_dot=create cb_dot
this.dw_2=create dw_2
this.cb_1=create cb_1
this.cb_6=create cb_6
this.cbx_1=create cbx_1
this.cb_5=create cb_5
this.cb_3=create cb_3
this.cb_18=create cb_18
this.dw_output=create dw_output
this.st_error=create st_error
this.st_4=create st_4
this.lb_testitems=create lb_testitems
this.cbx_right=create cbx_right
this.cb_rsize=create cb_rsize
this.cbx_7=create cbx_7
this.cb_2=create cb_2
this.cb_4=create cb_4
this.cb_13=create cb_13
this.cb_10=create cb_10
this.cb_8=create cb_8
this.lb_1=create lb_1
this.dw_1=create dw_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.gb_1=create gb_1
this.gb_4=create gb_4
this.Control[]={this.cb_dot,&
this.dw_2,&
this.cb_1,&
this.cb_6,&
this.cbx_1,&
this.cb_5,&
this.cb_3,&
this.cb_18,&
this.dw_output,&
this.st_error,&
this.st_4,&
this.lb_testitems,&
this.cbx_right,&
this.cb_rsize,&
this.cbx_7,&
this.cb_2,&
this.cb_4,&
this.cb_13,&
this.cb_10,&
this.cb_8,&
this.lb_1,&
this.dw_1,&
this.gb_2,&
this.gb_3,&
this.gb_1,&
this.gb_4}
end on

on w_integration_case_modify_ver2.destroy
destroy(this.cb_dot)
destroy(this.dw_2)
destroy(this.cb_1)
destroy(this.cb_6)
destroy(this.cbx_1)
destroy(this.cb_5)
destroy(this.cb_3)
destroy(this.cb_18)
destroy(this.dw_output)
destroy(this.st_error)
destroy(this.st_4)
destroy(this.lb_testitems)
destroy(this.cbx_right)
destroy(this.cb_rsize)
destroy(this.cbx_7)
destroy(this.cb_2)
destroy(this.cb_4)
destroy(this.cb_13)
destroy(this.cb_10)
destroy(this.cb_8)
destroy(this.lb_1)
destroy(this.dw_1)
destroy(this.gb_2)
destroy(this.gb_3)
destroy(this.gb_1)
destroy(this.gb_4)
end on

event open;wf_dwretrieve()
end event

type cb_dot from commandbutton within w_integration_case_modify_ver2
integer x = 2482
integer y = 172
integer width = 512
integer height = 88
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Dot Donation"
end type

event clicked;string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="Dot"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()
 wf_message(" Click: 'Dot Donation' button","")
for i = 1 to 20
	lb_modify = false  
	ls_modret = ""
  choose case i
	  case 1
	  ls_property = "dw_1.object.column_dddw"
      ls_ret = classname(dw_1.object.column_dddw)
	  case 2
	  ls_property = "dw_1.object.compute_test"
      ls_ret = classname(dw_1.object.compute_test)
      case 3
	  ls_property = "dw_1.object.datawindow.color"
      ls_ret = dw_1.object.datawindow.color	
      case 4
      ls_property = "dw_1.object.datawindow.ReadOnly"
      ls_ret = string(dw_1.object.datawindow.ReadOnly)
      case 5
      ls_property = "dw_1.object.datawindow.Name"
      ls_ret = string(dw_1.object.datawindow.Name)
      case 6
      ls_property = "dw_1.object.column_test.Band"
      ls_ret = string(dw_1.object.column_test.Band)
      case 7
      ls_property = "dw_1.object.column_test.TabSequence"
      ls_ret = string(dw_1.object.column_test.TabSequence)
      case 8
      ls_property = "dw_1.object.column_test.Font.Height"
      ls_ret = string(dw_1.object.column_test.Font.Height)
      case 9
      ls_property = "dw_1.object.compute_test.Alignment"
      ls_ret = string(dw_1.object.compute_test.Alignment)
      case 10
      ls_property = "dw_1.object.compute_test.Border"
      ls_ret = string(dw_1.object.compute_test.Border)
      case 11
      ls_property = "dw_1.object.compute_test.X"
      ls_ret = string(dw_1.object.compute_test.X)
      case 12
      ls_property = "dw_1.object.text_test.Alignment"
      ls_ret = string(dw_1.object.text_test.Alignment)
      case 13
      ls_property = "dw_1.object.text_test.X"
      ls_ret = string(dw_1.object.text_test.X)
      case 14
      ls_property = "dw_1.object.text_test.Font.Height"
      ls_ret = string(dw_1.object.text_test.Font.Height)
      case 15
      ls_property = "dw_1.object.button_test.Action"
      ls_ret = string(dw_1.object.button_test.Action)
      case 16
      ls_property = "dw_1.object.button_test.X"
      ls_ret = string(dw_1.object.button_test.X)
      case 17
      ls_property = "dw_1.object.button_test.Color"
      ls_ret = string(dw_1.object.button_test.Color)
      case 18
      ls_property = "dw_1.object.line_test.Name"
      ls_ret = string(dw_1.object.l_test.Name)
      case 19
      ls_property = "dw_1.object.line_test.Visible"
      ls_ret = string(dw_1.object.l_test.Visible)
      case 20
      ls_property = "dw_1.object.line_test.X1"
      ls_ret = string(dw_1.object.l_test.X1)
	  case else
		exit
  end choose
  
      ls_dexp = "Button_test." + ls_property
  		if ls_modret <> "" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if
  
if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
	if lb_modify then
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,0,1,:ls_ret,:ls_ret);
	end if
	
else
	
	
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  
 choose case lb_modify
	case true
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|Dot :"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
  end if 
next
commit;
end event

type dw_2 from datawindow within w_integration_case_modify_ver2
integer x = 78
integer y = 2152
integer width = 2441
integer height = 312
integer taborder = 110
string title = "none"
string dataobject = "d_column_style"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_integration_case_modify_ver2
integer x = 2482
integer y = 60
integer width = 512
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Property const"
end type

event clicked;string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="object"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()
wf_message(" Click: 'Property const' button","")
for i = 1 to 26
	lb_modify = false
	ls_modret = ""
  choose case i
	  case 1
	  ls_property = "Button_test.band"
      ls_ret = dw_1.describe("Button_test.band")
	  case 2
		ls_property = "column_ddlb.band"
      ls_ret = dw_1.describe('column_ddlb.band')
	  case 3
		ls_property = "compute_test.band"
      ls_ret = dw_1.describe('compute_test.band')
	  case 4
		ls_property = "compute_footer.band"
        ls_ret = dw_1.describe("compute_footer.band")
	  case 5
		ls_property = "column_dddw.type"
        ls_ret = dw_1.describe("column_dddw.type")
	  case 6
		ls_property = "compute_test.type"
      ls_ret = dw_1.describe('compute_test.type')
	  case 7
		ls_property = "text_test.type"
      ls_ret = dw_1.describe('text_test.type')
	  case 8
		ls_property = "button_test.type"
      ls_ret = dw_1.describe('button_test.type')
	  case 9
		ls_property = "l_test.type"
      ls_ret = dw_1.describe('l_test.type')
	  case 10
		ls_property = "column_datetime.coltype"
      ls_ret = dw_2.describe("column_datetime.coltype")
	  case 11
		ls_property = "column_date.coltype"
      ls_ret = dw_2.describe('column_date.coltype')
	  case 12
		ls_property = "column_time.coltype"
      ls_ret = dw_2.describe('column_time.coltype')
	  case 13
		ls_property = "column_number.coltype"
      ls_ret = dw_2.describe('column_number.coltype')
	  case 14
		ls_property = "column_long.coltype"
      ls_ret = dw_2.describe('column_long.coltype')
	  case 15
		ls_property = "column_ulong.coltype"
      ls_ret = dw_2.describe('column_ulong.coltype')
	  case 16
		ls_property = "column_real.coltype"
      ls_ret = dw_2.describe('column_real.coltype')
	  case 17
		ls_property = "column_decimal.coltype"
      ls_ret = dw_2.describe('column_decimal.coltype')
	  case 18
		ls_property = "column_dddw.edit.style"
        ls_ret = dw_1.describe('column_dddw.edit.style')
	  case 19
		ls_property = "column_test.edit.style"
        ls_ret = dw_1.describe('column_test.edit.style')
	  case 20
		ls_property = "column_ddlb.edit.style"
      ls_ret = dw_1.describe('column_ddlb.edit.style')
	  case 21
		ls_property = "column_editmask.edit.style"
      ls_ret = dw_1.describe('column_editmask.edit.style')
	  case 22
		ls_property = "column_radiobuttons.edit.style"
      ls_ret = dw_1.describe('column_radiobuttons.edit.style')
	  case 23
		ls_property = "column_checkbox.edit.style"
      ls_ret = dw_1.describe('column_checkbox.edit.style')
	  case 24
		ls_property = "column_ddlb.ddlb.case"
      ls_ret = dw_1.describe('column_ddlb.ddlb.case')
	  case 25
		ls_property = "column_dddw.ddlb.case"
        ls_ret = dw_1.describe('column_dddw.dddw.case')
	  case 26
		ls_property = "column_test.edit.case"
        ls_ret = dw_1.describe('column_test.edit.case')
	  case else
		exit
  end choose
  
      ls_dexp = "Button_test." + ls_property
  		if ls_modret<>"" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if

if cbx_7.checked then
	delete from dwattribute_const
			where objectname =:ls_object and attribute=:ls_property;
	if lb_modify then
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);
	else
		insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
		values(:ls_object,:ls_property,0,1,:ls_ret,:ls_ret);
	end if
	
else
	
	
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")
  
 choose case lb_modify
	case true
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message="Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
  end if 
next
commit;
end event

type cb_6 from commandbutton within w_integration_case_modify_ver2
integer x = 1518
integer y = 288
integer width = 891
integer height = 88
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Run_const_viarable"
end type

event clicked;string ls_property,ls_dexp,ls_ret,ls_modret
string ls_describevalue,ls_modifyvalue,ls_message
string ls_object="variable"
integer i,li_rowcount,li_row
long ll_rowcount,ll_row
boolean lb_modify
datastore lds

lds=create datastore
lds.dataobject="d_attribute_const"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
ll_rowcount=lds.rowcount()
//
wf_message(" Click: 'Run_const_viarable' button","")
for i = 1 to 4
	lb_modify = false
	ls_modret = ""
	choose case i
	case 1
		ls_property = "editmask.readonly"
		ls_modret = dw_1.modify("#7." + ls_property + " = no")
	case 2
		ls_property = "checkbox.on"
      string ls_temp2 = "#8"
      ls_modret = dw_1.modify(ls_temp2 + ".checkbox.on = 'Y'")
	  case 3
		ls_property = "alignment"
		string ls_temp3 = "column_test"
      ls_modret = dw_1.modify(ls_temp3 + ".alignment = 1")
	  case 4
		ls_property = "border"
      ls_modret = dw_1.modify('column_test.' + ls_property + '= 5')
	  case else
		exit
  end choose

  		if ls_modret<>"" then
			ls_message="Error|modify expression:"+ls_dexp + " Error message:"+ls_modret
			wf_additem(ls_message)
		continue
		end if

  choose case i
				case 1
					ls_ret = dw_1.describe("#7." + ls_property)
					lb_modify = true
				case 2
					ls_ret = dw_1.describe(ls_temp2+".checkbox.on")
					lb_modify = true	
				case 3
					ls_ret = dw_1.describe(ls_temp3+".alignment")
					lb_modify = true	
				case 4
					ls_ret = dw_1.describe("column_test." + ls_property)
					lb_modify = true	
  end choose
if cbx_7.checked then
	delete from dwattribute_const
	where objectname =:ls_object and attribute=:ls_property;
	insert dwattribute_const(objectname,attribute,ismodify,isdescribe,modifyvalue,describevalue)
	values(:ls_object,:ls_property,1,1,:ls_ret,:ls_ret);

else
  li_row = lds.find('attribute = "'+ ls_property + '"',1,ll_rowcount)
  ll_row = long(li_row)
  ls_describevalue = lds.getitemstring(ll_row,"describevalue")
  ls_modifyvalue = lds.getitemstring(ll_row,"modifyvalue")

 choose case lb_modify
	case true
		if (ls_ret = ls_modifyvalue) then	
			ls_message = "Right|modify and describe:"+ls_dexp+" return:"+ls_ret
		else
			ls_message = "Error|PB modify and describe:" + ls_dexp + " return:" + ls_modifyvalue
			wf_additem(ls_message)
			ls_message = "Error|JS modify and describe:"+ ls_dexp + " return:" +ls_ret
		end if
  wf_additem(ls_message)
	case false
  if (ls_ret = ls_describevalue) then
  		ls_message="Right|describe:"+ls_dexp+" return:"+ls_ret
  else
		ls_message="Error|PB describe:"+ls_dexp+" return:"+ls_describevalue
		wf_additem(ls_message)
		ls_message = "Error|JS describe:"+ls_dexp+" return:"+ls_ret
  end if
  wf_additem(ls_message)
 end choose
end if
next
commit;
end event

type cbx_1 from checkbox within w_integration_case_modify_ver2
integer x = 2185
integer y = 188
integer width = 210
integer height = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Mix"
end type

type cb_5 from commandbutton within w_integration_case_modify_ver2
integer x = 1518
integer y = 172
integer width = 608
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Multi_const_run"
end type

event clicked;integer li_ItemTotal, li_ItemCount
il_error_no=0
li_ItemTotal = lb_testitems.TotalItems( )

if cbx_1.checked = true then
	wf_mix_multi()
else
FOR li_ItemCount = 1 to li_ItemTotal
	
	if lb_testitems.State(li_ItemCount)=1 then
		wf_message('Select:'+lb_testitems.text(li_ItemCount)+" Click: 'Multi_const_run' button","")
		choose case li_ItemCount
			case 1
				wf_datawindow_multi()
			case 2
				wf_column_multi()
			case 3
				wf_text_multi()
			case 4
				wf_computefield_multi()
			case 5
				wf_button_multi()

		end choose
	end if		
NEXT


st_error.text=string(il_error_no)
end if
end event

type cb_3 from commandbutton within w_integration_case_modify_ver2
integer x = 1518
integer y = 60
integer width = 901
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "const_run"
end type

event clicked;integer li_ItemTotal, li_ItemCount
il_error_no=0
li_ItemTotal = lb_testitems.TotalItems( )


//il_pos=long(sle_position.text)
//il_counter=0
FOR li_ItemCount = 1 to li_ItemTotal
	
	if lb_testitems.State(li_ItemCount)=1 then
		wf_message('Select:'+lb_testitems.text(li_ItemCount)+" Click: 'const_run' button","")
		choose case li_ItemCount
			case 1
				wf_datawindow_const()
			case 2
				wf_column_const()
			case 3
				wf_text_const()
			case 4
				wf_computerfield_const()
			case 5
				wf_button_const()
//			case 6
//				wf_mutiexpression()
//			case 7
//				wf_multiexp(false)
		
		end choose
	end if
			

NEXT

st_error.text=string(il_error_no)

end event

type cb_18 from commandbutton within w_integration_case_modify_ver2
integer x = 3954
integer y = 192
integer width = 293
integer height = 128
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Save"
end type

event clicked;f_outputfile(lb_1,dw_output)
end event

type dw_output from datawindow within w_integration_case_modify_ver2
boolean visible = false
integer x = 2889
integer y = 1664
integer width = 686
integer height = 400
integer taborder = 100
string title = "none"
string dataobject = "d_dwtofile"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

type st_error from statictext within w_integration_case_modify_ver2
integer x = 4366
integer y = 376
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

type st_4 from statictext within w_integration_case_modify_ver2
integer x = 4110
integer y = 376
integer width = 219
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = " Error:"
boolean focusrectangle = false
end type

type lb_testitems from listbox within w_integration_case_modify_ver2
event ue_buttondown pbm_lbuttondown
integer x = 110
integer y = 64
integer width = 1390
integer height = 320
integer taborder = 30
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

ls_item[1]="DataWindow"
ls_item[2]="Column"
ls_item[3]="Text"
ls_item[4]="ComputerField"
ls_item[5]="Button"
//ls_item[6]="MutiExpression"
//ls_item[7]="MultiExpTest"
//ls_item[8]="FindRequired"
//ls_item[9]="FindRequired(edit)"
//ls_item[10]="RowsMove(copy)"


//ls_item[10]="button click"

for i=1 to UpperBound(ls_item)
	this.additem(string(i,"00")+" "+ls_Item[i])
next

end event

type cbx_right from checkbox within w_integration_case_modify_ver2
integer x = 4110
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

type cb_rsize from commandbutton within w_integration_case_modify_ver2
integer x = 3662
integer y = 192
integer width = 293
integer height = 128
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "max"
end type

event clicked;if this.text="max" then
	lb_1.x=dw_1.x
	lb_1.width=lb_1.width+dw_1.width+5
	this.text="min"
else
	lb_1.x=dw_1.x +dw_1.width +5
	lb_1.width =lb_1.width -dw_1.width -5
	this.text="max"
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

type cbx_7 from checkbox within w_integration_case_modify_ver2
integer x = 3282
integer y = 64
integer width = 366
integer height = 64
integer textsize = -8
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Run in PB"
end type

event clicked;//if this.checked =true then 
//	cb_8.visible	=true
//	cb_10.visible	=true
//
//else	
//	cb_8.visible	=false
//	cb_10.visible	=false
//
//	
//end if
end event

type cb_2 from commandbutton within w_integration_case_modify_ver2
integer x = 3369
integer y = 192
integer width = 293
integer height = 128
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Sort"
end type

event clicked;lb_1.sorted=true
end event

type cb_4 from commandbutton within w_integration_case_modify_ver2
integer x = 3077
integer y = 192
integer width = 293
integer height = 128
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Reset"
end type

event clicked;lb_1.reset()
end event

type cb_13 from commandbutton within w_integration_case_modify_ver2
integer x = 4247
integer y = 192
integer width = 293
integer height = 128
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "close"
end type

event clicked;string ls_str
ls_str="abc~""
ls_str="abc~'"
Close(parent)
end event

type cb_10 from commandbutton within w_integration_case_modify_ver2
boolean visible = false
integer x = 3877
integer y = 2336
integer width = 622
integer height = 96
integer taborder = 90
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "datawindow.data"
end type

event clicked;string ls_data
ls_data = dw_1.describe("datawindow.data")

update dwattribute set modifyvalue = :ls_data,describevalue = :ls_data 
	where id = 1558;


end event

type cb_8 from commandbutton within w_integration_case_modify_ver2
boolean visible = false
integer x = 2725
integer y = 2312
integer width = 622
integer height = 96
integer taborder = 90
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Default Value"
end type

event clicked;//f_dwdefaulvalue_ver2(dw_1)
//wf_multiexp(true)
//require modifyvalue ÒªÊÖ¹¤¸ÄÎªYes
end event

type lb_1 from listbox within w_integration_case_modify_ver2
integer x = 2633
integer y = 512
integer width = 1902
integer height = 1952
integer taborder = 20
integer textsize = -10
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

type dw_1 from datawindow within w_integration_case_modify_ver2
integer x = 73
integer y = 512
integer width = 2455
integer height = 1568
integer taborder = 10
string title = "none"
string dataobject = "d_integration_case_modify"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;integer li_ret,li_currow
string ls_ret
boolean lb_ret
string ls_message,ls_sql
//		<Interface param_number="0">GetClickedColumn</Interface>  

li_ret=dw_1.GetClickedColumn()
if not isnull(li_ret) then
	ls_message="Right|GetClickedColumn() return "+string(li_ret)
else
	ls_message="Error|GetClickedColumn() return null"
end if
lb_1.additem(ls_message)

//		<Interface param_number="0">GetClickedRow</Interface> 
li_ret=dw_1.GetClickedRow()
if not isnull(li_ret) then
	ls_message="Right|dw_1.GetClickedRow() return "+string(li_ret)
else
	ls_message="Error|dw_1.GetClickedRow() return null"
end if
lb_1.additem(ls_message)
end event

event itemfocuschanged;this.selectrow(0,false)
this.selectrow(row,true)
end event

type gb_2 from groupbox within w_integration_case_modify_ver2
integer x = 3054
integer width = 1522
integer height = 448
integer taborder = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
end type

type gb_3 from groupbox within w_integration_case_modify_ver2
integer x = 2597
integer y = 448
integer width = 1975
integer height = 2048
integer taborder = 110
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Result:"
end type

type gb_1 from groupbox within w_integration_case_modify_ver2
integer x = 27
integer width = 3008
integer height = 448
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
end type

type gb_4 from groupbox within w_integration_case_modify_ver2
integer x = 37
integer y = 448
integer width = 2523
integer height = 2048
integer taborder = 120
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datawindow Display:"
end type

