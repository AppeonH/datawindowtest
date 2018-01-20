$PBExportHeader$w_graph.srw
$PBExportComments$Test graph
forward
global type w_graph from window
end type
type cb_2 from commandbutton within w_graph
end type
type cb_1 from commandbutton within w_graph
end type
type dw_1 from datawindow within w_graph
end type
end forward

global type w_graph from window
integer width = 3479
integer height = 2168
boolean titlebar = true
string title = "Test Graph Type DataWindow"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_graph w_graph

on w_graph.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_graph.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;dw_1.settransobject(sqlca)
dw_1.retrieve()
end event

type cb_2 from commandbutton within w_graph
integer x = 2967
integer y = 1872
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

type cb_1 from commandbutton within w_graph
integer x = 2953
integer y = 16
integer width = 457
integer height = 128
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Retrieve"
end type

event clicked;dw_1.settransobject(sqlca)
dw_1.retrieve()
end event

type dw_1 from datawindow within w_graph
integer x = 23
integer y = 20
integer width = 2907
integer height = 2012
integer taborder = 10
string title = "none"
string dataobject = "d_graph"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event retrievestart;messagebox("","start")
end event

event retrieveend;messagebox("","end")
end event

