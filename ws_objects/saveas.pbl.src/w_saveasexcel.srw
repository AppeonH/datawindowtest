$PBExportHeader$w_saveasexcel.srw
forward
global type w_saveasexcel from window
end type
type cb_7 from commandbutton within w_saveasexcel
end type
type cb_6 from commandbutton within w_saveasexcel
end type
type sle_1 from singlelineedit within w_saveasexcel
end type
type dw_1 from datawindow within w_saveasexcel
end type
type ole_2 from olecustomcontrol within w_saveasexcel
end type
type cb_3 from commandbutton within w_saveasexcel
end type
type cb_2 from commandbutton within w_saveasexcel
end type
type cb_clear from commandbutton within w_saveasexcel
end type
type cb_execute from commandbutton within w_saveasexcel
end type
type cb_close from commandbutton within w_saveasexcel
end type
type mle_output from multilineedit within w_saveasexcel
end type
type lb_items from listbox within w_saveasexcel
end type
type gb_5 from groupbox within w_saveasexcel
end type
type mle_describe from multilineedit within w_saveasexcel
end type
type gb_1 from groupbox within w_saveasexcel
end type
type gb_2 from groupbox within w_saveasexcel
end type
type gb_4 from groupbox within w_saveasexcel
end type
type gb_3 from groupbox within w_saveasexcel
end type
type cb_4 from commandbutton within w_saveasexcel
end type
type cb_5 from commandbutton within w_saveasexcel
end type
type ole_1 from olecustomcontrol within w_saveasexcel
end type
end forward

global type w_saveasexcel from window
integer width = 5239
integer height = 4188
boolean titlebar = true
string title = "W_SaveAsHtml"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event type string ue_event ( integer ai_arg,  ref string as_arg )
cb_7 cb_7
cb_6 cb_6
sle_1 sle_1
dw_1 dw_1
ole_2 ole_2
cb_3 cb_3
cb_2 cb_2
cb_clear cb_clear
cb_execute cb_execute
cb_close cb_close
mle_output mle_output
lb_items lb_items
gb_5 gb_5
mle_describe mle_describe
gb_1 gb_1
gb_2 gb_2
gb_4 gb_4
gb_3 gb_3
cb_4 cb_4
cb_5 cb_5
ole_1 ole_1
end type
global w_saveasexcel w_saveasexcel

type variables
//OutPut Index 
Integer ii_index = 0
Boolean ib_IsMax = false
Integer ii_dwWidth,ii_dwHeight,ii_dwX,ii_dwY,ii_pWidth,ii_pHeight,ii_pX,ii_pY
string is_itemstring
end variables

forward prototypes
public subroutine wf_describe ()
public subroutine wf_init_items ()
public subroutine wf_scriptview (string as_script)
public subroutine wf_output (string as_mess, boolean ab_clear)
public subroutine wf_savedw ()
public subroutine wf_scriptexe (string as_item, boolean ab_execute)
public subroutine wf_run (integer ai_item)
end prototypes

event type string ue_event(integer ai_arg, ref string as_arg);//"Call OBJECT Event~r~n RETURN OBJECTNAME.EVENTNAME(ArgType arg_1,ref ArgType arg_2)
//OBJECT should be UserObject,Window,Menu
Wf_output("Call Window Event~r~nString w_case_style_1th.ue_event (integer "+String(ai_arg)+", ref string "+as_arg+")",False)

Return ""
end event

public subroutine wf_describe ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

mle_describe.text  = "1.Appeon Window : "
mle_describe.text +=  Classname() + "~r~n" //This Must be the First output

mle_describe.text += "2.Object Describe : ~r~n" // This must include

mle_describe.text += "3.Testing Purpose : ~r~n" // This must include
mle_describe.text += "Test tag£¬visible and visible property~r~n"
mle_describe.text += "4.Operation Step : ~r~n" // Optional
mle_describe.text += "5.Object Declare : " // Optional

Return

end subroutine

public subroutine wf_init_items ();//////////////////////////////////////////////////////////////////
////Function : 
////Argument : Boolean  ab_execute
////Designer : zhangjun
////Date     : 2005-05-13
//////////////////////////////////////////////////////////////////
integer i = 0

lb_items.reset()
i++
lb_items.additem(string(i,'000') + "  composite have header(Excel!)")

i++
lb_items.additem(string(i,'000') + "  composite no header(Excel!)")

i++
lb_items.additem(string(i,'000') + "  composite have header(Excel5!)")

i++
lb_items.additem(string(i,'000') + "  composite no header(Excel5!)")

i++
lb_items.additem(string(i,'000') + "  grid1 have header(Excel!)")

i++
lb_items.additem(string(i,'000') + "  grid1 no header(Excel!)")

i++
lb_items.additem(string(i,'000') + "  grid1 have header(Excel5!)")

i++
lb_items.additem(string(i,'000') + "  grid1 no header(Excel5!)")

i++
lb_items.additem(string(i,'000') + "  grid2 have header(Excel!)")

i++
lb_items.additem(string(i,'000') + "  grid2 no header(Excel!)")

i++
lb_items.additem(string(i,'000') + "  grid2 no header(Excel5!)")

i++
lb_items.additem(string(i,'000') + "  grid2 have header(Excel5!)")

end subroutine

public subroutine wf_scriptview (string as_script);
end subroutine

public subroutine wf_output (string as_mess, boolean ab_clear);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

If ab_clear Then
mle_output.Text = ""
ii_index = 0
End IF	

ii_index = ii_index + 1
mle_output.Text += String(ii_index,'00')+". "+as_mess+"~r~n"
end subroutine

public subroutine wf_savedw ();////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////

//ii_dwX  = dw_1.x
//ii_dwY = dw_1.y
//ii_dwWidth  = dw_1.Width
//ii_dwHeight = dw_1.Height
//
//ii_pX  = p_1.x
//ii_pY = p_1.y
//ii_pWidth  = p_1.Width
//ii_pHeight = p_1.Height

end subroutine

public subroutine wf_scriptexe (string as_item, boolean ab_execute);////////////////////////////////////////////////////////////////
//Function : 
//Argument : Boolean  ab_execute
//Designer : zhangjun
//Date     : 2005-01-10
////////////////////////////////////////////////////////////////



end subroutine

public subroutine wf_run (integer ai_item);string ls_item, ls_testitem
int li_pos
ls_item = lb_items.text(ai_item)
ls_item = trim(ls_item)
li_pos = pos(ls_item,' ')
ls_item = mid(ls_item,li_pos)
ls_item = trim(ls_item)

CreateDirectory('D:\SaveAsExcel')
		
choose case ls_item
	case 'composite have header(Excel!)'
		dw_1.dataobject = "d_composite_saveas"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\composite_header_Excel_web.xls',Excel!,true)
		ole_1.object.navigate("D:\SaveAsExcel\composite_header_Excel_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\composite_header_Excel_pb.xls")		
		
	case 'composite no header(Excel!)'
		dw_1.dataobject = "d_composite_saveas"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\composite_noheader_Excel_web.xls',Excel!,true)
		ole_1.object.navigate("D:\SaveAsExcel\composite_noheader_Excel_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\composite_noheader_Excel_pb.xls")	
		
	case 'composite have header(Excel5!)'
		dw_1.dataobject = "d_composite_saveas"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\composite_header_Excel5_web.xls',Excel5!,true)
		ole_1.object.navigate("D:\SaveAsExcel\composite_header_Excel5_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\composite_header_Excel5_pb.xls")
		
	case 'composite no header(Excel5!)'
		dw_1.dataobject = "d_composite_saveas"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\composite_noheader_Excel5_web.xls',Excel5!,true)
		ole_1.object.navigate("D:\SaveAsExcel\composite_noheader_Excel5_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\composite_noheader_Excel5_pb.xls")
		
	case 'grid1 have header(Excel!)'
		dw_1.dataobject = "d_grid_saveas1"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid1_header_Excel_web.xls',Excel!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid1_header_Excel_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid1_header_Excel_pb.xls")
		
	case 'grid1 no header(Excel!)'
		dw_1.dataobject = "d_grid_saveas1"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid1_noheader_Excel_web.xls',Excel!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid1_noheader_Excel_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid1_noheader_Excel_pb.xls")

	case 'grid1 have header(Excel5!)'
		dw_1.dataobject = "d_grid_saveas1"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid1_header_Excel5_web.xls',Excel5!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid1_header_Excel5_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid1_header_Excel5_pb.xls")
		
	case 'grid1 no header(Excel5!)'
		dw_1.dataobject = "d_grid_saveas1"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid1_noheader_Excel5_web.xls',Excel5!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid1_noheader_Excel5_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid1_noheader_Excel5_pb.xls")
		
	case 'grid2 have header(Excel!)'
		dw_1.dataobject = "d_grid_saveas2"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid2_header_Excel_web.xls',Excel!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid2_header_Excel_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid2_header_Excel_pb.xls")
		
	case 'grid2 no header(Excel!)'
		dw_1.dataobject = "d_grid_saveas2"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid2_noheader_Excel_web.xls',Excel!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid2_noheader_Excel_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid2_noheader_Excel_pb.xls")

		
	case 'grid2 have header(Excel5!)'
		dw_1.dataobject = "d_grid_saveas2"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid2_header_Excel5_web.xls',Excel5!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid2_header_Excel5_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid2_header_Excel5_pb.xls")
		
	case 'grid2 no header(Excel5!)'
		dw_1.dataobject = "d_grid_saveas2"
		dw_1.SetTransObject(sqlca)
		dw_1.retrieve()
		dw_1.saveas('D:\SaveAsExcel\grid2_noheader_Excel5_web.xls',Excel5!,true)
		ole_1.object.navigate("D:\SaveAsExcel\grid2_noheader_Excel5_web.xls")
		ole_2.object.navigate("D:\SaveAsExcel\grid2_noheader_Excel5_pb.xls")		

	case else
		messagebox('error','no test point')
end choose


end subroutine

on w_saveasexcel.create
this.cb_7=create cb_7
this.cb_6=create cb_6
this.sle_1=create sle_1
this.dw_1=create dw_1
this.ole_2=create ole_2
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_clear=create cb_clear
this.cb_execute=create cb_execute
this.cb_close=create cb_close
this.mle_output=create mle_output
this.lb_items=create lb_items
this.gb_5=create gb_5
this.mle_describe=create mle_describe
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_4=create gb_4
this.gb_3=create gb_3
this.cb_4=create cb_4
this.cb_5=create cb_5
this.ole_1=create ole_1
this.Control[]={this.cb_7,&
this.cb_6,&
this.sle_1,&
this.dw_1,&
this.ole_2,&
this.cb_3,&
this.cb_2,&
this.cb_clear,&
this.cb_execute,&
this.cb_close,&
this.mle_output,&
this.lb_items,&
this.gb_5,&
this.mle_describe,&
this.gb_1,&
this.gb_2,&
this.gb_4,&
this.gb_3,&
this.cb_4,&
this.cb_5,&
this.ole_1}
end on

on w_saveasexcel.destroy
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.sle_1)
destroy(this.dw_1)
destroy(this.ole_2)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_clear)
destroy(this.cb_execute)
destroy(this.cb_close)
destroy(this.mle_output)
destroy(this.lb_items)
destroy(this.gb_5)
destroy(this.mle_describe)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_4)
destroy(this.gb_3)
destroy(this.cb_4)
destroy(this.cb_5)
destroy(this.ole_1)
end on

event open;//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()

wf_Savedw()

is_itemstring = "original"

mle_output.text = '01 ÔËÐÐÇ°ÇëÏÈSaveAsExcel.rarËù°üº¬µÄÍ¼Æ¬ÎÄ¼þ½âÑ¹µ½D:\SaveAsExcelÄ¿Â¼ÖÐ' +' ~r~n'
//mle_output.text += '02 Ë«»÷datawindow¡¢pictureÊ±£¬¿É×î´ó»¯ÏÔÊ¾datawindow¡¢picture' +' ~r~n'
mle_output.text += '02 ´°¿Ú×ó±ßÊÇWebÔËÐÐ½á¹û£¬ÓÒ±ßÊÇPbÔËÐÐ½á¹û' +' ~r~n'

end event

type cb_7 from commandbutton within w_saveasexcel
boolean visible = false
integer x = 1801
integer y = 2596
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "saveasascii"
end type

event clicked;messagebox('',dw_1.saveasascii('D:\task\ATL\AutoTest\integrationcase\html\a.txt'))
end event

type cb_6 from commandbutton within w_saveasexcel
boolean visible = false
integer x = 1797
integer y = 2476
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "saveas"
end type

event clicked;messagebox('',ole_1.object.ConnectToObject("D:\task\ATL\AutoTest\integrationcase\html\browser_net3.x_pb.html"))
//ole_2.object.navigate("D:\task\ATL\AutoTest\integrationcase\html\browser_net3.x_pb.html")
end event

type sle_1 from singlelineedit within w_saveasexcel
boolean visible = false
integer x = 2345
integer y = 2788
integer width = 1339
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 134217742
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_saveasexcel
boolean visible = false
integer x = 1691
integer y = 2764
integer width = 489
integer height = 284
integer taborder = 30
string title = "none"
string dataobject = "d_graph"
boolean hscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type ole_2 from olecustomcontrol within w_saveasexcel
event statustextchange ( string text )
event progresschange ( long progress,  long progressmax )
event commandstatechange ( long command,  boolean enable )
event downloadbegin ( )
event downloadcomplete ( )
event titlechange ( string text )
event propertychange ( string szproperty )
event beforenavigate2 ( oleobject pdisp,  any url,  any flags,  any targetframename,  any postdata,  any headers,  ref boolean cancel )
event newwindow2 ( ref oleobject ppdisp,  ref boolean cancel )
event navigatecomplete2 ( oleobject pdisp,  any url )
event documentcomplete ( oleobject pdisp,  any url )
event onquit ( )
event onvisible ( boolean ocx_visible )
event ontoolbar ( boolean toolbar )
event onmenubar ( boolean menubar )
event onstatusbar ( boolean statusbar )
event onfullscreen ( boolean fullscreen )
event ontheatermode ( boolean theatermode )
event windowsetresizable ( boolean resizable )
event windowsetleft ( long left )
event windowsettop ( long top )
event windowsetwidth ( long ocx_width )
event windowsetheight ( long ocx_height )
event windowclosing ( boolean ischildwindow,  ref boolean cancel )
event clienttohostwindow ( ref long cx,  ref long cy )
event setsecurelockicon ( long securelockicon )
event filedownload ( ref boolean cancel )
event navigateerror ( oleobject pdisp,  any url,  any frame,  any statuscode,  ref boolean cancel )
event printtemplateinstantiation ( oleobject pdisp )
event printtemplateteardown ( oleobject pdisp )
event updatepagestatus ( oleobject pdisp,  any npage,  any fdone )
event privacyimpactedstatechange ( boolean bimpacted )
integer x = 2254
integer y = 80
integer width = 2094
integer height = 1632
integer taborder = 30
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
string binarykey = "w_saveasexcel.win"
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
end type

type cb_3 from commandbutton within w_saveasexcel
boolean visible = false
integer x = 3502
integer y = 2312
integer width = 416
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "create picture"
end type

event clicked;//int li_item, li_ItemSum
//string ls_item, ls_PicName, ls_name
//ls_name = ""
//li_ItemSum = lb_items.TotalItems()
//FOR li_item = 1 to li_ItemSum
//	ls_item = left(lb_items.text(li_item),10)
//	ls_name += ls_item
//	ls_item = trim(ls_item)
//	ls_PicName = "f:\composite_ui\picture\" + ls_item + ".wmf"
//	wf_createpicture(li_item,false)
//   dw_1.saveas(ls_picName,WMF!,true)
//NEXT
//mle_output.text = ls_name
//

end event

type cb_2 from commandbutton within w_saveasexcel
integer x = 4018
integer y = 2180
integer width = 279
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Help"
end type

event clicked;mle_output.text = '01 ÔËÐÐÇ°ÇëÏÈcomposite_ui.rarËù°üº¬µÄÍ¼Æ¬ÎÄ¼þ½âÑ¹µ½¸Ã°¸ÀýËùÔÚµÄÄ¿Â¼' +' ~r~n'
mle_output.text += '02 Ë«»÷datawindow¡¢pictureÊ±£¬¿É×î´ó»¯ÏÔÊ¾datawindow¡¢picture' +' ~r~n'
mle_output.text += '03 ´°¿ÚÓÒ±ßµÄpictureÊÇ¶ÔÓ¦datawindowµÄpbÔËÐÐÐ§¹ûÍ¼' +' ~r~n'
end event

type cb_clear from commandbutton within w_saveasexcel
integer x = 3355
integer y = 2180
integer width = 279
integer height = 88
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Clear"
end type

event clicked;ii_index = 0
mle_output.text=''
end event

type cb_execute from commandbutton within w_saveasexcel
integer x = 3031
integer y = 2180
integer width = 279
integer height = 88
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Execute"
end type

event clicked;
IF not lb_items.selectedindex() > 0 THEN
	MessageBox("Warning","Please select a test item")
	return 
END IF

wf_run(lb_items.selectedindex())
//wf_Scriptexe(lb_items.selectedindex(),True)
end event

type cb_close from commandbutton within w_saveasexcel
integer x = 3680
integer y = 2180
integer width = 279
integer height = 88
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

event clicked;close(parent)
end event

type mle_output from multilineedit within w_saveasexcel
integer x = 2258
integer y = 1808
integer width = 2080
integer height = 324
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
end type

type lb_items from listbox within w_saveasexcel
integer x = 59
integer y = 1812
integer width = 2085
integer height = 436
integer taborder = 40
integer textsize = -10
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

event selectionchanged;////View Script
//
//IF index > 0 THEN
//	//wf_Scriptexe(lb_items.selectedindex(),False)
//	ls_itemstring = left(lb_items.text(index),10)	
//	ls_itemstring = trim(ls_itemstring)
//	p_1.setredraw(false)
//	p_1.PictureName = ls_itemstring + ".bmp"
//	p_1.setredraw(true)
//END IF
end event

event doubleclicked;if index > 0 then
	wf_run(index)
end if
end event

type gb_5 from groupbox within w_saveasexcel
integer x = 2222
integer y = 1748
integer width = 2153
integer height = 416
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "OutPut"
end type

type mle_describe from multilineedit within w_saveasexcel
boolean visible = false
integer x = 2359
integer y = 68
integer width = 2080
integer height = 684
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_saveasexcel
boolean visible = false
integer x = 3643
integer y = 112
integer width = 439
integer height = 788
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Description"
end type

type gb_2 from groupbox within w_saveasexcel
integer x = 27
integer y = 1748
integer width = 2149
integer height = 528
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Items"
end type

type gb_4 from groupbox within w_saveasexcel
integer x = 2222
integer y = 16
integer width = 2158
integer height = 1728
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "PBÔËÐÐ½á¹û"
end type

type gb_3 from groupbox within w_saveasexcel
integer x = 23
integer y = 16
integer width = 2158
integer height = 1728
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "WebÔËÐÐ½á¹û"
end type

type cb_4 from commandbutton within w_saveasexcel
integer x = 2688
integer y = 2180
integer width = 288
integer height = 88
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "modify"
end type

event clicked;messagebox('',dw_1.modify(sle_1.text))

end event

type cb_5 from commandbutton within w_saveasexcel
integer x = 2322
integer y = 2180
integer width = 288
integer height = 88
integer taborder = 20
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "describe"
end type

event clicked;messagebox('',dw_1.describe(sle_1.text))
end event

type ole_1 from olecustomcontrol within w_saveasexcel
event statustextchange ( string text )
event progresschange ( long progress,  long progressmax )
event commandstatechange ( long command,  boolean enable )
event downloadbegin ( )
event downloadcomplete ( )
event titlechange ( string text )
event propertychange ( string szproperty )
event beforenavigate2 ( oleobject pdisp,  any url,  any flags,  any targetframename,  any postdata,  any headers,  ref boolean cancel )
event newwindow2 ( ref oleobject ppdisp,  ref boolean cancel )
event navigatecomplete2 ( oleobject pdisp,  any url )
event documentcomplete ( oleobject pdisp,  any url )
event onquit ( )
event onvisible ( boolean ocx_visible )
event ontoolbar ( boolean toolbar )
event onmenubar ( boolean menubar )
event onstatusbar ( boolean statusbar )
event onfullscreen ( boolean fullscreen )
event ontheatermode ( boolean theatermode )
event windowsetresizable ( boolean resizable )
event windowsetleft ( long left )
event windowsettop ( long top )
event windowsetwidth ( long ocx_width )
event windowsetheight ( long ocx_height )
event windowclosing ( boolean ischildwindow,  ref boolean cancel )
event clienttohostwindow ( ref long cx,  ref long cy )
event setsecurelockicon ( long securelockicon )
event filedownload ( ref boolean cancel )
event navigateerror ( oleobject pdisp,  any url,  any frame,  any statuscode,  ref boolean cancel )
event printtemplateinstantiation ( oleobject pdisp )
event printtemplateteardown ( oleobject pdisp )
event updatepagestatus ( oleobject pdisp,  any npage,  any fdone )
event privacyimpactedstatechange ( boolean bimpacted )
integer x = 59
integer y = 80
integer width = 2089
integer height = 1628
integer taborder = 20
boolean bringtotop = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
string binarykey = "w_saveasexcel.win"
integer binaryindex = 1
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
end type


Start of PowerBuilder Binary Data Section : Do NOT Edit
01w_saveasexcel.bin 
2E00000a00e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe000000060000000000000000000000010000000100000000000010000000000200000001fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffff00000001000000000000000000000000000000000000000000000000000000003722bf9001c564cb00000003000000c00000000000500003004f0042005800430054005300450052004d0041000000000000000000000000000000000000000000000000000000000000000000000000000000000102001affffffff00000002ffffffff000000000000000000000000000000000000000000000000000000000000000000000000fffffffe0000000000000000004200500043004f00530058004f00540041005200450047000000000000000000000000000000000000000000000000000000000000000000000000000000000001001affffffffffffffff000000038856f96111d0340ac0006ba9a205d74f000000003722bf9001c564cb3722bf9001c564cb000000000000000000000000004f00430054004e004e00450053005400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001020012ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c000000000000000100000002fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
2Fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000004c00002f5600002a2b0000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c046000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a00e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe000000060000000000000000000000010000000100000000000010000000000200000001fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffefffffffefffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffff00000001000000000000000000000000000000000000000000000000000000003722bf9001c564cb00000003000000c00000000000500003004f0042005800430054005300450052004d0041000000000000000000000000000000000000000000000000000000000000000000000000000000000102001affffffff00000002ffffffff000000000000000000000000000000000000000000000000000000000000000000000000fffffffe0000000000000000004200500043004f00530058004f00540041005200450047000000000000000000000000000000000000000000000000000000000000000000000000000000000001001affffffffffffffff000000038856f96111d0340ac0006ba9a205d74f000000003722bf9001c564cb3722bf9001c564cb000000000000000000000000004f00430054004e004e004500530054
2100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001020012ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000009c000000000000000100000002fffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000004c00002f3b00002a110000000000000000000000000000000000000000000000000000004c0000000000000000000000010057d0e011cf3573000869ae62122e2b00000008000000000000004c0002140100000000000000c0460000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000178037c0744007f0000100000130570001305700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
11w_saveasexcel.bin 
End of PowerBuilder Binary Data Section : No Source Expected After This Point
