$PBExportHeader$w_dynamiccreate_basic.srw
forward
global type w_dynamiccreate_basic from window
end type
type dw_event from datawindow within w_dynamiccreate_basic
end type
type st_message from statictext within w_dynamiccreate_basic
end type
type lb_testitems from listbox within w_dynamiccreate_basic
end type
type cb_run from commandbutton within w_dynamiccreate_basic
end type
type cb_10 from commandbutton within w_dynamiccreate_basic
end type
type cb_3 from commandbutton within w_dynamiccreate_basic
end type
type cbx_right from checkbox within w_dynamiccreate_basic
end type
type cb_max from commandbutton within w_dynamiccreate_basic
end type
type cb_1 from commandbutton within w_dynamiccreate_basic
end type
type cb_sort from commandbutton within w_dynamiccreate_basic
end type
type cb_reset from commandbutton within w_dynamiccreate_basic
end type
type dw_output from datawindow within w_dynamiccreate_basic
end type
type gb_1 from groupbox within w_dynamiccreate_basic
end type
type gb_2 from groupbox within w_dynamiccreate_basic
end type
type gb_3 from groupbox within w_dynamiccreate_basic
end type
type gb_4 from groupbox within w_dynamiccreate_basic
end type
type dw_1 from datawindow within w_dynamiccreate_basic
end type
end forward

global type w_dynamiccreate_basic from window
integer width = 4658
integer height = 2388
boolean titlebar = true
string title = "Composite DataWindow Test"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_event dw_event
st_message st_message
lb_testitems lb_testitems
cb_run cb_run
cb_10 cb_10
cb_3 cb_3
cbx_right cbx_right
cb_max cb_max
cb_1 cb_1
cb_sort cb_sort
cb_reset cb_reset
dw_output dw_output
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
gb_4 gb_4
dw_1 dw_1
end type
global w_dynamiccreate_basic w_dynamiccreate_basic

type variables
int ii_retrievestart = 0,ii_error = 0,ii_retrieverow = 0 
string is_event
end variables

forward prototypes
public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type)
public subroutine wf_otherfun ()
public subroutine wf_runorsave (boolean ab_save, string as_value, string as_result, string as_flag)
public subroutine wf_testitem (boolean ab_init, boolean ab_save)
public subroutine wf_sharedata (boolean ab_save)
public subroutine wf_message (string as_operate, string as_problem)
end prototypes

public subroutine wf_output (string as_orivalue, string as_curvalue, string as_type);string ls_message[]
//¸ÄsaveasË³Ðò
ls_message[]= {"Right","IE",as_type,as_OriValue}
if as_orivalue = "POP" then ls_message[1] = 'MessageBox'
if as_OriValue = as_CurValue then
	if cbx_right.checked then
		f_outputtext(dw_output,ls_message)
	end if
else
	ii_error ++
	ls_message[1] = 'Error'
	ls_message[2] = 'PB'
	f_outputtext(dw_output,ls_message)
	ls_message[2] = 'IE'
	ls_message[4] = as_CurValue
	f_outputtext(dw_output,ls_message)
end if

st_message.text = "Error:"+string(ii_error)
//ÔÚµ±Ò³¿´µ½POPÐÅÏ¢
if as_orivalue = "POP" and  as_orivalue = as_curvalue then
	dw_output.scrolltorow(dw_output.rowcount())
end if
end subroutine

public subroutine wf_otherfun ();//	Attributes	ÓëÆäËüColumn¶ÔÏó·µ»ØÖµÒ»Ñù
//Name	a
//Type	column
//Visible	0

	dw_1.dataobject = "d_F158A05_detailprop01"
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	
	any la_value
	la_value = dw_1.describe("a.Attributes")
	string ls_attributes = "accelerator	alignment	attributes	band	bitmapname	border	checkbox.3d	checkbox.lefttext	checkbox.off	checkbox.on	checkbox.other	checkbox.scale	checkbox.text	checkbox.threed	color	coltype	compute	criteria.dialog	criteria.override_edit	criteria.required	dbname	dddw.allowedit	dddw.autohscroll	dddw.autoretrieve	dddw.case	dddw.datacolumn	dddw.displaycolumn	dddw.hscrollbar	dddw.hsplitscroll	dddw.imemode	dddw.limit	dddw.lines	dddw.name	dddw.nilisnull	dddw.percentwidth	dddw.required	dddw.showlist	dddw.useasborder	dddw.vscrollbar	ddlb.allowedit	ddlb.autohscroll	ddlb.case	ddlb.imemode	ddlb.limit	ddlb.nilisnull	ddlb.required	ddlb.showlist	ddlb.sorted	ddlb.useasborder	ddlb.vscrollbar	edit.autohscroll	edit.autoselect	edit.autovscroll	edit.case	edit.codetable	edit.displayonly	edit.focusrectangle	edit.format	edit.hscrollbar	edit.imemode	edit.limit	edit.name	edit.nilisnull	edit.password	edit.required	edit.style	edit.validatecode	edit.vscrollbar	editmask.autoskip	editmask.codetable	editmask.focusrectangle	editmask.imemode	editmask.mask	editmask.readonly	editmask.required	editmask.spin	editmask.spinincr	editmask.spinrange	editmask.useformat	format	height	height.autosize	html.appendedhtml	html.link	html.linkargs	html.linktarget	html.valueishtml	id	identity	initial	key	lineremove	moveable	multiline	name	pointer	protect	radiobuttons.3d	radiobuttons.columns	radiobuttons.lefttext	radiobuttons.scale	radiobuttons.threed	resizeable	righttoleft	row_in_detail	slideleft	slideup	tabsequence	tag	type	update	updatewhereclause	useinternalleading	validation	validationmsg	values	visible	width	width.autosize	x	y	background.color	background.mode	font.charset	font.escapement	font.face	font.family	font.height	font.italic	font.orientation	font.pitch	font.strikethrough	font.underline	font.weight	font.width"
	wf_Output(ls_attributes,f_string(la_value),"01 a.Attributes: ")
	
	la_value = dw_1.describe("a.Name")
	wf_Output('a',f_string(la_value),"01 a.Name: ")
	
	la_value = dw_1.describe("a.Type")
	wf_Output('column',f_string(la_value),"01 a.Type: ")
	
	la_value = dw_1.describe("a.Visible")
	wf_Output('0',f_string(la_value),"01 a.Visible: ")
	//#1Ò²ÊÇÒ»ÑùµÄ
	la_value = dw_1.describe("#1.Attributes")
	wf_Output(ls_attributes,f_string(la_value),"01 1#.Attributes: ")
	
	la_value = dw_1.describe("#1.Name")
	wf_Output('a',f_string(la_value),"01 1#.Name: ")
	
	la_value = dw_1.describe("#1.Type")
	wf_Output('column',f_string(la_value),"01 1#.Type: ")
	
	la_value = dw_1.describe("#1.Visible")
	wf_Output('0',f_string(la_value),"01 1#.Visible: ")
	
//	la_value = dw_1.modify("dw_1.Trail_Footer = yes")
//	wf_Output('',f_string(la_value),"02 modify Trail_Footer: ")
//	
//	la_value = dw_1.describe("dw_1.Trail_Footer")
//	wf_Output('',f_string(la_value),"03 Trail_Footer: ")
end subroutine

public subroutine wf_runorsave (boolean ab_save, string as_value, string as_result, string as_flag);string ls_oldresult
//wf_runorsave(false,"","","")


//±£´æÊý¾Ý
if ab_save then
	Delete from composite_fun where  flag = :as_flag;
	Insert into composite_fun(value,result,flag) values(:as_value,:as_result,:as_flag);
	commit;
	
//±È½ÏÊý¾Ý
else
	select result into :ls_OldResult from composite_fun where flag = :as_flag and value = :as_value;
	if (sqlca.sqlcode = 100 or sqlca.sqlcode < 0 ) then ls_oldresult = 'error'
	wf_output(ls_oldresult,as_result,as_value)
end if


is_event = ""




	
end subroutine

public subroutine wf_testitem (boolean ab_init, boolean ab_save);int i
string ls_item[]
integer li_ItemTotal, li_ItemCount
	
if ab_init then
	//²âÊÔµã
	ls_item[1]		=	"sharedata"
	
	for i=1 to UpperBound(ls_item)
		lb_testitems.additem(string(i,"00")+" "+ls_Item[i])
	next
	
else //Ö´ÐÐ

	li_ItemTotal = lb_testitems.TotalItems( )
	
	dw_event.visible = false
	dw_1.visible = true
	
	FOR li_ItemCount = 1 to li_ItemTotal
		
		if lb_testitems.State(li_ItemCount)=1 then
			
			if not ab_save then//run
	
				choose case li_ItemCount
					case 1
						wf_message(lb_testitems.text(li_ItemCount),"datawindow ¶ÔÏóÊôÐÔ")
						
						wf_sharedata(ab_save)
					case 2
						//wf_retrievalarg(1)
		
				end choose
			else//save
				choose case li_ItemCount
					case 11
						wf_sharedata(ab_save)

				end choose
			
			end if
		end if
	next
	
end if

end subroutine

public subroutine wf_sharedata (boolean ab_save);any la_value
datawindowchild l_child1,l_child2

dw_event.visible = true
dw_1.visible = false
dw_event.dataobject = "d_computefield"
dw_1.dataobject = "d_f158a45_dwprop01"
dw_1.SetTransObject(SQLCA)
dw_event.SetTransObject(SQLCA)
dw_1.ShareData(dw_event)
//
dw_1.insertrow(0)

dw_event.GetChild('dw_1',l_child1)

dw_event.GetChild('dw_2',l_child2)


la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"insertrow share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"insertrow sharedata report1 rowcount",f_string(la_value),"sharedata1")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"insertrow sharedata report2 rowcount",f_string(la_value),"sharedata2")
//
dw_1.Reset()

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"reset share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"reset sharedata report1 rowcount",f_string(la_value),"sharedata3")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"reset sharedata report2 rowcount",f_string(la_value),"sharedata4")
//
dw_1.Retrieve()

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"retrieve share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"retrieve sharedata report1 rowcount",f_string(la_value),"sharedata5")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"retrieve sharedata report2 rowcount",f_string(la_value),"sharedata6")
//
dw_1.deleterow(0)

la_value = dw_event.rowcount()
wf_output(string(dw_1.rowcount()),f_string(la_value),"deleterow share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report1 rowcount",f_string(la_value),"sharedata7")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report2 rowcount",f_string(la_value),"sharedata8")
//
dw_event.sharedataoff()

la_value = dw_event.rowcount()
wf_output("0",f_string(la_value),"deleterow share data rowcount")

la_value = l_child1.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report1 rowcount",f_string(la_value),"sharedata9")

la_value = l_child2.rowcount()
wf_runorsave(ab_save,"deleterow sharedata report2 rowcount",f_string(la_value),"sharedata10")
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
ls_message[]= {"[Á´½Ó]","","http://192.0.1.21:8080/integrationcase/",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[ÎÊÌâ]","",''+as_problem+'',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Ó°Ïì³Ì¶È]","","¡ï¡ï¡ï¡ï¡ï",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'click "Test"->"w_dynamiccreate_basic"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[²Ù×÷]","",'execute "'+as_operate+'"',""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"[Êä³ö]","","",""}
f_outputtext(dw_output,ls_message)
ls_message[]= {"½á¹û","¶Ô±È","²Ù×÷","·µ»ØÖµ»ò½á¹û"}
f_outputtext(dw_output,ls_message)
end subroutine

on w_dynamiccreate_basic.create
this.dw_event=create dw_event
this.st_message=create st_message
this.lb_testitems=create lb_testitems
this.cb_run=create cb_run
this.cb_10=create cb_10
this.cb_3=create cb_3
this.cbx_right=create cbx_right
this.cb_max=create cb_max
this.cb_1=create cb_1
this.cb_sort=create cb_sort
this.cb_reset=create cb_reset
this.dw_output=create dw_output
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.gb_4=create gb_4
this.dw_1=create dw_1
this.Control[]={this.dw_event,&
this.st_message,&
this.lb_testitems,&
this.cb_run,&
this.cb_10,&
this.cb_3,&
this.cbx_right,&
this.cb_max,&
this.cb_1,&
this.cb_sort,&
this.cb_reset,&
this.dw_output,&
this.gb_1,&
this.gb_2,&
this.gb_3,&
this.gb_4,&
this.dw_1}
end on

on w_dynamiccreate_basic.destroy
destroy(this.dw_event)
destroy(this.st_message)
destroy(this.lb_testitems)
destroy(this.cb_run)
destroy(this.cb_10)
destroy(this.cb_3)
destroy(this.cbx_right)
destroy(this.cb_max)
destroy(this.cb_1)
destroy(this.cb_sort)
destroy(this.cb_reset)
destroy(this.dw_output)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
destroy(this.gb_4)
destroy(this.dw_1)
end on

type dw_event from datawindow within w_dynamiccreate_basic
event ue_lbuttonup pbm_dwnlbuttonup
event ue_rbuttondown pbm_dwnrbuttondown
event ue_rbuttonup pbm_dwnrbuttonup
event ue_key pbm_dwnkey
event ue_lbuttondown pbm_lbuttondown
boolean visible = false
integer x = 73
integer y = 484
integer width = 2560
integer height = 1708
integer taborder = 30
string title = "none"
string dataobject = "d_computefield"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_lbuttonup;string ls_event
ls_event = "lbuttonup"
is_event += ls_event+","

end event

event ue_rbuttondown;string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","

end event

event ue_rbuttonup;string ls_event
ls_event = "rbuttonup"
is_event += ls_event+","

end event

event ue_key;string ls_event
ls_event = "pbm_dwnkey"
is_event += ls_event+","

end event

event ue_lbuttondown;//²»ÊÇdwÌØÓÐÊÂ¼þ£¬ÔÝÊ±²»Ö§³Ö¡£
//string ls_event
//ls_event = "pbm_lbuttondown"
//is_event += ls_event+","
//if cbx_3.checked then
//	lb_1.additem(ls_event+" flags = "+ string(flags)+" xpos = " + string(xpos) + " ypos = "+string(ypos))
//end if
//if cbx_4.checked then
//	return wf_eventreturn(ls_event)
//end if

end event

event buttonclicked;string ls_event
ls_event = "buttonclicked"
is_event += ls_event+","

end event

event buttonclicking;string ls_event
ls_event = "buttonclicking"
is_event += ls_event+","

end event

event clicked;
string ls_event
ls_event = "clicked"
is_event += ls_event+","

end event

event constructor;string ls_event
ls_event = "contructor"
is_event += ls_event+","

end event

event dberror;string ls_event
ls_event = "dberror"
is_event += ls_event+","

end event

event destructor;string ls_event
ls_event = "destructor"
is_event += ls_event+","

end event

event doubleclicked;string ls_event
ls_event = "doubleclicked"
is_event += ls_event+","

end event

event editchanged;string ls_event
ls_event = "editchanged"
is_event += ls_event+","

end event

event getfocus;string ls_event
ls_event = "getfocus"
is_event += ls_event+","

end event

event itemchanged;string ls_event
ls_event = "itemchanged"
is_event += ls_event+","

end event

event itemerror;string ls_event
ls_event = "itemerror"
is_event += ls_event+","

end event

event itemfocuschanged;string ls_event
ls_event = "itemfocuschanged"
is_event += ls_event+","

end event

event losefocus;string ls_event
ls_event = "losefocus"
is_event += ls_event+","

end event

event rbuttondown;string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","

end event

event resize;string ls_event
ls_event = "resize"
is_event += ls_event+","

end event

event retrieveend;string ls_event
ls_event = "retrieveend"
is_event += ls_event+","

end event

event retrievestart;string ls_event
ls_event = "retrievestart"
is_event += ls_event+","

end event

event rowfocuschanged;string ls_event
ls_event = "rowfocuschanged"
is_event += ls_event+","

end event

event rowfocuschanging;string ls_event
ls_event = "rowfocuschanging"
is_event += ls_event+","

end event

event scrollhorizontal;string ls_event
ls_event = "scrollhorizontal"
is_event += ls_event+","

end event

event scrollvertical;string ls_event
ls_event = "scrollvertical"
is_event += ls_event+","

end event

event sqlpreview;

string ls_event
ls_event = "sqlpreview"
is_event += ls_event+","

end event

event updateend;string ls_event
ls_event = "updateend"
is_event += ls_event+","

end event

event updatestart;string ls_event
ls_event = "updatestart"
is_event += ls_event+","

end event

type st_message from statictext within w_dynamiccreate_basic
integer x = 4192
integer y = 332
integer width = 320
integer height = 64
integer textsize = -9
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 134217857
long backcolor = 67108864
long bordercolor = 255
boolean focusrectangle = false
end type

type lb_testitems from listbox within w_dynamiccreate_basic
integer x = 73
integer y = 52
integer width = 2126
integer height = 336
integer taborder = 10
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

event constructor;
wf_testitem(true,false)

end event

event doubleclicked;cb_run.TriggerEvent(Clicked!)
end event

type cb_run from commandbutton within w_dynamiccreate_basic
integer x = 2277
integer y = 124
integer width = 297
integer height = 88
integer taborder = 100
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Run"
end type

event clicked;wf_testitem(false,false)
end event

type cb_10 from commandbutton within w_dynamiccreate_basic
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

event clicked;
if dw_output.SaveAs("c:\output.txt", Text!	, false)=1 then
	messagebox("Alert","save to c:\output.text,OK!")
end if



end event

type cb_3 from commandbutton within w_dynamiccreate_basic
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
	dw_output.setfilter("#1<>'Right'")
	dw_output.filter()
	this.text="All"
else
	dw_output.setfilter("")
	dw_output.filter()
	this.text="Error"
end if
end event

type cbx_right from checkbox within w_dynamiccreate_basic
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

type cb_max from commandbutton within w_dynamiccreate_basic
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

type cb_1 from commandbutton within w_dynamiccreate_basic
integer x = 2277
integer y = 240
integer width = 297
integer height = 88
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Save"
end type

event clicked;wf_testitem(false,true)

end event

type cb_sort from commandbutton within w_dynamiccreate_basic
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

type cb_reset from commandbutton within w_dynamiccreate_basic
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
ii_error = 0
st_message.text = ""
end event

type dw_output from datawindow within w_dynamiccreate_basic
integer x = 2706
integer y = 476
integer width = 1792
integer height = 1716
integer taborder = 60
string title = "none"
string dataobject = "d_output"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_dynamiccreate_basic
integer x = 2683
integer y = 416
integer width = 1879
integer height = 1832
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

type gb_2 from groupbox within w_dynamiccreate_basic
integer x = 37
integer y = 416
integer width = 2629
integer height = 1832
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

type gb_3 from groupbox within w_dynamiccreate_basic
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

type gb_4 from groupbox within w_dynamiccreate_basic
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

type dw_1 from datawindow within w_dynamiccreate_basic
integer x = 73
integer y = 476
integer width = 2560
integer height = 1708
integer taborder = 20
boolean bringtotop = true
string title = "none"
string dataobject = "d_f158a45_dwprop01"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)
retrieve()
end event

event retrievestart;return ii_retrievestart
end event

event retrieverow;return ii_retrieverow
end event

