$PBExportHeader$w_eventseq.srw
forward
global type w_eventseq from window
end type
type cb_autorun from commandbutton within w_eventseq
end type
type cbx_showright from checkbox within w_eventseq
end type
type st_message from statictext within w_eventseq
end type
type cbx_1 from checkbox within w_eventseq
end type
type lb_testitems from listbox within w_eventseq
end type
type cb_run from commandbutton within w_eventseq
end type
type cb_saveas from commandbutton within w_eventseq
end type
type cb_3 from commandbutton within w_eventseq
end type
type cbx_right from checkbox within w_eventseq
end type
type cb_max from commandbutton within w_eventseq
end type
type cb_1 from commandbutton within w_eventseq
end type
type cb_sort from commandbutton within w_eventseq
end type
type cb_reset from commandbutton within w_eventseq
end type
type dw_1 from datawindow within w_eventseq
end type
type dw_output from datawindow within w_eventseq
end type
type gb_1 from groupbox within w_eventseq
end type
type gb_2 from groupbox within w_eventseq
end type
type gb_3 from groupbox within w_eventseq
end type
type gb_4 from groupbox within w_eventseq
end type
end forward

global type w_eventseq from window
integer width = 4695
integer height = 2820
boolean titlebar = true
string title = "w_eventseq"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_autorun cb_autorun
cbx_showright cbx_showright
st_message st_message
cbx_1 cbx_1
lb_testitems lb_testitems
cb_run cb_run
cb_saveas cb_saveas
cb_3 cb_3
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
end type
global w_eventseq w_eventseq

type variables
int ii_ItemFocusChanged
int ii_RowFocusChanging
int ii_RowFocusChanged
int ii_ItemChanged
int ii_EditChanged
int ii_GetFocus
int ii_LoseFocus,ii_number = 1
int ii_Constructor,ii_error = 0,ii_rightnumber = 0,ii_errornumber = 0

end variables

forward prototypes
public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type)
public function string wf_arraytostring (readonly str_dataexppart astr_value[])
public function string wf_arraytostring (readonly any aa_value[])
public function string wf_arraytostring (readonly str_dataexpall astr_value[])
public subroutine wf_runorsave (boolean ab_save, string as_value, integer ai_flag)
public subroutine wf_message (string as_operate, string as_problem)
public function integer wf_returnerror ()
end prototypes

event ue_autorun();
cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
//cb_error.TriggerEvent(clicked!)
cb_saveas.TriggerEvent(clicked!)
cbx_right.checked = true

end event

public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type);string ls_message[]

ls_message[]= {"Right","JS",as_OriValue,as_type}
if as_OriValue = as_CurValue then
	if cbx_right.checked then
		ii_rightnumber++
		f_outputtext(dw_output,ls_message)
	end if
else
	ii_error++
	ii_errornumber++
	ls_message[1] = 'Error'
	ls_message[2] = 'PB'
	f_outputtext(dw_output,ls_message)
	ls_message[2] = 'JS'
	ls_message[3] = as_CurValue
	f_outputtext(dw_output,ls_message)
end if
st_message.text = "Error:" + string(ii_error)
end subroutine

public function string wf_arraytostring (readonly str_dataexppart astr_value[]);long ll_count,ll_i
string ls_value

ll_count = UpperBound(astr_value[])

for ll_i = 1 to ll_count
	if IsNull(astr_value[ll_i].salary) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].salary)
	end if
	
	if IsNull(astr_value[ll_i].start_date) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].start_date)
	end if
	
	if IsNull(astr_value[ll_i].mytime) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].mytime)
	end if
	
next
return ls_value
end function

public function string wf_arraytostring (readonly any aa_value[]);long ll_count,ll_i
string ls_value

ll_count = UpperBound(aa_value[])

for ll_i = 1 to ll_count
	if IsNull(aa_value[ll_i]) then
		ls_value += 'null'
	else
		ls_value += string(aa_value[ll_i])
	end if
next
return ls_value
end function

public function string wf_arraytostring (readonly str_dataexpall astr_value[]);long ll_count,ll_i
string ls_value

ll_count = UpperBound(astr_value[])

for ll_i = 1 to ll_count
	if IsNull(astr_value[ll_i].emp_id) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].emp_id)
	end if
	
	if IsNull(astr_value[ll_i].salary) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].salary)
	end if
	
	if IsNull(astr_value[ll_i].start_date) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].start_date)
	end if
	
	if IsNull(astr_value[ll_i].mytime) then
		ls_value += 'null'
	else
		ls_value += string(astr_value[ll_i].mytime)
	end if
	
next
return ls_value
end function

public subroutine wf_runorsave (boolean ab_save, string as_value, integer ai_flag);string ls_flag = 'eventseq'
string ls_OldResult,ls_result
long ll_i

choose case ai_flag
	case 4001
		//"Set DataObject"
		dw_1.DataObject = 'd_eventseq'
	case 4002
		//"Retrieve"
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
	case 4003
		//"Changed DataObject and Retrieve"
		dw_1.Dataobject = 'd_eventseq'
		dw_1.SetTransObject(sqlca)
		dw_1.Retrieve()
	case 4004
		//"Reset and InsertRow"
		dw_1.Reset()
		dw_1.InsertRow(0)
	case 4005
		//"InsertRow"
		dw_1.Retrieve()
		dw_1.InsertRow(1)
	case 4006
		//"DeleteRow"
		dw_1.Retrieve()
		dw_1.DeleteRow(1)
	case 4007
		//"Delete All row"
		//dw_1.Retrieve()
		//for ll_i = dw_1.RowCount() to 1 step -1
		//	dw_1.DeleteRow(ll_i)
		//next
	case 4008
		//"SetRow()"
		dw_1.Retrieve()
		dw_1.SetRow(2)
		dw_1.SetRow(1)
	case 4009
		//"SetColumn()"
		dw_1.Setcolumn(1)
		dw_1.Setcolumn(3)
	case 4010
		//"SetItem()"
		dw_1.SetItem(1,1,200)
		dw_1.SetItem(1,2,'test')
end choose

ls_result = "ItemFocusChanged:"+string(ii_ItemFocusChanged) + &
					",RowFocusChanging"+string(ii_RowFocusChanging) + &
					",RowFocusChanged"+string(ii_RowFocusChanged) + &
					",ItemChanged"+string(ii_ItemChanged) + &
					",EditChanged"+string(ii_EditChanged) + &
					",GetFocus"+string(ii_GetFocus) + &
					",LoseFocus"+string(ii_LoseFocus) + &
					",Constructor"+string(ii_Constructor)
					
//±£´æÊý¾Ý
if ab_save then
				
	Delete exp_fun where value = :as_value and row = :ai_flag and flag = :ls_flag;
	insert into exp_fun(value,result,row,flag) values(:as_value,:ls_result,:ai_flag,:ls_flag);
	
//±È½ÏÊý¾Ý
else
	select result into :ls_OldResult from exp_fun where flag = :ls_flag and row = :ai_flag and value = :as_value;
	if (sqlca.sqlcode = 100 or sqlca.sqlcode < 0 ) then ls_oldresult = 'error'
	wf_output(ls_oldresult,ls_result,as_value)
end if

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
ls_message[]={'[±àºÅ]','','EventSeq '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"sharedata"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public function integer wf_returnerror ();return ii_error
end function

on w_eventseq.create
this.cb_autorun=create cb_autorun
this.cbx_showright=create cbx_showright
this.st_message=create st_message
this.cbx_1=create cbx_1
this.lb_testitems=create lb_testitems
this.cb_run=create cb_run
this.cb_saveas=create cb_saveas
this.cb_3=create cb_3
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
this.Control[]={this.cb_autorun,&
this.cbx_showright,&
this.st_message,&
this.cbx_1,&
this.lb_testitems,&
this.cb_run,&
this.cb_saveas,&
this.cb_3,&
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
this.gb_4}
end on

on w_eventseq.destroy
destroy(this.cb_autorun)
destroy(this.cbx_showright)
destroy(this.st_message)
destroy(this.cbx_1)
destroy(this.lb_testitems)
destroy(this.cb_run)
destroy(this.cb_saveas)
destroy(this.cb_3)
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
end on

type cb_autorun from commandbutton within w_eventseq
integer x = 2405
integer y = 304
integer width = 233
integer height = 84
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "AutoRun"
end type

event clicked;int li_itemcount
cbx_showright.checked = false
cbx_right.checked = false
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
cbx_showright.checked = true
cbx_right.checked = true
end event

type cbx_showright from checkbox within w_eventseq
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

type st_message from statictext within w_eventseq
integer x = 4146
integer y = 352
integer width = 402
integer height = 48
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
long bordercolor = 255
boolean focusrectangle = false
end type

type cbx_1 from checkbox within w_eventseq
integer x = 2423
integer y = 48
integer width = 210
integer height = 72
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
	lb_testitems.Height=500
	lb_testitems.BringToTop = TRUE
else
	lb_testitems.Height=336
end if
end event

type lb_testitems from listbox within w_eventseq
integer x = 73
integer y = 52
integer width = 2336
integer height = 336
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
borderstyle borderstyle = stylelowered!
end type

event constructor;int i
string ls_item[]

ls_item[1]="Set DataObject"
ls_item[2]="Retrieve"
ls_item[3]="Changed DataObject and Retrieve"
ls_item[4]="Reset and InsertRow"
ls_item[5]="InsertRow"
ls_item[6]="DeleteRow"
ls_item[7]="Delete All row"
ls_item[8] ="SetRow()"
ls_item[9] ="SetColumn()"
ls_item[10] ="SetItem()"


for i=1 to UpperBound(ls_item)
	this.additem(string(i,"00")+" "+ls_Item[i])
next

end event

event doubleclicked;cb_run.event clicked()
end event

type cb_run from commandbutton within w_eventseq
integer x = 2423
integer y = 124
integer width = 210
integer height = 88
integer taborder = 100
integer textsize = -9
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Run"
end type

event clicked;integer li_ItemTotal, li_ItemCount,li_rowcount
string ls_item

//Reset count
ii_ItemFocusChanged = 0
ii_RowFocusChanging = 0
ii_RowFocusChanged = 0
ii_ItemChanged = 0
ii_EditChanged = 0
ii_GetFocus = 0
ii_LoseFocus = 0
ii_Constructor = 0

li_ItemTotal = lb_testitems.TotalItems( )
ii_number = 1
FOR li_ItemCount = 1 to li_ItemTotal
	ls_item = lb_TestItems.Text(li_ItemCount)	
	if lb_testitems.State(li_ItemCount)=1 then
		ii_errornumber = 0
		li_rowcount = dw_output.rowcount()
		
		wf_message(ls_item,"EventSeq")
		wf_RunOrSave(false,ls_item,4000+li_ItemCount)
		
		//add for autorun
		if ii_errornumber = 0 and not(cbx_right.checked) then
		//if long(dw_output.object.t_errornumber.text) = 0 and not(cbx_right.checked) then		
			dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + long(dw_output.object.t_rightnumber.text) + 10,primary!)
		end if
		
	end if

NEXT


end event

type cb_saveas from commandbutton within w_eventseq
integer x = 4073
integer y = 248
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

event clicked;int	li_ret



string ls_docname, ls_named

string  ls_sql


boolean lb_exist
////±£´æ
//li_ret = dw_output.Update()
//
//IF li_ret = 1 AND SQLCA.SQLNRows > 0 THEN
//		COMMIT USING SQLCA;
//
//ELSE
//		ROLLBACK USING SQLCA;
//
//END IF


//GetFileSaveName("Select File",ls_docname, ls_named, "XLS", "Excel Files (*.XLS),*.XLS")
//
//lb_exist = FileExists(ls_docname)
//IF lb_exist THEN 
//	li_ret = MessageBox("Save", "OK to write over " + ls_docname, Question!, YesNo!)
//	
//	if li_ret <>1 then
//		return
//	end if
//end if

//dw_output.retrieve()

//li_ret=dw_output.SaveAs(ls_docname,Excel!,true)
//if li_ret=1 then
//	messagebox("Save","ok!")
//else
//	messagebox("Save","false!")
//end if
		

li_ret=dw_output.SaveAs("c:\output.txt",text!,true)
if li_ret<>1 then

	messagebox("Save","false!")
end if

//ls_sql="truncate table output"
//
//EXECUTE IMMEDIATE :ls_sql USING SQLCA ;






end event

type cb_3 from commandbutton within w_eventseq
integer x = 3803
integer y = 248
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
	dw_output.setfilter("#1='Error'")
	dw_output.filter()
	this.text="All"
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_eventseq
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

type cb_max from commandbutton within w_eventseq
integer x = 3534
integer y = 248
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

type cb_1 from commandbutton within w_eventseq
integer x = 2423
integer y = 212
integer width = 210
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
string ls_item

//Reset count
ii_ItemFocusChanged = 0
ii_RowFocusChanging = 0
ii_RowFocusChanged = 0
ii_ItemChanged = 0
ii_EditChanged = 0
ii_GetFocus = 0
ii_LoseFocus = 0
ii_Constructor = 0

li_ItemTotal = lb_testitems.TotalItems( )
//ii_number = 1
FOR li_ItemCount = 1 to li_ItemTotal
	ls_item = lb_TestItems.Text(li_ItemCount)	
	if lb_testitems.State(li_ItemCount)=1 then
		//wf_message(ls_item,"EventSeq")
		wf_RunOrSave(true,ls_item,4000+li_ItemCount)
	end if

NEXT


end event

type cb_sort from commandbutton within w_eventseq
integer x = 3264
integer y = 248
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

type cb_reset from commandbutton within w_eventseq
integer x = 2994
integer y = 248
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
end event

type dw_1 from datawindow within w_eventseq
integer x = 73
integer y = 480
integer width = 2560
integer height = 2016
integer taborder = 20
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;ii_Constructor++
end event

event editchanged;ii_EditChanged++
end event

event getfocus;ii_GetFocus++
end event

event itemchanged;ii_ItemChanged++
end event

event itemfocuschanged;ii_ItemFocusChanged++
end event

event losefocus;ii_LoseFocus++
end event

event rowfocuschanged;ii_RowfocusChanged++
end event

event rowfocuschanging;ii_RowFocusChanging++
end event

type dw_output from datawindow within w_eventseq
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

event constructor;settransobject(sqlca)
retrieve()
end event

type gb_1 from groupbox within w_eventseq
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

type gb_2 from groupbox within w_eventseq
integer x = 37
integer y = 416
integer width = 2629
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

type gb_3 from groupbox within w_eventseq
integer x = 32
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

type gb_4 from groupbox within w_eventseq
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

