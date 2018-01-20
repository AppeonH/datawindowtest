$PBExportHeader$w_rowid.srw
forward
global type w_rowid from window
end type
type cb_1 from commandbutton within w_rowid
end type
type dw_1 from datawindow within w_rowid
end type
type cb_8 from commandbutton within w_rowid
end type
type cbx_2 from checkbox within w_rowid
end type
type dw_output from datawindow within w_rowid
end type
type cbx_1 from checkbox within w_rowid
end type
type cbx_right from checkbox within w_rowid
end type
type cb_run from commandbutton within w_rowid
end type
type lb_testitems from listbox within w_rowid
end type
type st_4 from statictext within w_rowid
end type
type st_error from statictext within w_rowid
end type
type cb_11 from commandbutton within w_rowid
end type
type cb_13 from commandbutton within w_rowid
end type
type cb_rsize from commandbutton within w_rowid
end type
type lb_1 from listbox within w_rowid
end type
type gb_4 from groupbox within w_rowid
end type
type gb_3 from groupbox within w_rowid
end type
type gb_1 from groupbox within w_rowid
end type
end forward

global type w_rowid from window
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
cb_1 cb_1
dw_1 dw_1
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
lb_1 lb_1
gb_4 gb_4
gb_3 gb_3
gb_1 gb_1
end type
global w_rowid w_rowid

type variables
int il_error_no
boolean ib_save	=	false
boolean ib_pb		=	false



end variables

forward prototypes
public subroutine wf_additem (string as_message)
public subroutine wf_output (any aa_ret, string as_text)
public subroutine wf_testitems (boolean ab_runonly)
public function string wf_getallid (datawindow adatawindow, dwbuffer adwbuffer)
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

public subroutine wf_testitems (boolean ab_runonly);int i
string ls_item[]
integer li_ItemTotal

if ab_runonly = false then
		
		ls_item[1]="DeleteRow"
		ls_item[2]="Insert delete reset"
		ls_item[3]="sort filter"
		ls_item[4]="rowsmove and copy"
		ls_item[5]="itemstatus"
		ls_item[6]="Update"

		
		for i=1 to UpperBound(ls_item)
			lb_testitems.additem(string(i,"00")+" "+ls_Item[i])
		next

else
		


		
		li_ItemTotal = lb_testitems.TotalItems( )
		
//		if ib_save then 
//			delete from nvo_record;
//			commit;
//		end if
		
		FOR i = 1 to li_ItemTotal
			
			if lb_testitems.State(i)=1 then
				
				choose case i
					case 1
//						wf_returnvalue()
//						wf_additem("")
//					case 2
//						wf_insertdelete()
//						wf_additem("")
//					case 3
//						wf_sortfilter()
//						wf_additem("")
//					case 4
//						wf_rowsmovecopy()
//						wf_additem("")
//					case 5
//						wf_itemstatus()
//						wf_additem("")
//					case 6
//						wf_update()
//						wf_additem("")
				end choose
			end if
					
		
		NEXT
		
		st_error.text=string(il_error_no)

end if
end subroutine

public function string wf_getallid (datawindow adatawindow, dwbuffer adwbuffer);int i
string ls_ret,ls_comma


for i = 1 to adatawindow.rowcount()
	ls_ret=ls_ret+ls_comma+string(adatawindow.GetRowIdFromRow(i,adwbuffer))
	ls_comma=","
next
	


return ls_ret
	
end function

on w_rowid.create
this.cb_1=create cb_1
this.dw_1=create dw_1
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
this.lb_1=create lb_1
this.gb_4=create gb_4
this.gb_3=create gb_3
this.gb_1=create gb_1
this.Control[]={this.cb_1,&
this.dw_1,&
this.cb_8,&
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
this.lb_1,&
this.gb_4,&
this.gb_3,&
this.gb_1}
end on

on w_rowid.destroy
destroy(this.cb_1)
destroy(this.dw_1)
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
destroy(this.lb_1)
destroy(this.gb_4)
destroy(this.gb_3)
destroy(this.gb_1)
end on

type cb_1 from commandbutton within w_rowid
integer x = 1682
integer y = 352
integer width = 402
integer height = 84
integer taborder = 50
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "none"
end type

event clicked;string ls_allid
ls_allid=wf_getallid(dw_1,primary!)
messagebox("",ls_allid)

//if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐÇ°³õÊ¼Öµ
//	ls_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
//	
//	delete from functions where test=:ls_testname and function=:ls_fun_name;
//
//	insert into functions(test,function,arguments)
//	values(:ls_testname,:ls_fun_name,:ls_argument);
//	
//end if		
//
//
//ls_ret=string(dw_1.FindRequired(primary!,ll_row,li_colnbr,ls_colname,lb_updateonly))
//ls_return_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)
//
//
//
//if ai_save_flag=1 then//±£´æº¯ÊýÔËÐÐºóµÄÖµ
//	
//	Update functions set return_value =:ls_ret,return_arguments=:ls_return_argument where test=:ls_testname and function=:ls_fun_name;
//
//else	//±È½Ï
//	
//	select return_value,arguments,return_arguments into :ls_ret_pb,:ls_argument,:ls_return_argument from functions where test=:ls_testname and function=:ls_fun_name;
//
//
//	if ls_ret=ls_ret_pb and ls_return_argument="primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly) then
//		
//		ls_message="Right|"+ls_testname+"["+ls_argument+"]"+"return:"+ls_ret+"("+ls_return_argument+")"
//	else
//		ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" pb return:"+ls_ret_pb+"("+ls_return_argument+")"
//		wf_additem(ls_message)
//		ls_message="Error|"+ls_testname+"["+ls_argument+"]"+" js return:"+ls_ret+"("+"primary!,"+string(ll_row)+","+string(li_colnbr)+","+ls_colname+","+string(lb_updateonly)+")"
//	end if
//	wf_additem(ls_message)
//
//end if
end event

type dw_1 from datawindow within w_rowid
integer x = 110
integer y = 480
integer width = 2487
integer height = 1888
integer taborder = 40
string title = "none"
string dataobject = "d_all_datatype_grid"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

type cb_8 from commandbutton within w_rowid
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

type cbx_2 from checkbox within w_rowid
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

type dw_output from datawindow within w_rowid
boolean visible = false
integer x = 695
integer y = 704
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

type cbx_1 from checkbox within w_rowid
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

	ib_save=true
else

	ib_save=false
end if


end event

type cbx_right from checkbox within w_rowid
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

type cb_run from commandbutton within w_rowid
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

event clicked;wf_testitems(true)

end event

type lb_testitems from listbox within w_rowid
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

event constructor;wf_testitems(false)
end event

type st_4 from statictext within w_rowid
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

type st_error from statictext within w_rowid
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

type cb_11 from commandbutton within w_rowid
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

type cb_13 from commandbutton within w_rowid
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

type cb_rsize from commandbutton within w_rowid
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
	lb_1.x=dw_1.x
	lb_1.width=lb_1.width+dw_1.width+10
	this.text="min"

else
	lb_1.x=dw_1.x +dw_1.width +10
	lb_1.width =lb_1.width -dw_1.width -10
	this.text="max"
	
end if



end event

type lb_1 from listbox within w_rowid
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

type gb_4 from groupbox within w_rowid
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

type gb_3 from groupbox within w_rowid
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

type gb_1 from groupbox within w_rowid
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

