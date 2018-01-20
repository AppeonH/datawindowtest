$PBExportHeader$w_querymode.srw
$PBExportComments$Datawindow Integration Test Case--Modify and Describe
forward
global type w_querymode from window
end type
type dw_2 from datawindow within w_querymode
end type
type mle_1 from multilineedit within w_querymode
end type
type cbx_1 from checkbox within w_querymode
end type
type ddlb_style from dropdownlistbox within w_querymode
end type
type cb_18 from commandbutton within w_querymode
end type
type dw_output from datawindow within w_querymode
end type
type st_error from statictext within w_querymode
end type
type st_4 from statictext within w_querymode
end type
type cb_1 from commandbutton within w_querymode
end type
type cb_run from commandbutton within w_querymode
end type
type lb_testitems from listbox within w_querymode
end type
type cbx_right from checkbox within w_querymode
end type
type cb_rsize from commandbutton within w_querymode
end type
type cbx_7 from checkbox within w_querymode
end type
type cb_2 from commandbutton within w_querymode
end type
type cb_4 from commandbutton within w_querymode
end type
type cb_13 from commandbutton within w_querymode
end type
type cb_11 from commandbutton within w_querymode
end type
type cb_10 from commandbutton within w_querymode
end type
type cb_8 from commandbutton within w_querymode
end type
type lb_1 from listbox within w_querymode
end type
type dw_1 from datawindow within w_querymode
end type
type gb_3 from groupbox within w_querymode
end type
type gb_1 from groupbox within w_querymode
end type
type gb_4 from groupbox within w_querymode
end type
type ln_1 from line within w_querymode
end type
type ln_2 from line within w_querymode
end type
end forward

global type w_querymode from window
integer width = 4658
integer height = 2576
boolean titlebar = true
string title = "Datawindow Integration Test Case--QueryMode"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_2 dw_2
mle_1 mle_1
cbx_1 cbx_1
ddlb_style ddlb_style
cb_18 cb_18
dw_output dw_output
st_error st_error
st_4 st_4
cb_1 cb_1
cb_run cb_run
lb_testitems lb_testitems
cbx_right cbx_right
cb_rsize cb_rsize
cbx_7 cbx_7
cb_2 cb_2
cb_4 cb_4
cb_13 cb_13
cb_11 cb_11
cb_10 cb_10
cb_8 cb_8
lb_1 lb_1
dw_1 dw_1
gb_3 gb_3
gb_1 gb_1
gb_4 gb_4
ln_1 ln_1
ln_2 ln_2
end type
global w_querymode w_querymode

type variables
int il_error_no
string is_sqlsyntax
end variables

forward prototypes
public subroutine wf_check_dwinitial ()
public subroutine wf_additem (string as_message)
public subroutine wf_datawindow ()
public subroutine wf_column ()
public subroutine wf_text ()
public subroutine wf_computerfield ()
public subroutine wf_button ()
public subroutine wf_mutiexpression ()
public subroutine wf_dwretrieve ()
public subroutine wf_multiexpparse ()
public subroutine wf_multiexp (boolean ab_save)
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

public subroutine wf_datawindow ();string ls_objectname,ls_attribute,ls_modifyvalue,ls_describevalue
integer li_ismodify,li_isdescribe,li_valuetype
int i,li_rowcount,li_ret,j
string ls_object="DataWindow",ls_ret,ls_message
string ls_mexp,ls_dexp,ls_dexp_arr[],ls_describevalue_arr[]
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
	
	if (li_ismodify = 1) then          //support modify
		if (ls_modifyvalue="!" or ls_modifyvalue="?") then continue
		if (li_valuetype =0) then
			ls_mexp=ls_objectname+"."+ls_attribute+"='"+ls_modifyvalue+"'"
		else
			ls_mexp=ls_objectname+"."+ls_attribute+"="+ls_modifyvalue
		end if
		ls_ret = dw_1.modify(ls_mexp)
		if ls_ret <> "" then
			ls_message="Error|modify expression:"+ls_mexp + " Error message:"+ls_ret
			wf_additem(ls_message)
			continue
		end if
		ls_dexp=ls_objectname+"."+ls_attribute
		ls_ret = dw_1.describe(ls_dexp)

		if (Trim(ls_ret) = Trim(ls_modifyvalue)) then			
			ls_message="Right|modify and describe:"+ls_mexp
		else
			ls_message="Error|PB modify and describe:"+ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ls_mexp
		end if
		wf_additem(ls_message)
	else
		if (li_isdescribe = 1) then//support describe
			ls_dexp = ls_objectname+"."+ls_attribute
			ls_ret=dw_1.describe(ls_dexp)
			
			if (ls_ret = ls_describevalue) then
				ls_message="Right|describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			else
				ls_message="Error|PB describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_describevalue
				wf_additem(ls_message)
				ls_message="Error|JS describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			end if
			wf_additem(ls_message)
			j++
			ls_dexp_arr[j]+=ls_dexp//±£´ædescribe±í´ïÊ½
			ls_describevalue_arr[j]+=ls_describevalue
			
		end if
	end if
next

//¶à±í´ïÊ½µ¥¶À×öÎªÒ»º¯Êý
//Describeº¯ÊýÖ§³Ö¶à±í´ï²âÊÔ
//²ÎÊý"~t"·Ö¸ô
ls_dexp=ls_dexp_arr[1]
ls_describevalue=ls_describevalue_arr[1]
for j=2 to UpperBound(ls_dexp_arr)
	if j=12 then
		//table.Argument·Ö¸ô²âÊÔ
		ls_ret=dw_1.describe(ls_dexp_arr[j])
		ls_dexp=""
		ls_dexp=f_get_token(ls_ret,"~r")
		ls_ret=dw_1.describe(ls_dexp_arr[j])
		ls_dexp=""
		ls_dexp=f_get_token(ls_ret,"~n")
		
	end if
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_dexp+="~t"+ls_dexp_arr[j]
	ls_describevalue+="~n"+ls_describevalue_arr[j]
next
	
ls_ret=dw_1.describe(ls_dexp)

if (ls_ret = ls_describevalue) then
	ls_message="Right|describe:all propertylist(exp1'+tab+'exp2...) "//return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+tab+'exp2...) "//return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+tab+'exp2...) "//return js:"+ls_ret
end if	

wf_additem(ls_message)

//²ÎÊý"~n"·Ö¸ô
ls_dexp = ls_dexp_arr[1]
ls_describevalue=ls_describevalue_arr[1]
for j=2 to UpperBound(ls_dexp_arr)
	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô
	ls_dexp+="~n"+ls_dexp_arr[j]
	ls_describevalue+="~n"+ls_describevalue_arr[j]
next

ls_ret=dw_1.describe(ls_dexp)

if (ls_ret = ls_describevalue) then
	ls_message="Right|describe:all propertylist(exp1'+newline+'exp2...) "//return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+newline+'exp2...) "//return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+newline+'exp2...) "//return js:"+ls_ret
end if

wf_additem(ls_message)

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
	ls_message="Right|describe:all propertylist(exp1'+space+'exp2...) "//return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+space+'exp2...) "//return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+space+'exp2...) "//return js:"+ls_ret
end if
wf_additem(ls_message)

//²ÎÊý ÒÔÉÏ·Ö¸ô»ìºÏ
ls_dexp=ls_dexp_arr[1]
ls_describevalue=ls_describevalue_arr[1]

ls_dexp+="~n"+ls_dexp_arr[2]
ls_dexp+="~t"+ls_dexp_arr[3]
ls_dexp+=" "+ls_dexp_arr[4]
for j=2 to 4//UpperBound(ls_dexp_arr)
//	if j=12 then continue //pb bug µÄtable.ArgumentÃ»ÓÐ"~n"·Ö¸ô

	ls_describevalue+="~n"+ls_describevalue_arr[j]
next
	
ls_ret=dw_1.describe(ls_dexp)


if (ls_ret = ls_describevalue) then
	ls_message="Right|describe:all propertylist(exp1'+all+'exp2...) "//return:"+ls_ret
else
	ls_message="Error|describe:all propertylist(exp1'+all+'exp2...) "//return pb:"+ls_describevalue
	wf_additem(ls_message)
	ls_message="Error|describe:all propertylist(exp1'+all+'exp2...) "//return js:"+ls_ret
end if
wf_additem(ls_message)
end subroutine

public subroutine wf_column ();string ls_objectname,ls_attribute,ls_modifyvalue,ls_describevalue
integer li_ismodify,li_isdescribe,li_valuetype
int i,li_rowcount,li_ret
string ls_object="Column",ls_ret,ls_message
string ls_mexp,ls_dexp
datastore lds

lds=create datastore
lds.dataobject="d_attribute"
lds.settransobject(sqlca)

lds.retrieve(ls_object)
li_rowcount=lds.rowcount()
for i=1 to li_rowcount
	ls_attribute=lds.object.attribute[i]
	//Ö»ÓÐµÚ¶þÁÐÊÇedit
	if pos(ls_attribute,"checkbox")>0 then
		ls_objectname="#8"
	elseif pos(ls_attribute,"radiobuttons")>0 then
		ls_objectname="#9"
	elseif pos(ls_attribute,"editmask")>0 then
		ls_objectname="#7"
	elseif pos(ls_attribute,"ddlb")>0 then
		ls_objectname="#6"
	elseif pos(ls_attribute,"dddw")>0 then
		ls_objectname="#1"
	else
		ls_objectname="#2"
	end if
	if pos(ls_attribute,"@")>0 then//edit.styleµ¥¶À´¦Àí
		ls_attribute="edit.style"
	end if
	
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
		
		ls_ret=dw_1.modify(ls_mexp)
		
		if ls_ret<>"" then
			ls_message="Error|modify expression:"+ls_mexp + " Error message:"+ls_ret
			wf_additem(ls_message)
			continue
		end if
		
		ls_dexp=ls_objectname+"."+ls_attribute
		
		ls_ret=dw_1.describe(ls_dexp)
		
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_mexp
		else
			ls_message="Error|PB modify and describe:"+ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ls_mexp
			
		end if
		
		wf_additem(ls_message)
	else
		if (li_isdescribe=1) then//support describe
			ls_dexp=ls_objectname+"."+ls_attribute
			ls_ret=dw_1.describe(ls_dexp)
			
			if (ls_ret = ls_describevalue) then
				ls_message="Right|describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			else
				ls_message="Error|PB describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_describevalue
				wf_additem(ls_message)
				ls_message="Error|JS describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			end if
			wf_additem(ls_message)
		end if
	end if
next

lb_1.additem("")

for i=1 to li_rowcount
	ls_attribute=lds.object.attribute[i]
	if pos(ls_attribute,"checkbox")>0 then
		ls_objectname="column_checkbox"
	elseif pos(ls_attribute,"radiobuttons")>0 then
		ls_objectname="column_radiobuttons"
	elseif pos(ls_attribute,"editmask")>0 then
		ls_objectname="column_editmask"
	elseif pos(ls_attribute,"ddlb")>0 then
		ls_objectname="column_ddlb"
	elseif pos(ls_attribute,"dddw")>0 then
		ls_objectname="column_dddw"
	else
		ls_objectname="column_test"
	end if
	
	if pos(ls_attribute,"@")>0 then//edit.styleµ¥¶À´¦Àí
		ls_attribute="edit.style"
	end if
	
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
		
		ls_ret=dw_1.modify(ls_mexp)
		
		if ls_ret<>"" then
			ls_message="Error|modify expression:"+ls_mexp + " Error message:"+ls_ret
			wf_additem(ls_message)
			continue
		end if
		
		ls_dexp=ls_objectname+"."+ls_attribute
		
		ls_ret=dw_1.describe(ls_dexp)
		
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_mexp
		else
			ls_message="Error|PB modify and describe:"+ls_mexp+" return:"+ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ls_mexp+" return:"+ls_ret
		end if
		
		wf_additem(ls_message)
	else
		if (li_isdescribe=1) then//support describe
			ls_dexp=ls_objectname+"."+ls_attribute
			ls_ret=dw_1.describe(ls_dexp)
			
			if (ls_ret = ls_describevalue) then
				ls_message="Right|describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			else
				ls_message="Error|PB describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_describevalue
				wf_additem(ls_message)
				ls_message="Error|JS describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			end if
			wf_additem(ls_message)
		end if
	end if
next


//check initial 
wf_check_dwinitial()
end subroutine

public subroutine wf_text ();string ls_objectname,ls_attribute,ls_modifyvalue,ls_describevalue
integer li_ismodify,li_isdescribe,li_valuetype
int i,li_rowcount,li_ret
string ls_object="Text",ls_ret,ls_message
string ls_mexp,ls_dexp
datastore lds

lds=create datastore
lds.dataobject="d_attribute"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
li_rowcount=lds.rowcount()
for i=1 to li_rowcount
	ls_objectname=lds.object.objectname[i]+"_test"
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
		ls_ret=dw_1.modify(ls_mexp)
		if ls_ret<>"" then
			ls_message="Error|modify expression:"+ls_mexp + " Error message:"+ls_ret
			wf_additem(ls_message)
			continue
		end if
		ls_dexp=ls_objectname+"."+ls_attribute
		ls_ret=dw_1.describe(ls_dexp)
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_mexp
		else
			ls_message="Error|PB modify and describe:"+ls_modifyvalue
			ls_message="Error|JS modify and describe:"+ls_mexp
			
			
		end if
		wf_additem(ls_message)
	else
		if (li_isdescribe=1) then//support describe
			ls_dexp=ls_objectname+"."+ls_attribute
			ls_ret=dw_1.describe(ls_dexp)
			if (ls_ret = ls_describevalue) then
				ls_message="Right|describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			else
				ls_message="Error|PB describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_describevalue
				ls_message="Error|JS describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			end if
			wf_additem(ls_message)
		end if
	end if
next

end subroutine

public subroutine wf_computerfield ();string ls_objectname,ls_attribute,ls_modifyvalue,ls_describevalue
integer li_ismodify,li_isdescribe,li_valuetype
int i,li_rowcount,li_ret
string ls_object="Compute",ls_ret,ls_message
string ls_mexp,ls_dexp
datastore lds

lds=create datastore
lds.dataobject="d_attribute"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
li_rowcount=lds.rowcount()
for i=1 to li_rowcount
	ls_objectname=lds.object.objectname[i]+"_test"
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
		ls_ret=dw_1.modify(ls_mexp)
		if ls_ret<>"" then
			ls_message="Error|modify expression:"+ls_mexp + " Error message:"+ls_ret
			wf_additem(ls_message)
			continue
		end if
		ls_dexp=ls_objectname+"."+ls_attribute
		ls_ret=dw_1.describe(ls_dexp)
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_mexp
		else
			ls_message="Error|PB modify and describe:"+ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ls_mexp
			
			
		end if
		wf_additem(ls_message)
	else
		if (li_isdescribe=1) then//support describe
			ls_dexp=ls_objectname+"."+ls_attribute
			ls_ret=dw_1.describe(ls_dexp)
			if (ls_ret = ls_describevalue) then
				ls_message="Right|describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			else
				ls_message="Error|PB describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_describevalue
				wf_additem(ls_message)
				ls_message="Error|JS describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			end if
			wf_additem(ls_message)
		end if
	end if
next

end subroutine

public subroutine wf_button ();string ls_objectname,ls_attribute,ls_modifyvalue,ls_describevalue
integer li_ismodify,li_isdescribe,li_valuetype
int i,li_rowcount,li_ret
string ls_object="Button",ls_ret,ls_message
string ls_mexp,ls_dexp
datastore lds

lds=create datastore
lds.dataobject="d_attribute"
lds.settransobject(sqlca)
lds.retrieve(ls_object)
li_rowcount=lds.rowcount()
for i=1 to li_rowcount
	ls_objectname=lds.object.objectname[i]+"_test"
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
		ls_ret=dw_1.modify(ls_mexp)
		if ls_ret<>"" then
			ls_message="Error|modify expression:"+ls_mexp + " Error message:"+ls_ret
			wf_additem(ls_message)
			continue
		end if
		ls_dexp=ls_objectname+"."+ls_attribute
		ls_ret=dw_1.describe(ls_dexp)
		if (ls_ret=ls_modifyvalue) then			
			ls_message="Right|modify and describe:"+ls_mexp
		else
			
			ls_message="Error|PB modify and describe:"+ls_modifyvalue
			wf_additem(ls_message)
			ls_message="Error|JS modify and describe:"+ls_mexp
			
			
		end if
		wf_additem(ls_message)
	else
		if (li_isdescribe=1) then//support describe
			ls_dexp=ls_objectname+"."+ls_attribute
			ls_ret=dw_1.describe(ls_dexp)
			if (ls_ret = ls_describevalue) then
				ls_message="Right|describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			else
				ls_message="Error|PB describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_describevalue
				wf_additem(ls_message)
				ls_message="Error|JS describe:"+ls_objectname+"."+ls_attribute+" return:"+ls_ret
			end if
			wf_additem(ls_message)
		end if
	end if
next

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
dw_1.retrieve()

dw_2.settransobject(sqlca)
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
			'emp_id.color = ~'33554432		if( mod( getrow(), 2 ) = 0, 255, 0 )~''

//"DataWindow.Table.select = ~"" + ls_sql + "~"	" + &
//ls_exp = "DataWindow.color = '255'	DataWindow.table.sort = '#1 D'	DataWindow.table.filter = ~"emp_id > 800~"  " + 'emp_id.color = ~'33554432		if( mod( getrow(), 2 ) = 0, 255, 0 )~'' 
dw_1.Modify(ls_exp)
String ls_setsql
ls_setsql = "DataWindow.Table.select = " + ls_sql
dw_1.Modify(ls_setsql)
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
	if Trim(ls_message) = Trim(ls_oldMessage) then
		wf_addItem("Right|MultiExp JS:"+ls_OldMessage)
	else
		wf_addItem("Error|MultiExp PB:"+ls_OldMessage)
		wf_addItem("Error|MultiExp JS:"+ls_Message)
	end if
end if

COMMIT;

dw_1.dataobject = "d_integration_case_modify"
wf_dwretrieve()
end subroutine

on w_querymode.create
this.dw_2=create dw_2
this.mle_1=create mle_1
this.cbx_1=create cbx_1
this.ddlb_style=create ddlb_style
this.cb_18=create cb_18
this.dw_output=create dw_output
this.st_error=create st_error
this.st_4=create st_4
this.cb_1=create cb_1
this.cb_run=create cb_run
this.lb_testitems=create lb_testitems
this.cbx_right=create cbx_right
this.cb_rsize=create cb_rsize
this.cbx_7=create cbx_7
this.cb_2=create cb_2
this.cb_4=create cb_4
this.cb_13=create cb_13
this.cb_11=create cb_11
this.cb_10=create cb_10
this.cb_8=create cb_8
this.lb_1=create lb_1
this.dw_1=create dw_1
this.gb_3=create gb_3
this.gb_1=create gb_1
this.gb_4=create gb_4
this.ln_1=create ln_1
this.ln_2=create ln_2
this.Control[]={this.dw_2,&
this.mle_1,&
this.cbx_1,&
this.ddlb_style,&
this.cb_18,&
this.dw_output,&
this.st_error,&
this.st_4,&
this.cb_1,&
this.cb_run,&
this.lb_testitems,&
this.cbx_right,&
this.cb_rsize,&
this.cbx_7,&
this.cb_2,&
this.cb_4,&
this.cb_13,&
this.cb_11,&
this.cb_10,&
this.cb_8,&
this.lb_1,&
this.dw_1,&
this.gb_3,&
this.gb_1,&
this.gb_4,&
this.ln_1,&
this.ln_2}
end on

on w_querymode.destroy
destroy(this.dw_2)
destroy(this.mle_1)
destroy(this.cbx_1)
destroy(this.ddlb_style)
destroy(this.cb_18)
destroy(this.dw_output)
destroy(this.st_error)
destroy(this.st_4)
destroy(this.cb_1)
destroy(this.cb_run)
destroy(this.lb_testitems)
destroy(this.cbx_right)
destroy(this.cb_rsize)
destroy(this.cbx_7)
destroy(this.cb_2)
destroy(this.cb_4)
destroy(this.cb_13)
destroy(this.cb_11)
destroy(this.cb_10)
destroy(this.cb_8)
destroy(this.lb_1)
destroy(this.dw_1)
destroy(this.gb_3)
destroy(this.gb_1)
destroy(this.gb_4)
destroy(this.ln_1)
destroy(this.ln_2)
end on

event open;wf_dwretrieve()
end event

type dw_2 from datawindow within w_querymode
integer x = 2642
integer y = 76
integer width = 1911
integer height = 788
integer taborder = 20
string title = "none"
string dataobject = "d_querymode_grid"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type mle_1 from multilineedit within w_querymode
integer x = 64
integer y = 1448
integer width = 2450
integer height = 452
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type cbx_1 from checkbox within w_querymode
integer x = 969
integer y = 2264
integer width = 361
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "QueryMode"
end type

event clicked;If This.Checked Then
	dw_1.Object.DataWindow.QueryMode = "Yes"	
Else
	dw_1.Object.DataWindow.QueryMode = "No"	
End If 
end event

type ddlb_style from dropdownlistbox within w_querymode
integer x = 585
integer y = 4
integer width = 334
integer height = 464
integer taborder = 120
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
string text = "Grid"
boolean sorted = false
string item[] = {"Grid","Freeform","Tabular","Label","Graph"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;CHOOSE CASE index
	CASE 1
		If dw_1.DataObject <> "d_querymode_grid" Then
			dw_1.DataObject = "d_querymode_grid"
		End If 
	CASE 2
		
	CASE 3
		
	CASE 4
		
	CASE 5
		
END CHOOSE

dw_1.SetTransObject(sqlca)
dw_1.Retrieve()
end event

type cb_18 from commandbutton within w_querymode
integer x = 3456
integer y = 2260
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

type dw_output from datawindow within w_querymode
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

type st_error from statictext within w_querymode
integer x = 4375
integer y = 1404
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

type st_4 from statictext within w_querymode
integer x = 4119
integer y = 1404
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

type cb_1 from commandbutton within w_querymode
integer x = 471
integer y = 2240
integer width = 379
integer height = 148
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "All"
end type

event clicked;il_error_no=0

wf_datawindow()
wf_column()
wf_text()
wf_computerfield()
wf_button()
wf_mutiexpression()
wf_multiexp(false)
st_error.text=string(il_error_no)
end event

type cb_run from commandbutton within w_querymode
integer x = 50
integer y = 2244
integer width = 379
integer height = 144
integer taborder = 110
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Run"
end type

event clicked;//integer li_ItemTotal, li_ItemCount
//il_error_no=0
//li_ItemTotal = lb_testitems.TotalItems( )
//
//
////il_pos=long(sle_position.text)
////il_counter=0
//FOR li_ItemCount = 1 to li_ItemTotal
//	
//	if lb_testitems.State(li_ItemCount)=1 then
//		
//		choose case li_ItemCount
//			case 1
//				wf_datawindow()
//			case 2
//				wf_column()
//			case 3
//				wf_text()
//			case 4
//				wf_computerfield()
//			case 5
//				wf_button()
//			case 6
//				wf_mutiexpression()
//			case 7
//				wf_multiexp(false)
//		
//		end choose
//	end if
dw_1.AcceptText()			
dw_1.Retrieve()

//NEXT

st_error.text=string(il_error_no)

end event

type lb_testitems from listbox within w_querymode
event ue_buttondown pbm_lbuttondown
integer x = 2624
integer y = 1408
integer width = 1248
integer height = 364
integer taborder = 30
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

ls_item[1]="General Function"
ls_item[2]="ItemStatus"
ls_item[3]="DataAccess"
ls_item[4]="GetItemValue"
ls_item[5]="Retrieve"
ls_item[6]="Event"
ls_item[7]="FindRequired"
ls_item[8]="Filter and Sort"

for i=1 to UpperBound(ls_item)
	this.additem(string(i,"00")+" "+ls_Item[i])
next

end event

type cbx_right from checkbox within w_querymode
integer x = 1929
integer y = 2268
integer width = 411
integer height = 64
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "output Right"
boolean checked = true
end type

type cb_rsize from commandbutton within w_querymode
integer x = 3163
integer y = 2260
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

type cbx_7 from checkbox within w_querymode
integer x = 1458
integer y = 2276
integer width = 366
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Run in PB"
end type

event clicked;if this.checked =true then 
	cb_8.visible	=true
	cb_10.visible	=true

else	
	cb_8.visible	=false
	cb_10.visible	=false

	
end if
end event

type cb_2 from commandbutton within w_querymode
integer x = 2871
integer y = 2260
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

type cb_4 from commandbutton within w_querymode
integer x = 2578
integer y = 2260
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
mle_1.text = ""
end event

type cb_13 from commandbutton within w_querymode
integer x = 3749
integer y = 2260
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

type cb_11 from commandbutton within w_querymode
boolean visible = false
integer x = 3365
integer y = 2336
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "none"
end type

event clicked;string a
//a=dw_1.describe("DataWindow.table.arguments")
//messagebox("",a)
//a=dw_1.describe("#2.edit.style")
a=dw_1.Object.#2.edit.style
a=dw_1.Object.DataWindow.table.arguments
messagebox("",a)
end event

type cb_10 from commandbutton within w_querymode
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

type cb_8 from commandbutton within w_querymode
boolean visible = false
integer x = 2706
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
string text = "Default Value"
end type

event clicked;f_dwdefaultvalue(dw_1)
wf_multiexp(true)
//require modifyvalue ÒªÊÖ¹¤¸ÄÎªYes
end event

type lb_1 from listbox within w_querymode
integer x = 2638
integer y = 880
integer width = 1920
integer height = 476
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

type dw_1 from datawindow within w_querymode
integer x = 64
integer y = 92
integer width = 2450
integer height = 1252
integer taborder = 10
string title = "none"
string dataobject = "d_querymode_grid"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;//integer li_ret,li_currow
//string ls_ret
//boolean lb_ret
//string ls_message,ls_sql
////		<Interface param_number="0">GetClickedColumn</Interface>  
//
//li_ret=dw_1.GetClickedColumn()
//if not isnull(li_ret) then
//	ls_message="Right|GetClickedColumn() return "+string(li_ret)
//else
//	ls_message="Error|GetClickedColumn() return null"
//end if
//lb_1.additem(ls_message)
//
////		<Interface param_number="0">GetClickedRow</Interface> 
//li_ret=dw_1.GetClickedRow()
//if not isnull(li_ret) then
//	ls_message="Right|dw_1.GetClickedRow() return "+string(li_ret)
//else
//	ls_message="Error|dw_1.GetClickedRow() return null"
//end if
//
//lb_1.additem(ls_message)

end event

event itemfocuschanged;this.selectrow(0,false)
this.selectrow(row,true)
end event

event sqlpreview;String ls_where
Long ll_pos

ll_pos = Pos(sqlsyntax,"where")
If ll_pos > 0 Then
	ls_where = Mid(sqlsyntax,ll_pos + 6)
	mle_1.Text = "Retrieve WHERE conditions = " + "~r~n" + ls_where+"~r~n"
End If 
end event

event retrieveend;long ll_dw1rwocount,ll_dw2rowcount,ll_index
If cbx_1.Checked Then
	is_sqlsyntax = This.GetSQLSelect()
	dw_2.SetSQLSelect(is_sqlsyntax)
	ll_dw2rowcount = dw_2.Retrieve()
End If 

ll_dw1rwocount = dw_1.RowCount()
If ll_dw1rwocount = ll_dw2rowcount Then
	ll_index=lb_1.additem("Right")
	lb_1.SetState ( ll_index, true)
End If 
end event

type gb_3 from groupbox within w_querymode
integer x = 2606
integer y = 12
integer width = 1975
integer height = 1368
integer taborder = 110
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Input conditions and result:"
end type

type gb_1 from groupbox within w_querymode
integer x = 27
integer y = 1380
integer width = 2523
integer height = 548
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "SQLSyntax:"
end type

type gb_4 from groupbox within w_querymode
integer x = 27
integer y = 12
integer width = 2523
integer height = 1368
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

type ln_1 from line within w_querymode
long linecolor = 33554432
integer linethickness = 4
integer beginx = 27
integer beginy = 2228
integer endx = 4599
integer endy = 2228
end type

type ln_2 from line within w_querymode
long linecolor = 16777215
integer linethickness = 4
integer beginx = 27
integer beginy = 2232
integer endx = 4599
integer endy = 2232
end type

