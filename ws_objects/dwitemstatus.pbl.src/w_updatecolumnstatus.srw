﻿$PBExportHeader$w_updatecolumnstatus.srw
forward
global type w_updatecolumnstatus from window
end type
type cb_autorun from commandbutton within w_updatecolumnstatus
end type
type st_error from statictext within w_updatecolumnstatus
end type
type dw_2 from datawindow within w_updatecolumnstatus
end type
type lb_testitems from listbox within w_updatecolumnstatus
end type
type cb_run from commandbutton within w_updatecolumnstatus
end type
type cb_saveas from commandbutton within w_updatecolumnstatus
end type
type cb_error from commandbutton within w_updatecolumnstatus
end type
type cbx_right from checkbox within w_updatecolumnstatus
end type
type cb_max from commandbutton within w_updatecolumnstatus
end type
type cb_1 from commandbutton within w_updatecolumnstatus
end type
type cb_sort from commandbutton within w_updatecolumnstatus
end type
type cb_reset from commandbutton within w_updatecolumnstatus
end type
type dw_1 from datawindow within w_updatecolumnstatus
end type
type dw_output from datawindow within w_updatecolumnstatus
end type
type gb_1 from groupbox within w_updatecolumnstatus
end type
type gb_2 from groupbox within w_updatecolumnstatus
end type
type gb_3 from groupbox within w_updatecolumnstatus
end type
type gb_4 from groupbox within w_updatecolumnstatus
end type
type gb_5 from groupbox within w_updatecolumnstatus
end type
end forward

global type w_updatecolumnstatus from window
integer width = 4658
integer height = 2724
boolean titlebar = true
string title = "DataWindow RowOrColumnStatus"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_autorun ( )
cb_autorun cb_autorun
st_error st_error
dw_2 dw_2
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
global w_updatecolumnstatus w_updatecolumnstatus

type variables
int ii_number = 1
end variables

forward prototypes
public subroutine wf_message (string as_operate, string as_problem)
public function integer wf_returnerror ()
end prototypes

event ue_autorun();cbx_right.checked = false
cb_autorun.TriggerEvent(clicked!)
cb_error.TriggerEvent(clicked!)
cb_saveas.TriggerEvent(clicked!)
cbx_right.checked = true
end event

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
ls_message[]={'[±àºÅ]','','UpdateColumnStatus '+string(ii_number,"000"),''}
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
ls_message[]= {"[²Ù×÷]","",'click "Test"->"UpdateColumnStatus"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

public function integer wf_returnerror ();return Integer(dw_output.Object.t_errorcount.Text)
end function

on w_updatecolumnstatus.create
this.cb_autorun=create cb_autorun
this.st_error=create st_error
this.dw_2=create dw_2
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
this.Control[]={this.cb_autorun,&
this.st_error,&
this.dw_2,&
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

on w_updatecolumnstatus.destroy
destroy(this.cb_autorun)
destroy(this.st_error)
destroy(this.dw_2)
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

type cb_autorun from commandbutton within w_updatecolumnstatus
integer x = 1536
integer y = 152
integer width = 293
integer height = 84
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "AutoRun"
end type

event clicked;int li_itemcount
cb_reset.triggerevent(clicked!)
ii_number = 1
lb_testitems.extendedselect = false
lb_testitems.multiselect = false
For li_itemCount = 1 to lb_testitems.TotalItems()
	lb_testitems.selectitem(li_itemcount)
	cb_run.Triggerevent(clicked!)
Next
lb_testitems.extendedselect = true
lb_testitems.multiselect = true
end event

type st_error from statictext within w_updatecolumnstatus
integer x = 4032
integer y = 316
integer width = 457
integer height = 72
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
boolean focusrectangle = false
end type

type dw_2 from datawindow within w_updatecolumnstatus
boolean visible = false
integer x = 73
integer y = 480
integer width = 2523
integer height = 2016
integer taborder = 30
string title = "none"
string dataobject = "d_dwitemstaus_feeform"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)

end event

type lb_testitems from listbox within w_updatecolumnstatus
event ue_buttondown pbm_lbuttondown
integer x = 73
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

event constructor;//integer rownbr
//string s
//s = "Edit File"
//rownbr = lb_Actions.AddItem(s)
int i
string ls_item[]

ls_item[1]="ColumnStatus Update()"
ls_item[2]="ColumnStatus Update(true, false)"
ls_item[3]="ColumnStatus ResetUpdate()"

for i=1 to UpperBound(ls_item)
	this.additem(string(i,"00")+" "+ls_Item[i])
next

end event

type cb_run from commandbutton within w_updatecolumnstatus
integer x = 1536
integer y = 284
integer width = 293
integer height = 88
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Run"
end type

event clicked;integer li_ItemTotal, li_ItemCount,li_rowcount

li_ItemTotal = lb_testitems.TotalItems( )

FOR li_ItemCount = 1 to li_ItemTotal
	
	if lb_testitems.State(li_ItemCount)=1 then
		li_rowcount = dw_output.rowcount()
		wf_message(lb_testitems.text(li_ItemCount),"")
		choose case li_ItemCount
			case 1
				f_check_updatecolumnstatus(dw_output,dw_1,false,1,cbx_right.checked)
			case 2
				f_check_updatecolumnstatus(dw_output,dw_1,false,2,cbx_right.checked)
			case 3
				f_check_updatecolumnstatus(dw_output,dw_1,false,3,cbx_right.checked)	
		end choose
		if long(dw_output.object.t_errornumber.text) = 0 and not(cbx_right.checked) then		
			dw_output.rowsdiscard(li_rowcount + 1,li_rowcount + long(dw_output.object.t_rightnumber.text) + 10,primary!)
		end if
	end if

NEXT

st_error.text="Error = " + string(dw_output.Object.t_errorcount.Text)


end event

type cb_saveas from commandbutton within w_updatecolumnstatus
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

event clicked;if dw_output.SaveAs("c:\output.txt", Text!	, false)=1 then
	messagebox("Alert","save to c:\output.text,OK!")
end if
end event

type cb_error from commandbutton within w_updatecolumnstatus
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
	dw_output.setfilter("#1='Error'")
	dw_output.filter()
	this.text="All"
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_updatecolumnstatus
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

type cb_max from commandbutton within w_updatecolumnstatus
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

type cb_1 from commandbutton within w_updatecolumnstatus
integer x = 2075
integer y = 160
integer width = 430
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "SaveStatus"
end type

event clicked;delete from status where flag='w';
f_check_updatecolumnstatus(dw_output,dw_1,true,0,true)

end event

type cb_sort from commandbutton within w_updatecolumnstatus
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

type cb_reset from commandbutton within w_updatecolumnstatus
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
dw_output.Object.t_errorcount.Text = "0"
end event

type dw_1 from datawindow within w_updatecolumnstatus
integer x = 73
integer y = 480
integer width = 2523
integer height = 2016
integer taborder = 20
string title = "none"
string dataobject = "d_dwitemstaus_update"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

type dw_output from datawindow within w_updatecolumnstatus
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

type gb_1 from groupbox within w_updatecolumnstatus
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

type gb_2 from groupbox within w_updatecolumnstatus
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

type gb_3 from groupbox within w_updatecolumnstatus
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

type gb_4 from groupbox within w_updatecolumnstatus
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

type gb_5 from groupbox within w_updatecolumnstatus
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

