$PBExportHeader$w_eventreturn.srw
forward
global type w_eventreturn from window
end type
type cb_1 from commandbutton within w_eventreturn
end type
type dw_1 from datawindow within w_eventreturn
end type
end forward

global type w_eventreturn from window
integer width = 3963
integer height = 2380
boolean titlebar = true
string title = "Set Event Return Value"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dw_1 dw_1
end type
global w_eventreturn w_eventreturn

on w_eventreturn.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_eventreturn.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca)
dw_1.retrieve()
end event

type cb_1 from commandbutton within w_eventreturn
integer x = 3461
integer y = 2140
integer width = 457
integer height = 128
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

event clicked;if dw_1.update()= 1 then
	commit using sqlca;
else
	rollback using sqlca;
end if
close(parent)
end event

type dw_1 from datawindow within w_eventreturn
integer x = 37
integer y = 32
integer width = 3881
integer height = 2080
integer taborder = 10
string title = "none"
string dataobject = "d_eventreturn"
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

