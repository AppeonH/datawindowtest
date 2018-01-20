$PBExportHeader$w_othertype.srw
forward
global type w_othertype from window
end type
type rb_5 from radiobutton within w_othertype
end type
type rb_4 from radiobutton within w_othertype
end type
type dw_1 from datawindow within w_othertype
end type
type rb_3 from radiobutton within w_othertype
end type
type rb_2 from radiobutton within w_othertype
end type
type rb_1 from radiobutton within w_othertype
end type
type gb_1 from groupbox within w_othertype
end type
end forward

global type w_othertype from window
integer width = 3909
integer height = 2568
boolean titlebar = true
string title = "Other style datawindow test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
rb_5 rb_5
rb_4 rb_4
dw_1 dw_1
rb_3 rb_3
rb_2 rb_2
rb_1 rb_1
gb_1 gb_1
end type
global w_othertype w_othertype

forward prototypes
public subroutine wf_retrieve ()
end prototypes

public subroutine wf_retrieve ();if rb_1.checked then
	dw_1.dataobject="d_label"
elseif rb_2.checked then
	dw_1.dataobject="d_nup"
elseif rb_3.checked then
	dw_1.dataobject="d_group"
elseif rb_4.checked then
	dw_1.dataobject="d_crosstab"
elseif rb_5.checked then
	dw_1.dataobject="d_graph"
end if	
dw_1.settransobject(sqlca)
dw_1.retrieve()
end subroutine

event open;wf_retrieve()
end event

on w_othertype.create
this.rb_5=create rb_5
this.rb_4=create rb_4
this.dw_1=create dw_1
this.rb_3=create rb_3
this.rb_2=create rb_2
this.rb_1=create rb_1
this.gb_1=create gb_1
this.Control[]={this.rb_5,&
this.rb_4,&
this.dw_1,&
this.rb_3,&
this.rb_2,&
this.rb_1,&
this.gb_1}
end on

on w_othertype.destroy
destroy(this.rb_5)
destroy(this.rb_4)
destroy(this.dw_1)
destroy(this.rb_3)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.gb_1)
end on

type rb_5 from radiobutton within w_othertype
integer x = 1486
integer y = 104
integer width = 411
integer height = 92
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Graph"
end type

event clicked;wf_retrieve()
end event

type rb_4 from radiobutton within w_othertype
integer x = 1042
integer y = 104
integer width = 411
integer height = 92
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "CrossTab"
end type

event clicked;wf_retrieve()
end event

type dw_1 from datawindow within w_othertype
integer x = 46
integer y = 256
integer width = 3675
integer height = 2148
integer taborder = 20
string title = "none"
string dataobject = "d_label"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type rb_3 from radiobutton within w_othertype
integer x = 713
integer y = 104
integer width = 306
integer height = 92
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Group"
end type

event clicked;wf_retrieve()
end event

type rb_2 from radiobutton within w_othertype
integer x = 407
integer y = 104
integer width = 306
integer height = 92
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "N-UP"
end type

event clicked;wf_retrieve()
end event

type rb_1 from radiobutton within w_othertype
integer x = 87
integer y = 104
integer width = 306
integer height = 92
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Label"
boolean checked = true
end type

event clicked;wf_retrieve()
end event

type gb_1 from groupbox within w_othertype
integer x = 46
integer y = 16
integer width = 3584
integer height = 228
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
end type

