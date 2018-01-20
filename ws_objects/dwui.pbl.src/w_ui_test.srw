$PBExportHeader$w_ui_test.srw
forward
global type w_ui_test from window
end type
type cb_3 from commandbutton within w_ui_test
end type
type ddlb_1 from dropdownlistbox within w_ui_test
end type
type cb_2 from commandbutton within w_ui_test
end type
type mle_1 from multilineedit within w_ui_test
end type
type cbx_getobjectatpointer from checkbox within w_ui_test
end type
type cbx_2 from checkbox within w_ui_test
end type
type dw_1 from datawindow within w_ui_test
end type
type lb_1 from listbox within w_ui_test
end type
type cbx_3 from checkbox within w_ui_test
end type
type cbx_4 from checkbox within w_ui_test
end type
type cb_1 from commandbutton within w_ui_test
end type
type dw_2 from datawindow within w_ui_test
end type
type lb_testitems from listbox within w_ui_test
end type
type gb_1 from groupbox within w_ui_test
end type
end forward

global type w_ui_test from window
integer width = 4736
integer height = 2676
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_3 cb_3
ddlb_1 ddlb_1
cb_2 cb_2
mle_1 mle_1
cbx_getobjectatpointer cbx_getobjectatpointer
cbx_2 cbx_2
dw_1 dw_1
lb_1 lb_1
cbx_3 cbx_3
cbx_4 cbx_4
cb_1 cb_1
dw_2 dw_2
lb_testitems lb_testitems
gb_1 gb_1
end type
global w_ui_test w_ui_test

type variables
string is_event
int ii_rowfocuschanging,ii_retrievestart
boolean ib_trackflag
string is_tracklog

end variables

forward prototypes
public subroutine wf_addtestitems (boolean ab_runonly)
public subroutine wf_checkevent (string as_function, string as_parameter)
public function boolean wf_additem (string as_message)
public function integer wf_eventreturn (string as_event)
end prototypes

public subroutine wf_addtestitems (boolean ab_runonly);string ls_list[]
int i
string ls_item[],ls_null
integer li_ItemTotal
setnull(ls_null)
if ab_runonly=false then //listbox add items
			i++
			ls_list[i]="dataobject"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="deleterow(0)"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="filter"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="height=200"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="height=1000"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="insertrow(0)"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="print"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="reset"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="retrieve"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="retrieve after settransojbect"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="rowsmove and copy"
			lb_testitems.additem(ls_list[i])
			i++
			i++
			ls_list[i]="saveas"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="setsqlselect"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="settransobject"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="sort"
			lb_testitems.additem(ls_list[i])
//			i++
//			ls_list[i]="sqlpreview set setsqlselect"
//			lb_testitems.additem(ls_list[i])
//			i++
//			ls_list[i]="sqlpreview change sql"
//			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="vscrollbar=true"
			lb_testitems.additem(ls_list[i])
			i++
			ls_list[i]="vscrollbar=false"
			lb_testitems.additem(ls_list[i])
			
			i++
			ls_list[i]="width=300"
			lb_testitems.additem(ls_list[i])
			
			i++
			ls_list[i]="width=3000"
			lb_testitems.additem(ls_list[i])
else // run selected in listbox's items


			li_ItemTotal = lb_testitems.TotalItems( )

			
			FOR i = 1 to li_ItemTotal
				
				if lb_testitems.State(i)=1 then
					

					
					choose case lb_testitems.text(i)
						case "dataobject"
							dw_1.dataobject=ddlb_1.text
						case "deleterow(0)"
							dw_1.deleterow(0)
						case "filter"
							dw_1.setfilter(ls_null)
							dw_1.filter()
						case "height=200"
							dw_1.height=200
						case "height=1000"
							dw_1.height=1000
						case "insertrow(0)"
							dw_1.insertrow(0)
						
						case "print"
							dw_1.print()
						case "reset"
							dw_1.reset()
						
						case "retrieve"
							dw_1.retrieve()
						case "retrieve after settransojbect"
							dw_1.settransobject(sqlca)
							dw_1.retrieve()
						case "rowsmove and copy"
							open(w_rowsmovecopy)
							
						case "saveas"
							if dw_1.SaveAs("c:\output.txt", Text!	, FALSE)=1 then
								messagebox("Alert","save to output.text,OK!")
							end if
						
						case "setsqlselect"
							dw_1.setsqlselect(mle_1.text)
						case "settransobject"
							dw_1.SetTransObject(sqlca)
						case "sort"
							dw_1.setsort(ls_null)
							dw_1.sort()
//						case "sqlpreview set setsqlselect"
//							ib_changesql=true //ÔÚÊÂ¼þÖÐ¸Ä±äsql
//							dw_1.retrieve()
//							ib_changesql=false
//						case "sqlpreview change sql"
							
						case "vscrollbar=true"
							dw_1.vscrollbar=true
						case "vscrollbar=false"
							dw_1.vscrollbar=false
						case "width=300"
							dw_1.width=300
						
						case "width=3000"
							dw_1.width=3000
						
				
					end choose
				end if
						
			
			NEXT
			


end if


end subroutine

public subroutine wf_checkevent (string as_function, string as_parameter);string ls_event 
select event into :ls_event from event 
	where function = :as_function and parameter = :as_parameter;
if isnull(ls_event) then ls_event = ""	
if ls_event = is_event then
	wf_additem("Right|"+as_function+" "+as_parameter+"Event:"+is_event)
else
	wf_additem("Error|"+as_function+" "+as_parameter+" PB Event:"+ls_event)
	wf_additem("Error|"+as_function+" "+as_parameter+" IE Event:"+is_event)
end if
is_event = ""
end subroutine

public function boolean wf_additem (string as_message);long ll_index

//Yield()
//
//IF ib_interrupt THEN 
//	return true
//End if

if pos(lower(as_message),"error") > 0 then

	ll_index=lb_1.additem(as_message)
	lb_1.SetState ( ll_index, true)
else

		ll_index=lb_1.additem(as_message)


end if

return false
end function

public function integer wf_eventreturn (string as_event);integer li_ret
select returnvalue into :li_ret from eventreturn where event = :as_event;
return li_ret
end function

on w_ui_test.create
this.cb_3=create cb_3
this.ddlb_1=create ddlb_1
this.cb_2=create cb_2
this.mle_1=create mle_1
this.cbx_getobjectatpointer=create cbx_getobjectatpointer
this.cbx_2=create cbx_2
this.dw_1=create dw_1
this.lb_1=create lb_1
this.cbx_3=create cbx_3
this.cbx_4=create cbx_4
this.cb_1=create cb_1
this.dw_2=create dw_2
this.lb_testitems=create lb_testitems
this.gb_1=create gb_1
this.Control[]={this.cb_3,&
this.ddlb_1,&
this.cb_2,&
this.mle_1,&
this.cbx_getobjectatpointer,&
this.cbx_2,&
this.dw_1,&
this.lb_1,&
this.cbx_3,&
this.cbx_4,&
this.cb_1,&
this.dw_2,&
this.lb_testitems,&
this.gb_1}
end on

on w_ui_test.destroy
destroy(this.cb_3)
destroy(this.ddlb_1)
destroy(this.cb_2)
destroy(this.mle_1)
destroy(this.cbx_getobjectatpointer)
destroy(this.cbx_2)
destroy(this.dw_1)
destroy(this.lb_1)
destroy(this.cbx_3)
destroy(this.cbx_4)
destroy(this.cb_1)
destroy(this.dw_2)
destroy(this.lb_testitems)
destroy(this.gb_1)
end on

type cb_3 from commandbutton within w_ui_test
integer x = 1024
integer y = 384
integer width = 329
integer height = 96
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Dw Max"
end type

event clicked;dw_1.vscrollbar=dw_2.vscrollbar
dw_1.height=1900

dw_1.width=3200


end event

type ddlb_1 from dropdownlistbox within w_ui_test
integer x = 1536
integer y = 320
integer width = 695
integer height = 448
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
string item[] = {"d_external_data","d_all_datatype_required","d_computedfield","d_object"}
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_ui_test
integer x = 2816
integer y = 96
integer width = 256
integer height = 96
integer taborder = 20
integer textsize = -8
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Reset"
end type

event clicked;lb_1.reset()
end event

type mle_1 from multilineedit within w_ui_test
integer x = 37
integer y = 32
integer width = 2670
integer height = 192
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cbx_getobjectatpointer from checkbox within w_ui_test
integer x = 3840
integer y = 128
integer width = 608
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "GetObjectAtPointer"
end type

type cbx_2 from checkbox within w_ui_test
integer x = 3218
integer y = 64
integer width = 466
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "RowSelect"
end type

type dw_1 from datawindow within w_ui_test
event ue_lbuttonup pbm_dwnlbuttonup
event ue_rbuttondown pbm_dwnrbuttondown
event ue_rbuttonup pbm_dwnrbuttonup
event ue_key pbm_dwnkey
event ue_lbuttondown pbm_lbuttondown
integer x = 1097
integer y = 576
integer width = 1499
integer height = 512
integer taborder = 30
string title = "none"
string dataobject = "d_external_data"
boolean hscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event ue_lbuttonup;//

string ls_event
ls_event = "lbuttonup"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event ue_rbuttondown;//lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event ue_rbuttonup;string ls_event
ls_event = "rbuttonup"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" xpos = "+ string(xpos)+" ypox = "+ string(ypos)+" row= " + string(row) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event ue_key;string ls_event
ls_event = "pbm_dwnkey"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" key = "+ string(key)+" keyflags = "+ string(keyflags))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
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
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+" actionreturncode= " + string(actionreturncode) + " dwo.name = "+dwo.name +" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if


end event

event buttonclicking;string ls_event
ls_event = "buttonclicking"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if


end event

event clicked;integer li_ret,li_currow
string ls_ret
boolean lb_ret
string ls_message,ls_sql
//		<Interface param_number="0">GetClickedColumn</Interface>  
/*
li_ret=dw_1.GetClickedColumn()
if not isnull(li_ret) then
	ls_message="Right|GetClickedColumn() return "+string(li_ret)
else
	ls_message="Error|GetClickedColumn() return null"
end if
wf_additem(ls_message)

//		<Interface param_number="0">GetClickedRow</Interface> 
li_ret=dw_1.GetClickedRow()
if not isnull(li_ret) then
	ls_message="Right|dw_1.GetClickedRow() return "+string(li_ret)
else
	ls_message="Error|dw_1.GetClickedRow() return null"
end if
wf_additem(ls_message)
*/

if cbx_2.checked then
	this.selectrow(0,false)
	this.selectrow(row,true)
else
	this.selectrow(0,false)
end if
string ls_event
ls_event = "clicked"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" x="+string(x)+" y="+string(y))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

if cbx_GetObjectAtPointer.checked then
	
	wf_additem("Right|GetObjectAtPointer() Return:"+this.getObjectAtPointer())
end if
end event

event constructor;string ls_event
ls_event = "contructor"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event dberror;string ls_event
ls_event = "dberror"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" sqldbcode = "+string(sqldbcode) + " sqlerrtext = "+sqlerrtext +" sqlsynax = "+sqlsyntax +" row = "+string(row))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event destructor;string ls_event
ls_event = "destructor"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event doubleclicked;string ls_event
ls_event = "doubleclicked"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" x="+string(x)+" y="+string(y))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

//messagebox("",string(dwo.primary[1]))

	
end event

event editchanged;string ls_event
ls_event = "editchanged"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event getfocus;string ls_event
ls_event = "getfocus"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event itemchanged;string ls_event
ls_event = "itemchanged"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event itemerror;string ls_event
ls_event = "itemerror"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" data="+data)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event itemfocuschanged;string ls_event
ls_event = "itemfocuschanged"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
if ib_trackflag then is_tracklog+="[Event: itemfocuschanged ("+"row:"+string(row)+" dwo:"+string(dwo.name)+")]"
//messagebox("",string(dwo.name))


end event

event losefocus;string ls_event
ls_event = "losefocus"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

end event

event rbuttondown;string ls_event
ls_event = "rbuttondown"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" row = "+ string(row)+ " dwo.name = "+dwo.name+" dwo.type="+dwo.type+" x="+string(x)+" y="+string(y))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event resize;string ls_event
ls_event = "resize"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+"sizetype = "+string(sizetype)+" newwidth="+string(newwidth)+" newheight="+string(newheight))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event retrieveend;string ls_event
ls_event = "retrieveend"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" rowcount="+string(rowcount))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event retrievestart;string ls_event
ls_event = "retrievestart"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

if cbx_4.checked=false and ii_retrievestart>=0 then 
	return ii_retrievestart //²âÊÔ·µ»ØÖµ
end if
end event

event rowfocuschanged;string ls_event
ls_event = "rowfocuschanged"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" currentrow="+string(currentrow))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if


if ib_trackflag then is_tracklog+="[Event: rowfocuschanged ("+"currentrow:"+string(currentrow)+")]"//+"@"+string(this.getrow())+"@"+string(this.GetColumn())+"@"+"@"+string(this.rowcount())+"@"
end event

event rowfocuschanging;string ls_event
ls_event = "rowfocuschanging"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" currentrow="+string(currentrow)+" newrow="+string(newrow))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if

//is_tracklog+="[Event: rowfocuschanging "+"parameter: 1:"+string(currentrow)+" 2:"+string(newrow)+"]"
if ib_trackflag then is_tracklog+="[Event: rowfocuschanging ("+"currentrow:"+string(currentrow)+" newrow:"+string(newrow)+")]"

if ii_Rowfocuschanging=1 then 
	return ii_Rowfocuschanging
end if
end event

event scrollhorizontal;string ls_event
ls_event = "scrollhorizontal"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" scrollpos="+string(scrollpos)+" pane="+string(pane))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event scrollvertical;string ls_event
ls_event = "scrollvertical"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" scrollpos="+string(scrollpos))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event sqlpreview;string ls_request,ls_sqltype,ls_buffer

if mle_1.text="" then
	mle_1.text=sqlsyntax
//else
//	sqlsyntax=mle_1.text
end if

//if ib_changesql then
//	dw_1.setsqlselect(mle_1.text)
//end if
	

choose case request
	case PreviewFunctionRetrieve!
		ls_request ="PreviewFunctionRetrieve"
	case PreviewFunctionReselectRow!	
		ls_request ="PreviewFunctionReselectRow"
	case PreviewFunctionRetrieve!
		ls_request ="PreviewFunctionUpdate"
end choose		
choose case sqltype
	case PreviewSelect!
		ls_sqltype = "PreviewSelect"
	case PreviewInsert!
		ls_sqltype = "PreviewInsert"
	case PreviewDelete!
		ls_sqltype = "PreviewDelete"
	case PreviewUpdate!
		ls_sqltype = "PreviewUpdate"
end choose		
choose case buffer
	case Primary!
		ls_buffer = "Primary"
	case Delete!	
		ls_buffer = "Delete"
	case Filter!	
		ls_buffer = "Filter"
end choose

string ls_event
ls_event = "sqlpreview"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" sqlpreviewfunction="+ls_request+" sqltype="+ls_sqltype+" sqlsynatax="+sqlsyntax+" buffer="+ls_buffer+" row ="+string(row))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if



end event

event updateend;string ls_event
ls_event = "updateend"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event+" rowsinserted="+string(rowsinserted)+" rowsupdated="+string(rowsupdated)+" rowdeleted="+string(rowsdeleted))
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

event updatestart;string ls_event
ls_event = "updatestart"
is_event += ls_event+","
if cbx_3.checked then
	lb_1.additem(ls_event)
end if
if cbx_4.checked then
	return wf_eventreturn(ls_event)
end if
end event

type lb_1 from listbox within w_ui_test
integer x = 2743
integer y = 256
integer width = 1865
integer height = 2240
integer taborder = 20
integer textsize = -8
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

type cbx_3 from checkbox within w_ui_test
integer x = 3218
integer y = 128
integer width = 443
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Show Event"
end type

type cbx_4 from checkbox within w_ui_test
integer x = 3840
integer y = 64
integer width = 818
integer height = 68
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Event With Return Value"
end type

type cb_1 from commandbutton within w_ui_test
integer x = 1024
integer y = 288
integer width = 329
integer height = 96
integer taborder = 20
integer textsize = -9
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
string text = "Dw Default"
end type

event clicked;dw_1.vscrollbar=dw_2.vscrollbar
dw_1.height=dw_2.height

dw_1.width=dw_2.width


end event

type dw_2 from datawindow within w_ui_test
boolean visible = false
integer x = 1097
integer y = 1312
integer width = 1499
integer height = 512
integer taborder = 20
string title = "none"
string dataobject = "d_external_data"
boolean hscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;settransobject(sqlca)

end event

type lb_testitems from listbox within w_ui_test
integer x = 37
integer y = 256
integer width = 914
integer height = 2240
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "@ËÎÌå"
long textcolor = 33554432
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;wf_addtestitems(true)
end event

event constructor;wf_addtestitems(false)
end event

type gb_1 from groupbox within w_ui_test
integer x = 987
integer y = 224
integer width = 1719
integer height = 2272
integer taborder = 20
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
end type

