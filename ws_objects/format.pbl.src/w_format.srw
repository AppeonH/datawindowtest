$PBExportHeader$w_format.srw
forward
global type w_format from window
end type
type cbx_1 from checkbox within w_format
end type
type lb_testitems from listbox within w_format
end type
type cb_run from commandbutton within w_format
end type
type cb_1 from commandbutton within w_format
end type
type dw_1 from datawindow within w_format
end type
type gb_2 from groupbox within w_format
end type
type gb_3 from groupbox within w_format
end type
end forward

global type w_format from window
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
cbx_1 cbx_1
lb_testitems lb_testitems
cb_run cb_run
cb_1 cb_1
dw_1 dw_1
gb_2 gb_2
gb_3 gb_3
end type
global w_format w_format

on w_format.create
this.cbx_1=create cbx_1
this.lb_testitems=create lb_testitems
this.cb_run=create cb_run
this.cb_1=create cb_1
this.dw_1=create dw_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.Control[]={this.cbx_1,&
this.lb_testitems,&
this.cb_run,&
this.cb_1,&
this.dw_1,&
this.gb_2,&
this.gb_3}
end on

on w_format.destroy
destroy(this.cbx_1)
destroy(this.lb_testitems)
destroy(this.cb_run)
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.gb_2)
destroy(this.gb_3)
end on

type cbx_1 from checkbox within w_format
integer x = 2423
integer y = 76
integer width = 210
integer height = 88
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

type lb_testitems from listbox within w_format
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

ls_item[1]="base number format"
ls_item[2]="user number format"
ls_item[3]="other number format"

ls_item[4]="base string format"
ls_item[5]="user string format"
ls_item[6]="other string format"

ls_item[7]="base date format"
ls_item[8]="user date format"
ls_item[9]="other date format"

ls_item[10]="base time format"
ls_item[11]="user time format"
ls_item[12]="other time format"

ls_item[13]="base datetime format"
ls_item[14]="user datetime format"
ls_item[15]="other datetime format"

for i=1 to UpperBound(ls_item)
	this.additem(string(i,"00")+" "+ls_Item[i])
next

end event

event selectionchanged;choose case index
	case 1
		dw_1.Dataobject = "d_msk010_w01_baseformat"
	case 2
		dw_1.Dataobject = "d_msk010_w02_userformat"
	case 3
		dw_1.Dataobject = "d_msk010_w03_otherformat"

	case 4
		dw_1.Dataobject = "d_msk011_w01_baseformat"
	case 5
		dw_1.Dataobject = "d_msk011_w02_userformat"
	case 6
		dw_1.Dataobject = "d_msk011_w03_otherformat"
		
	case 7
		dw_1.Dataobject = "d_msk012_w01_baseformat"
	case 8
		dw_1.Dataobject = "d_msk012_w02_userformat"
	case 9
		dw_1.Dataobject = "d_msk012_w03_otherformat"
	
	case 10
		dw_1.Dataobject = "d_msk013_w01_baseformat"
	case 11
		dw_1.Dataobject = "d_msk013_w02_userformat"
	case 12
		dw_1.Dataobject = "d_msk013_w03_otherformat"
	
	case 13
		dw_1.Dataobject = "d_msk014_w01_baseformat"
	case 14
		dw_1.Dataobject = "d_msk014_w02_userformat"
	case 15
		dw_1.Dataobject = "d_msk014_w03_otherformat"
end choose

dw_1.insertRow(0)
end event

type cb_run from commandbutton within w_format
boolean visible = false
integer x = 2423
integer y = 184
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

event clicked;//integer li_ItemTotal, li_ItemCount
//
//li_ItemTotal = lb_testitems.TotalItems( )
//
//FOR li_ItemCount = 1 to li_ItemTotal
//	
//	if lb_testitems.State(li_ItemCount)=1 then
//		
//		choose case li_ItemCount
//			case 1
//				wf_syntax1()
//			case 2
//				wf_syntax2()
//			case 3
//				wf_syntax3()
//			case 4
//				wf_syntax4()
//			case 5
//				wf_syntax5()
//			case 6
//				wf_syntax6()
//			case 7
//				wf_syntax7()
//			case 8
//				wf_dotoperate(false)
//			case 9
//				wf_dotoperatortonull(false)
//			case 10
//				wf_dotoperatorfromnull(false)
//		end choose
//	end if
//
//NEXT
//
//
end event

type cb_1 from commandbutton within w_format
boolean visible = false
integer x = 2423
integer y = 300
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

event clicked;//integer li_ItemTotal, li_ItemCount
//
//li_ItemTotal = lb_testitems.TotalItems( )
//
//FOR li_ItemCount = 1 to li_ItemTotal
//	
//	if lb_testitems.State(li_ItemCount)=1 then
//		
//		choose case li_ItemCount
//			case 8
//				wf_dotoperate(true)
//			case 9
//				wf_dotoperatortonull(true)
//			case 10
//				wf_dotoperatorfromnull(true)
//		end choose
//	end if
//
//NEXT
//
end event

type dw_1 from datawindow within w_format
integer x = 73
integer y = 480
integer width = 4475
integer height = 2016
integer taborder = 20
string title = "none"
string dataobject = "d_msk010_w01_baseformat"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;
dw_1.insertrow(0)
end event

type gb_2 from groupbox within w_format
integer x = 37
integer y = 416
integer width = 4558
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

type gb_3 from groupbox within w_format
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

