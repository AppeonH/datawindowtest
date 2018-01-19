$PBExportHeader$w_rowsmovecopy.srw
forward
global type w_rowsmovecopy from window
end type
type cb_3 from commandbutton within w_rowsmovecopy
end type
type ddlb_5 from dropdownlistbox within w_rowsmovecopy
end type
type cb_2 from commandbutton within w_rowsmovecopy
end type
type st_7 from statictext within w_rowsmovecopy
end type
type ddlb_4 from dropdownlistbox within w_rowsmovecopy
end type
type st_6 from statictext within w_rowsmovecopy
end type
type st_5 from statictext within w_rowsmovecopy
end type
type ddlb_3 from dropdownlistbox within w_rowsmovecopy
end type
type st_4 from statictext within w_rowsmovecopy
end type
type ddlb_2 from dropdownlistbox within w_rowsmovecopy
end type
type st_3 from statictext within w_rowsmovecopy
end type
type ddlb_1 from dropdownlistbox within w_rowsmovecopy
end type
type st_2 from statictext within w_rowsmovecopy
end type
type st_1 from statictext within w_rowsmovecopy
end type
type sle_3 from singlelineedit within w_rowsmovecopy
end type
type sle_2 from singlelineedit within w_rowsmovecopy
end type
type sle_1 from singlelineedit within w_rowsmovecopy
end type
type dw_2 from datawindow within w_rowsmovecopy
end type
type cb_1 from commandbutton within w_rowsmovecopy
end type
type dw_1 from datawindow within w_rowsmovecopy
end type
end forward

global type w_rowsmovecopy from window
integer width = 3529
integer height = 2172
boolean titlebar = true
string title = "rowscopy_move"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_3 cb_3
ddlb_5 ddlb_5
cb_2 cb_2
st_7 st_7
ddlb_4 ddlb_4
st_6 st_6
st_5 st_5
ddlb_3 ddlb_3
st_4 st_4
ddlb_2 ddlb_2
st_3 st_3
ddlb_1 ddlb_1
st_2 st_2
st_1 st_1
sle_3 sle_3
sle_2 sle_2
sle_1 sle_1
dw_2 dw_2
cb_1 cb_1
dw_1 dw_1
end type
global w_rowsmovecopy w_rowsmovecopy

on w_rowsmovecopy.create
this.cb_3=create cb_3
this.ddlb_5=create ddlb_5
this.cb_2=create cb_2
this.st_7=create st_7
this.ddlb_4=create ddlb_4
this.st_6=create st_6
this.st_5=create st_5
this.ddlb_3=create ddlb_3
this.st_4=create st_4
this.ddlb_2=create ddlb_2
this.st_3=create st_3
this.ddlb_1=create ddlb_1
this.st_2=create st_2
this.st_1=create st_1
this.sle_3=create sle_3
this.sle_2=create sle_2
this.sle_1=create sle_1
this.dw_2=create dw_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_3,&
this.ddlb_5,&
this.cb_2,&
this.st_7,&
this.ddlb_4,&
this.st_6,&
this.st_5,&
this.ddlb_3,&
this.st_4,&
this.ddlb_2,&
this.st_3,&
this.ddlb_1,&
this.st_2,&
this.st_1,&
this.sle_3,&
this.sle_2,&
this.sle_1,&
this.dw_2,&
this.cb_1,&
this.dw_1}
end on

on w_rowsmovecopy.destroy
destroy(this.cb_3)
destroy(this.ddlb_5)
destroy(this.cb_2)
destroy(this.st_7)
destroy(this.ddlb_4)
destroy(this.st_6)
destroy(this.st_5)
destroy(this.ddlb_3)
destroy(this.st_4)
destroy(this.ddlb_2)
destroy(this.st_3)
destroy(this.ddlb_1)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.sle_3)
destroy(this.sle_2)
destroy(this.sle_1)
destroy(this.dw_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_3 from commandbutton within w_rowsmovecopy
integer x = 805
integer y = 288
integer width = 439
integer height = 96
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "dataobject"
end type

event clicked;dw_1.dataobject=ddlb_5.text
dw_2.dataobject=ddlb_5.text
dw_1.settransobject(sqlca)
dw_2.settransobject(sqlca)
dw_1.retrieve()
dw_2.retrieve()


end event

type ddlb_5 from dropdownlistbox within w_rowsmovecopy
integer x = 1280
integer y = 288
integer width = 695
integer height = 448
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string item[] = {"d_external_data","d_all_datatype_required","d_computedfield","d_employee"}
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_rowsmovecopy
integer x = 133
integer y = 204
integer width = 558
integer height = 116
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "rowsmove"
end type

event clicked;datawindow dw_source,dw_target
dwbuffer sourcebuffer,targetbuffer

if ddlb_1.text="dw_1" then
	dw_source=dw_1
else
	dw_source=dw_2
end if
if ddlb_4.text="dw_1" then
	dw_target=dw_1
else
	dw_target=dw_2
end if
choose case ddlb_2.text
	case "p"
		sourcebuffer=primary!
	case "d"
		sourcebuffer=delete!
	case "f"
		sourcebuffer=filter!
end choose

choose case ddlb_3.text
	case "p"
		targetbuffer=primary!
	case "d"
		targetbuffer=delete!
	case "f"
		targetbuffer=filter!
end choose

dw_source.Rowsmove(long(sle_1.text), long(sle_2.text), sourcebuffer, dw_target,long(sle_3.text), targetbuffer)



end event

type st_7 from statictext within w_rowsmovecopy
integer x = 2263
integer y = 20
integer width = 197
integer height = 72
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "dw"
boolean focusrectangle = false
end type

type ddlb_4 from dropdownlistbox within w_rowsmovecopy
integer x = 2231
integer y = 116
integer width = 283
integer height = 452
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string item[] = {"dw_1","dw_2"}
borderstyle borderstyle = stylelowered!
end type

event constructor;selectitem(1)
end event

type st_6 from statictext within w_rowsmovecopy
integer x = 2894
integer y = 28
integer width = 197
integer height = 72
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "buffer"
boolean focusrectangle = false
end type

type st_5 from statictext within w_rowsmovecopy
integer x = 2592
integer y = 28
integer width = 197
integer height = 72
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "pos"
boolean focusrectangle = false
end type

type ddlb_3 from dropdownlistbox within w_rowsmovecopy
integer x = 2843
integer y = 116
integer width = 283
integer height = 452
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean sorted = false
string item[] = {"p","f","d"}
borderstyle borderstyle = stylelowered!
end type

event constructor;selectitem(1)
end event

type st_4 from statictext within w_rowsmovecopy
integer x = 951
integer y = 28
integer width = 146
integer height = 68
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "dw"
boolean focusrectangle = false
end type

type ddlb_2 from dropdownlistbox within w_rowsmovecopy
integer x = 1897
integer y = 116
integer width = 283
integer height = 452
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean sorted = false
string item[] = {"p","f","d"}
borderstyle borderstyle = stylelowered!
end type

event constructor;selectitem(1)
end event

type st_3 from statictext within w_rowsmovecopy
integer x = 1970
integer y = 28
integer width = 197
integer height = 72
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "buffer"
boolean focusrectangle = false
end type

type ddlb_1 from dropdownlistbox within w_rowsmovecopy
integer x = 891
integer y = 116
integer width = 283
integer height = 452
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string item[] = {"dw_1","dw_2"}
borderstyle borderstyle = stylelowered!
end type

event constructor;selectitem(1)
end event

type st_2 from statictext within w_rowsmovecopy
integer x = 1586
integer y = 28
integer width = 192
integer height = 72
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "stop"
boolean focusrectangle = false
end type

type st_1 from statictext within w_rowsmovecopy
integer x = 1230
integer y = 28
integer width = 192
integer height = 72
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "start"
boolean focusrectangle = false
end type

type sle_3 from singlelineedit within w_rowsmovecopy
integer x = 2574
integer y = 116
integer width = 224
integer height = 104
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "1"
borderstyle borderstyle = stylelowered!
end type

type sle_2 from singlelineedit within w_rowsmovecopy
integer x = 1577
integer y = 116
integer width = 224
integer height = 104
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "1"
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within w_rowsmovecopy
integer x = 1230
integer y = 116
integer width = 224
integer height = 104
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string text = "1"
borderstyle borderstyle = stylelowered!
end type

type dw_2 from datawindow within w_rowsmovecopy
integer x = 1760
integer y = 408
integer width = 1632
integer height = 1536
integer taborder = 20
string title = "none"
string dataobject = "d_computedfield"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

type cb_1 from commandbutton within w_rowsmovecopy
integer x = 110
integer y = 32
integer width = 558
integer height = 112
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "rowscopy"
end type

event clicked;datawindow dw_source,dw_target
dwbuffer sourcebuffer,targetbuffer

if ddlb_1.text="dw_1" then
	dw_source=dw_1
else
	dw_source=dw_2
end if
if ddlb_4.text="dw_1" then
	dw_target=dw_1
else
	dw_target=dw_2
end if
choose case ddlb_2.text
	case "p"
		sourcebuffer=primary!
	case "d"
		sourcebuffer=delete!
	case "f"
		sourcebuffer=filter!
end choose

choose case ddlb_3.text
	case "p"
		targetbuffer=primary!
	case "d"
		targetbuffer=delete!
	case "f"
		targetbuffer=filter!
end choose

dw_source.RowsCopy(long(sle_1.text), long(sle_2.text), sourcebuffer, dw_target,long(sle_3.text), targetbuffer)



end event

type dw_1 from datawindow within w_rowsmovecopy
integer x = 37
integer y = 408
integer width = 1632
integer height = 1536
integer taborder = 10
string title = "none"
string dataobject = "d_computedfield"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

